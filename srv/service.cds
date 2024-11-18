using { MaintenanceOrder as MaintSrv } from './external/MaintenanceOrder.cds'; 
using { sap.lcap.sapbtp_aws_starter_app as my } from '../db/schema.cds';
using {Equipment as EquipmentSrv} from '../srv/external/Equipment';

@path : '/service/sapbtp_aws_starter_appService'
service sapbtp_aws_starter_appService
{
 @Capabilities.Deletable: false
    @Capabilities.SearchRestrictions: {Searchable: false}
    entity EquipmentDetails        as
        projection on EquipmentSrv.Equipment {
            *,
            orders  : Association to many MaintenanceOrderDetails on orders.Equipment = Equipment,
            summary : Composition of my.Summary on summary.Equipment = Equipment,
        } actions {
            @(
                cds.odata.bindingparameter.name: '_it',
                Common.SideEffects             : {TargetEntities: ['_it/summary']}
            )
            action summarize();
        };

    entity MaintenanceOrderDetails as projection on MaintSrv.MaintenanceOrder;

    entity EquipmentSummary        as projection on my.Summary;

    type summaryResponse {
        summary : LargeString;
    }

}

annotate sapbtp_aws_starter_appService with @requires :
[
    'authenticated-user'
];

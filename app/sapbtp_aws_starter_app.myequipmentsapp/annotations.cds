using sapbtp_aws_starter_appService as service from '../../srv/service';
annotate service.EquipmentDetails with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : Equipment,
            Label : 'Equipment',
        },
        {
            $Type : 'UI.DataField',
            Value : EquipmentName,
            Label : 'EquipmentName',
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'General Details',
            ID : 'GeneralDetails',
            Target : '@UI.FieldGroup#GeneralDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Maintenance Orders',
            ID : 'MaintenanceOrders',
            Target : 'orders/@UI.LineItem#MaintenanceOrders',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Generative AI',
            ID : 'GenerativeAI',
            Target : '@UI.FieldGroup#GenerativeAI',
        },
    ],
    UI.FieldGroup #GeneralDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Equipment,
                Label : 'Equipment',
            },
            {
                $Type : 'UI.DataField',
                Value : EquipmentName,
                Label : 'EquipmentName',
            },
        ],
    },
    UI.SelectionFields : [
        Equipment,
    ],
    UI.FieldGroup #GenerativeAI : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataFieldForAction',
                Action : 'sapbtp_aws_starter_appService.summarize',
                Label : 'Summarize Maintenance Orders History',
            },
            {
                $Type : 'UI.DataField',
                Value : summary.History,
                Label : 'History',
            },
        ],
    },
);

annotate service.MaintenanceOrderDetails with @(
    UI.LineItem #MaintenanceOrders : [
        {
            $Type : 'UI.DataField',
            Value : MaintenanceOrder,
            Label : 'MaintenanceOrder',
        },
        {
            $Type : 'UI.DataField',
            Value : MaintenanceOrderDesc,
            Label : 'MaintenanceOrderDesc',
        },
        {
            $Type : 'UI.DataField',
            Value : MaintOrdBasicStartDate,
            Label : 'MaintOrdBasicStartDate',
        }
    ]
);

annotate service.EquipmentDetails with {
    Equipment @Common.Label : 'Equipment'
};

annotate service.EquipmentSummary with {
    History @UI.MultiLineText : true
};


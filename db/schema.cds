namespace sap.lcap.sapbtp_aws_starter_app;
using {cuid} from '@sap/cds/common';

entity Summary : cuid {
    Equipment : String(100);
    History   : LargeString;
}
/* checksum : 655ba7d8331eb73efb9deb04bfb6002d */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service Equipment {};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Equipment'
entity Equipment.Equipment {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  @sap.updatable : 'false'
  key Equipment : String(18) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Valid To Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key ValidityEndDate : Date not null;
  @sap.label : 'Time'
  @sap.quickinfo : 'Equipment usage period time stamp'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ValidityEndTime : Time;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EquipmentValidityEndDateTime : DateTime;
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Valid-From Date'
  ValidityStartDate : Date;
  @sap.label : 'Equip Obj Instce ID'
  @sap.quickinfo : 'Object Instance ID of an Equipment'
  EquipmentOID : String(128);
  @sap.label : 'Object Description'
  @sap.quickinfo : 'Description of technical object'
  EquipmentName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment category'
  EquipmentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Type'
  @sap.quickinfo : 'Type of Technical Object'
  TechnicalObjectType : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'AuthorizGroup'
  @sap.quickinfo : 'Technical Object Authorization Group'
  AuthorizationGroup : String(4);
  @sap.unit : 'GrossWeightUnit'
  @sap.label : 'Weight of object'
  GrossWeight : Decimal(13, 3);
  @sap.label : 'Unit of weight'
  @sap.semantics : 'unit-of-measure'
  GrossWeightUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Size/dimension'
  SizeOrDimensionText : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Inventory Number'
  @sap.quickinfo : 'Inventory number'
  InventoryNumber : String(25);
  @sap.display.format : 'Date'
  @sap.label : 'Start-up date'
  @sap.quickinfo : 'Start-up Date of the Technical Object'
  OperationStartDate : Date;
  @sap.unit : 'Currency'
  @sap.variable.scale : 'true'
  @sap.label : 'Acquisition Value'
  AcquisitionValue : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.display.format : 'Date'
  @sap.label : 'Acquisition date'
  AcquisitionDate : Date;
  @sap.label : 'Manufacturer'
  @sap.quickinfo : 'Manufacturer of Asset'
  AssetManufacturerName : String(30);
  @sap.label : 'Model number'
  @sap.quickinfo : 'Manufacturer model number'
  ManufacturerPartTypeName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mfr Ctry/Reg'
  @sap.quickinfo : 'Country/Region of Manufacture'
  ManufacturerCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Construction year'
  @sap.quickinfo : 'Year of construction'
  ConstructionYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Construction month'
  @sap.quickinfo : 'Month of construction'
  ConstructionMonth : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ManufactPartNo.'
  @sap.quickinfo : 'Manufacturer part number'
  ManufacturerPartNmbr : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Manuf. Serial Number'
  @sap.quickinfo : 'Manufacturer''s Serial Number'
  ManufacturerSerialNumber : String(30);
  @sap.display.format : 'Date'
  @sap.label : 'End-of-Use Date'
  @sap.quickinfo : 'End-of-Use Date of the Technical Object'
  EquipmentEndOfUseDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maintenance Plant'
  MaintenancePlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Location'
  @sap.quickinfo : 'Location of maintenance object'
  AssetLocation : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Room'
  AssetRoom : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant Section'
  PlantSection : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Work Center'
  WorkCenter : String(8);
  @sap.display.format : 'NonNegative'
  @sap.label : 'PP work center'
  @sap.quickinfo : 'Object ID of PP work center'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkCenterInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkCenterPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ABC Indicator'
  @sap.quickinfo : 'ABC Indicator for Technical Object'
  ABCIndicator : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sort Field'
  MaintObjectFreeDefinedAttrib : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Title Key'
  @sap.quickinfo : 'Form-of-Address Key'
  FormOfAddress : String(4);
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  BusinessPartnerName1 : String(40);
  @sap.label : 'Name 2'
  BusinessPartnerName2 : String(40);
  @sap.label : 'City'
  CityName : String(40);
  @sap.label : 'House Number'
  HouseNumber : String(10);
  @sap.label : 'Supplement'
  @sap.quickinfo : 'House number supplement'
  HouseNumberSupplementText : String(10);
  @sap.label : 'Building Code'
  @sap.quickinfo : 'Building (Number or Code)'
  Building : String(20);
  @sap.label : 'Floor'
  @sap.quickinfo : 'Floor in building'
  Floor : String(10);
  @sap.label : 'Room Number'
  @sap.quickinfo : 'Room or Apartment Number'
  RoomNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  @sap.quickinfo : 'City Postal Code'
  PostalCode : String(10);
  @sap.label : 'Street'
  StreetName : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region Key'
  Country : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Telephone No.: Dialing Code and Number'
  PhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fax'
  @sap.quickinfo : 'Fax Number: Dialing Code and Number'
  FaxNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Area'
  BusinessArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Asset'
  @sap.quickinfo : 'Main Asset Number'
  MasterFixedAsset : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subnumber'
  @sap.quickinfo : 'Asset Subnumber'
  FixedAsset : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center'
  CostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  ControllingArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element) Edited'
  WBSElementExternalID : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Settlement Order'
  @sap.quickinfo : 'Settlement order'
  SettlementOrder : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planning Plant'
  @sap.quickinfo : 'Maintenance Planning Plant'
  MaintenancePlanningPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maint. Planner Group'
  @sap.quickinfo : 'Planner Group for Customer Service and Plant Maintenance'
  MaintenancePlannerGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Main Work Center'
  @sap.quickinfo : 'Main work center for maintenance tasks'
  MainWorkCenter : String(8);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Work Center'
  @sap.quickinfo : 'Object ID of the Work Center'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MainWorkCenterInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant for WorkCenter'
  @sap.quickinfo : 'Plant associated with main work center'
  MainWorkCenterPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Catalog Profile'
  CatalogProfile : String(9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object ID'
  @sap.quickinfo : 'Object ID of Functional Location or Equipment'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FunctionalLocation : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Location'
  @sap.quickinfo : 'Functional Location Label'
  FunctionalLocationLabelName : String(40);
  @sap.label : 'FunctLocDescrip.'
  @sap.quickinfo : 'Description of functional location'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FunctionalLocationName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Position'
  @sap.quickinfo : 'Equipment position at InstallLoc (Superior Equip./FunctLoc)'
  EquipInstallationPositionNmbr : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Superord. Equipment'
  @sap.quickinfo : 'Superordinate Equipment'
  SuperordinateEquipment : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Technical IdentNo.'
  @sap.quickinfo : 'Technical identification number'
  TechnicalObjectSortCode : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Construction Type'
  @sap.quickinfo : 'Construction type material of the object'
  ConstructionMaterial : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  Material : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Serial Number'
  SerialNumber : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'UII'
  @sap.quickinfo : 'Unique Item Identifier'
  UniqueItemIdentifier : String(72);
  @sap.display.format : 'UpperCase'
  @sap.label : 'IUID Type'
  @sap.quickinfo : 'Structure Type of UII'
  UniqueItemIdentifierStrucType : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Resp. Plant UII'
  @sap.quickinfo : 'Plant Responsible for UII'
  UniqueItemIdentifierRespPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  SalesOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  DistributionChannel : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  OrganizationDivision : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Group'
  SalesGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Office'
  SalesOffice : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Record Creation Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'Name of Person Responsible for Creating the Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Changed By'
  @sap.quickinfo : 'Name of Person Who Changed Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangedByUser : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeDateTime : DateTime;
  @sap.display.format : 'NonNegative'
  @sap.label : 'NxtUsagePeriodNo.'
  @sap.quickinfo : 'Number of next EquipUsagePeriod on same day'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  NextEquipUsagePeriodSqncNmbr : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Loc/Acct Assignment'
  @sap.quickinfo : 'Location and account assignment for technical object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintObjectLocAcctAssgmtNmbr : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintObjectInternalID : String(22);
  @sap.display.format : 'NonNegative'
  @sap.label : 'UsgePerConsecNo.'
  @sap.quickinfo : 'Consecutive numbering of EquipUsagePeriods on same day'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EquipUsagePeriodSequenceNumber : String(3);
  @sap.label : 'Checkbox'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EquipmentIsAtCustomer : Boolean;
  @sap.label : 'Checkbox'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EquipmentIsAvailable : Boolean;
  @sap.label : 'Checkbox'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EquipmentIsInWarehouse : Boolean;
  @sap.label : 'Checkbox'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EquipmentIsAssignedToDelivery : Boolean;
  @sap.label : 'Checkbox'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EquipmentIsMarkedForDeletion : Boolean;
  @sap.label : 'Checkbox'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EquipmentIsInstalled : Boolean;
  @sap.label : 'Checkbox'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EquipIsAllocToSuperiorEquip : Boolean;
  @sap.label : 'Checkbox'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EquipmentIsInactive : Boolean;
  EquipHasSubOrdinateEquipment : String(1);
  to_Classification : Composition of many Equipment.EquipmentClass {  };
  to_LongText : Composition of Equipment.EquipmentLongText {  };
  to_Partner : Composition of many Equipment.EquipmentPartner {  };
  to_ProductionResourceTool : Composition of Equipment.EquipProductionResourceTool {  };
  to_Warranty : Composition of many Equipment.EquipmentWarranty {  };
} actions {
  action DismantleEquipment(
    @sap.label : 'Superord. Equipment'
    @sap.quickinfo : 'Superordinate Equipment'
    SuperordinateEquipment : String(18),
    @sap.label : 'Item (SD)'
    @sap.quickinfo : 'Item number of the SD document'
    EquipInstallationPositionNmbr : String(6),
    @sap.label : 'Functional Location'
    @sap.quickinfo : 'Functional Location'
    FunctionalLocation : String(40),
    @sap.label : 'Changed On'
    @sap.quickinfo : 'Last Changed On'
    @sap.display.format : 'Date'
    EquipmentInstallationDate : Date,
    @sap.label : 'Time'
    @sap.quickinfo : 'Equipment usage period time stamp'
    EquipmentInstallationTime : Time
  ) returns Equipment.Equipment;
  action DismantleEquipWithDataTransfer(
    @sap.label : 'Superord. Equipment'
    @sap.quickinfo : 'Superordinate Equipment'
    SuperordinateEquipment : String(18),
    @sap.label : 'Functional Location'
    @sap.quickinfo : 'Functional Location'
    FunctionalLocation : String(40),
    @sap.label : 'Position'
    @sap.quickinfo : 'Equipment position at InstallLoc (Superior Equip./FunctLoc)'
    EquipInstallationPositionNmbr : String(4),
    @sap.label : 'Changed On'
    @sap.quickinfo : 'Last Changed On'
    @sap.display.format : 'Date'
    EquipmentInstallationDate : Date,
    @sap.label : 'Time'
    @sap.quickinfo : 'Equipment usage period time stamp'
    EquipmentInstallationTime : Time,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    LocationCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    RoomCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    PlantSectionCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    WorkCenterCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    ABCIndicatorCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    SortFieldCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    BusinessAreaCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    CostCenterCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    WBSElementCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    StandingOrderCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    SettlementOrderCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    MaintPlanningPlantCopyIsReqd : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    MaintWorkCenterCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    CatalogProfileCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    SalesOrganizationCopyIsReqd : Boolean
  ) returns Equipment.Equipment;
  action InstallEquipment(
    @sap.label : 'Superord. Equipment'
    @sap.quickinfo : 'Superordinate Equipment'
    SuperordinateEquipment : String(18),
    @sap.label : 'Item (SD)'
    @sap.quickinfo : 'Item number of the SD document'
    EquipInstallationPositionNmbr : String(6),
    @sap.label : 'Functional Location'
    @sap.quickinfo : 'Functional Location'
    FunctionalLocation : String(40),
    @sap.label : 'Changed On'
    @sap.quickinfo : 'Last Changed On'
    @sap.display.format : 'Date'
    EquipmentInstallationDate : Date,
    @sap.label : 'Time'
    @sap.quickinfo : 'Equipment usage period time stamp'
    EquipmentInstallationTime : Time
  ) returns Equipment.Equipment;
  action InstallEquipWithDataTransfer(
    @sap.label : 'Superord. Equipment'
    @sap.quickinfo : 'Superordinate Equipment'
    SuperordinateEquipment : String(18),
    @sap.label : 'Functional Location'
    @sap.quickinfo : 'Functional Location'
    FunctionalLocation : String(40),
    @sap.label : 'Position'
    @sap.quickinfo : 'Equipment position at InstallLoc (Superior Equip./FunctLoc)'
    EquipInstallationPositionNmbr : String(4),
    @sap.label : 'Changed On'
    @sap.quickinfo : 'Last Changed On'
    @sap.display.format : 'Date'
    EquipmentInstallationDate : Date,
    @sap.label : 'Time'
    @sap.quickinfo : 'Equipment usage period time stamp'
    EquipmentInstallationTime : Time,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    LocationCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    RoomCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    PlantSectionCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    WorkCenterCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    ABCIndicatorCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    SortFieldCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    BusinessAreaCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    CostCenterCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    WBSElementCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    StandingOrderCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    SettlementOrderCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    MaintPlanningPlantCopyIsReqd : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    MaintWorkCenterCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    CatalogProfileCopyIsRequested : Boolean,
    @sap.label : 'Indicator'
    @sap.quickinfo : 'General Flag'
    SalesOrganizationCopyIsReqd : Boolean
  ) returns Equipment.Equipment;
  action ResetEquipmentFromInactive() returns Equipment.DummyFunctionImportResult;
  action RsetEquipFromMarkedForDeletion() returns Equipment.DummyFunctionImportResult;
  action SetEquipmentToInactive() returns Equipment.DummyFunctionImportResult;
  action SetEquipToMarkedForDeletion() returns Equipment.DummyFunctionImportResult;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Equipment Characteristic Values'
entity Equipment.EquipClassCharacteristicValue {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  @sap.updatable : 'false'
  key Equipment : String(18) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Class Type'
  @sap.updatable : 'false'
  key ClassType : String(3) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Characteristic value counter'
  @sap.updatable : 'false'
  key CharcValuePositionNumber : String(3) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Characteristic Internal ID'
  @sap.updatable : 'false'
  key CharacteristicInternalID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Characteristic Name'
  Characteristic : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Format'
  @sap.quickinfo : 'Data type of characteristic'
  CharcDataType : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Internal class no.'
  @sap.quickinfo : 'Internal Class Number'
  @sap.updatable : 'false'
  ClassInternalID : String(10) not null;
  @sap.display.format : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  KeyDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Change Number'
  ChangeNumber : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Code'
  @sap.quickinfo : 'Code for value dependency'
  CharcValueDependency : String(1);
  @sap.label : 'Characteristic Value'
  CharcValue : String(70);
  @sap.label : 'Value from'
  @sap.quickinfo : 'Internal floating point from'
  CharcFromNumericValue : Double;
  @sap.label : 'Internal UoM'
  @sap.quickinfo : 'Unit of Measurement'
  @sap.semantics : 'unit-of-measure'
  CharcFromNumericValueUnit : String(3);
  @sap.label : 'Value to'
  @sap.quickinfo : 'Internal floating point value to'
  CharcToNumericValue : Double;
  @sap.label : 'Internal UoM'
  @sap.quickinfo : 'Unit of Measurement'
  @sap.semantics : 'unit-of-measure'
  CharcToNumericValueUnit : String(3);
  @sap.label : 'LowrBndry Nmrc'
  @sap.quickinfo : 'Lower Boundary for Numeric Field'
  CharcFromDecimalValue : Decimal(31, 14);
  @sap.label : 'UprBndry Nmrc'
  @sap.quickinfo : 'Upper Boundary for Numeric Field'
  CharcToDecimalValue : Decimal(31, 14);
  @sap.unit : 'Currency'
  @sap.variable.scale : 'true'
  @sap.label : 'LowrBndry Crcy'
  @sap.quickinfo : 'Lower Boundary for Currency Field'
  CharcFromAmount : Decimal(23, 3);
  @sap.unit : 'Currency'
  @sap.variable.scale : 'true'
  @sap.label : 'UprBndry Crcy'
  @sap.quickinfo : 'Upper Boundary for Currency Field'
  CharcToAmount : Decimal(23, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.display.format : 'Date'
  @sap.label : 'LowrBndry Date'
  @sap.quickinfo : 'Lower Boundary for Date-Interval'
  CharcFromDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'UprBndry Date'
  @sap.quickinfo : 'Upper Boundary for Date-Interval'
  CharcToDate : Date;
  @sap.label : 'LowrBndry Time'
  @sap.quickinfo : 'Lower Boundary for Time-Interval'
  CharcFromTime : Time;
  @sap.label : 'UprBndry Time'
  @sap.quickinfo : 'Upper Boundary for Time-Interval'
  CharcToTime : Time;
  to_Equipment : Association to Equipment.Equipment {  };
  to_Characteristic : Association to Equipment.EquipmentClassCharacteristic {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Equipment Class'
entity Equipment.EquipmentClass {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  @sap.updatable : 'false'
  key Equipment : String(18) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Internal class no.'
  @sap.quickinfo : 'Internal Class Number'
  @sap.updatable : 'false'
  key ClassInternalID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Class Type'
  @sap.updatable : 'false'
  key ClassType : String(3) not null;
  @sap.display.format : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  KeyDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Change Number'
  ChangeNumber : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Classification status'
  ClfnStatus : String(1);
  @sap.label : 'Pos.'
  @sap.quickinfo : 'Sort Item'
  ClassPositionNumber : Integer;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard class'
  @sap.quickinfo : 'Indicator: Standard Class'
  ClassIsStandardClass : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Internal Object No.'
  @sap.quickinfo : 'Configuration (Internal Object Number)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ClfnObjectInternalID : String(18);
  @sap.display.format : 'Date'
  @sap.label : 'Valid to'
  @sap.quickinfo : 'Valid-to date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ValidityEndDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Class'
  @sap.quickinfo : 'Class number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Class : String(18);
  to_Equipment : Association to Equipment.Equipment {  };
  to_Characteristic : Composition of many Equipment.EquipmentClassCharacteristic {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Equipment Class Characteristics'
entity Equipment.EquipmentClassCharacteristic {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  @sap.updatable : 'false'
  key Equipment : String(18) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Internal class no.'
  @sap.quickinfo : 'Internal Class Number'
  @sap.updatable : 'false'
  key ClassInternalID : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Characteristic Internal ID'
  @sap.updatable : 'false'
  key CharacteristicInternalID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Characteristic Name'
  Characteristic : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Format'
  @sap.quickinfo : 'Data type of characteristic'
  CharcDataType : String(4);
  @sap.display.format : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  KeyDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Change Number'
  ChangeNumber : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Class Type'
  @sap.updatable : 'false'
  ClassType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Class'
  @sap.quickinfo : 'Class number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Class : String(18);
  to_EquipmentClass : Association to Equipment.EquipmentClass {  };
  to_Equipment : Association to Equipment.Equipment {  };
  to_Value : Composition of many Equipment.EquipClassCharacteristicValue {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Equipment Long Text'
entity Equipment.EquipmentLongText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  @sap.updatable : 'false'
  key Equipment : String(18) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TextObjectKey : String(18);
  @sap.label : 'Language Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Language : String(2);
  @sap.label : 'Long Text'
  EquipmentLongText : LargeString;
  to_Equipment : Association to Equipment.Equipment {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Equipment Partner Functions'
entity Equipment.EquipmentPartner {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  @sap.updatable : 'false'
  key Equipment : String(18) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner Function'
  @sap.updatable : 'false'
  key PartnerFunction : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Counter for differentiation 6-digit'
  @sap.updatable : 'false'
  key EquipmentPartnerObjectNmbr : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner'
  Partner : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'Name of Person Responsible for Creating the Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Record Creation Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date;
  to_Equipment : Association to Equipment.Equipment {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Equipment Warranty'
entity Equipment.EquipmentWarranty {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  @sap.updatable : 'false'
  key Equipment : String(18) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Warranty type'
  @sap.updatable : 'false'
  key WarrantyType : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Master warranty'
  @sap.quickinfo : 'Master warranty number'
  MasterWarranty : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Warranty'
  @sap.quickinfo : 'Warranty Date'
  WarrantyStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Warranty end date'
  @sap.quickinfo : 'Date on which the warranty ends'
  WarrantyEndDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'InheritWarranty'
  @sap.quickinfo : 'Indicator, Whether Technical Object Should Inherit Warranty'
  WrntyIsInhtdFromSuperiorObject : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pass on warrnty'
  @sap.quickinfo : 'Indicator: Pass on Warranty'
  WrntyIsPassedOnToChildObject : String(1);
  to_Equipment : Association to Equipment.Equipment {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Equipment Production Resource Tool'
entity Equipment.EquipProductionResourceTool {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  @sap.updatable : 'false'
  key Equipment : String(18) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Valid To Date'
  @sap.updatable : 'false'
  key ValidityEndDate : Date not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Resource Type'
  @sap.quickinfo : 'Production Resource Type'
  ProductionResourceType : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'PRT Internal ID'
  @sap.quickinfo : 'Internal ID of Production Resource/Tool'
  ProductionResourceInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grouping Key 1'
  @sap.quickinfo : 'Grouping Key 1 for Production Resources/Tools'
  ProductionResourceToolGroup1 : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grouping Key 2'
  @sap.quickinfo : 'Grouping Key 2 for Production Resources/Tools'
  ProductionResourceToolGroup2 : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PRT Usage'
  @sap.quickinfo : 'Production Resource/Tool Usage'
  ProductionResourceUsage : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PRT Control Profile'
  @sap.quickinfo : 'Control Profile for Management of Production Resources/Tools'
  ProdnRsceToolControlProfile : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Change Number'
  ChangeNumber : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard Text Key'
  @sap.quickinfo : 'Standard Text Key for Production Resources/Tools'
  ProdnRsceToolStandardTextCode : String(7);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Quantity Formula'
  @sap.quickinfo : 'Formula for Calculating the Total Quantity of PRT'
  ProdnRsceToolTotQtyCalcFormula : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Usage Value Formula'
  @sap.quickinfo : 'Formula for Calculating the Total Usage Value of PRT'
  ProdnRsceToolUsageQtyCalcFmla : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Start Date Reference'
  @sap.quickinfo : 'Reference Date for Start of PRT Usage'
  StartDateOffsetReferenceCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'End Date Reference'
  @sap.quickinfo : 'Reference Date for End of PRT Usage'
  EndDateOffsetReferenceCode : String(2);
  @sap.label : 'Offset to End of Usage is Referenced'
  @sap.quickinfo : 'Offset to End of PRT Usage is Referenced'
  EndDateOffsetDurnIsReferenced : Boolean;
  @sap.label : 'Offset to Start of Usage is Referenced'
  @sap.quickinfo : 'Offset to Start of PRT Usage is Referenced'
  StartDateOffstDurnIsReferenced : Boolean;
  @sap.label : 'End Reference of Usage is Referenced'
  @sap.quickinfo : 'Reference Date for End of PRT Usage is Referenced'
  EndDteOffstRefCodeIsReferenced : Boolean;
  @sap.label : 'Start Reference of Usage is Referenced'
  @sap.quickinfo : 'Reference Date for Start of PRT Usage is Referenced'
  StartDateOffsetRefCodeIsRefcd : Boolean;
  @sap.label : 'Quantity Formula is Referenced'
  @sap.quickinfo : 'Formula for Calculating the Total PRT Quantity is Referenced'
  PRTTotQtyCalcFmlaIsReferenced : Boolean;
  @sap.label : 'Usage Value Formula is Referenced'
  @sap.quickinfo : 'Formula for Calculating Total PRT Usage Value is Referenced'
  PRTUsgeQtyCalcFmlaIsReferenced : Boolean;
  @sap.label : 'PRT Control Profile is Referenced'
  @sap.quickinfo : 'Control Profile for Management of PRT is Referenced'
  PRTControlProfileIsReferenced : Boolean;
  @sap.label : 'Standard Text Key is Referenced'
  @sap.quickinfo : 'Standard Text Key for PRT is Referenced'
  PRTStdTextCodeIsReferenced : Boolean;
  @sap.label : 'Load records'
  @sap.quickinfo : 'Indicator: Create load records for prod. resources/tools'
  ProdPRTLoadRecordsAreCreated : Boolean;
  @sap.unit : 'StartDateOffsetDurationUnit'
  @sap.label : 'Offset to Start'
  @sap.quickinfo : 'Offset to Start of PRT Usage'
  StartDateOffsetDuration : Decimal(5, 0);
  @sap.label : 'Start Offset Unit'
  @sap.quickinfo : 'Offset Unit for Start of Prodn Resource/Tool Usage'
  @sap.semantics : 'unit-of-measure'
  StartDateOffsetDurationUnit : String(3);
  @sap.unit : 'EndDateOffsetDurationUnit'
  @sap.label : 'Offset to End'
  @sap.quickinfo : 'Offset to End of PRT Usage'
  EndDateOffsetDuration : Decimal(5, 0);
  @sap.label : 'Offset End Unit'
  @sap.quickinfo : 'Offset Unit for End of Production Resource/Tool Usage'
  @sap.semantics : 'unit-of-measure'
  EndDateOffsetDurationUnit : String(3);
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Date Record Created On'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'Created By User'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Changed On'
  @sap.quickinfo : 'Last Changed On'
  LastChangeDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Changed By'
  @sap.quickinfo : 'Name of Person Who Changed Object'
  LastChangedByUser : String(12);
  to_Equipment : Association to Equipment.Equipment {  };
};

@cds.external : true
type Equipment.DummyFunctionImportResult {
  @sap.label : 'TRUE'
  IsInvalid : Boolean;
};


/* checksum : 23776a1fb49f8090eb4ba3845dc99a8c */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service MaintenanceOrder {};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '2'
@sap.label : 'Maintenance Order'
entity MaintenanceOrder.MaintenanceOrder {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  @sap.updatable : 'false'
  key MaintenanceOrder : String(12) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Opertn Task List No.'
  @sap.quickinfo : 'Routing Number of Operations in the Order'
  MaintOrderRoutingNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order Type'
  @sap.updatable : 'false'
  MaintenanceOrderType : String(4);
  @sap.label : 'Description'
  MaintenanceOrderDesc : String(40);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  MaintOrdBasicStartDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  MaintOrdBasicEndDateTime : DateTime;
  @sap.display.format : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrdBasicStartDate : Date;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrdBasicStartTime : Time;
  @sap.display.format : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrdBasicEndDate : Date;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrdBasicEndTime : Time;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrdSchedldBscStrtDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrdSchedldBscEndDateTime : DateTime;
  @sap.display.format : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ScheduledBasicStartDate : Date;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ScheduledBasicStartTime : Time;
  @sap.display.format : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ScheduledBasicEndDate : Date;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ScheduledBasicEndTime : Time;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrderReferenceDateTime : DateTime;
  @sap.display.format : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrderReferenceDate : Date;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrderReferenceTime : Time;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Main Work Completed'
  @sap.quickinfo : 'Main Work Completed Date and Time'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MainWorkCompletedDateTime : DateTime;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Notification'
  @sap.quickinfo : 'Notification Number'
  MaintenanceNotification : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'No auto. scheduling'
  @sap.quickinfo : 'Indicator: Do not schedule automatically'
  OrdIsNotSchedldAutomatically : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ControllingArea : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Work Center'
  @sap.quickinfo : 'Object ID of the Work Center'
  MainWorkCenterInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Type'
  @sap.quickinfo : 'Object Type of CIM Resources for Work Center'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MainWorkCenterTypeCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Work Center'
  MainWorkCenter : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  MainWorkCenterPlant : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'PP work center'
  @sap.quickinfo : 'Object ID of PP work center'
  WorkCenterInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Type'
  @sap.quickinfo : 'Object types of the CIM resource'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkCenterTypeCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Work Center'
  WorkCenter : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planning Plant'
  @sap.quickinfo : 'Maintenance Planning Plant'
  @sap.updatable : 'false'
  MaintenancePlanningPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maintenance Plant'
  MaintenancePlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Assembly'
  Assembly : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Process Phase'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrdProcessPhaseCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Process Subphase'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrdProcessSubPhaseCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Area'
  BusinessArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center'
  CostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Costing Sheet'
  CostingSheet : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ref. Element PM/PS'
  @sap.quickinfo : 'Reference Element PM/PS'
  ReferenceElement : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Area'
  FunctionalArea : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Addit. device data'
  @sap.quickinfo : 'Additional Device Data'
  AdditionalDeviceData : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  Equipment : String(18);
  @sap.label : 'Object Description'
  @sap.quickinfo : 'Description of technical object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EquipmentName : String(40);
  @sap.label : 'Functional Location'
  FunctionalLocation : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order planning ind.'
  @sap.quickinfo : 'Maintenance order planning indicator'
  MaintenanceOrderPlanningCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maint. Planner Group'
  @sap.quickinfo : 'Planner Group for Customer Service and Plant Maintenance'
  MaintenancePlannerGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Activity Type'
  @sap.quickinfo : 'Maintenance Activity Type'
  MaintenanceActivityType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Priority'
  MaintPriority : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Priority Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintPriorityType : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Processing group'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OrderProcessingGroup : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Respons. Cost Center'
  @sap.quickinfo : 'Responsible Cost Center'
  ResponsibleCostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Order Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Revision'
  @sap.quickinfo : 'Revision for Plant Maintenance and Customer Service'
  MaintenanceRevision : String(8);
  @sap.label : 'Serial Number'
  SerialNumber : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  Product : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subnetwork of'
  @sap.quickinfo : 'Number of superior network'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SuperiorProjectNetwork : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'System Condition'
  OperationSystemCondition : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element) Edited'
  WBSElement : String(24);
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Internal ID'
  @sap.quickinfo : 'WBS Element'
  WBSElementInternalID : String(8);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Project Def.'
  @sap.quickinfo : 'Project (internal)'
  ProjectInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Object Class'
  ControllingObjectClass : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenanceOrderInternalID : String(22);
  @sap.label : 'Object list'
  @sap.quickinfo : 'Object list number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenanceObjectList : Integer64;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Loc/Acct Assignment'
  @sap.quickinfo : 'Location and account assignment for technical object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintObjectLocAcctAssgmtNmbr : String(12);
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
  @sap.label : 'ABC Indicator'
  @sap.quickinfo : 'ABC Indicator for Technical Object'
  ABCIndicator : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sort Field'
  MaintObjectFreeDefinedAttrib : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scheduling type'
  BasicSchedulingType : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'Final Due Date'
  LatestAcceptableCompletionDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Person Resp. ID'
  @sap.quickinfo : 'Person Responsible ID'
  MaintOrdPersonResponsible : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Last Changed By'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeByUser : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeDateTime : DateTime;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Entered By'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrderCreationDateTime : DateTime;
  @sap.label : 'Order Has Long Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OrderHasLongText : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overhead key'
  MaintenanceOrderOverheadCode : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plnd Costing Variant'
  @sap.quickinfo : 'Costing Variant for Planned Costs'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PlannedCostsCostingVariant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Act. Costing Variant'
  @sap.quickinfo : 'Costing Variant For Actual Costs'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ActualCostsCostingVariant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maintenance Plan'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenancePlan : String(12);
  @sap.label : 'MntPlan Call No.'
  @sap.quickinfo : 'Maintenance Plan Call Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenanceCall : Integer;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maintenance Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenanceItem : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Last order'
  @sap.quickinfo : 'Order number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LeadingOrder : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOO Type'
  @sap.quickinfo : 'Bill of Operations Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaskListType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill of Operations'
  @sap.quickinfo : 'Bill of Operations ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaskListGroup : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOO Variant'
  @sap.quickinfo : 'Bill of Operations Variant'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaskListGroupCounter : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element) Edited'
  LocAcctAssgmtWBSElement : String(24);
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Internal ID'
  @sap.quickinfo : 'WBS Element'
  LocAcctAssgmtWBSElmntIntID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Settlement Profile'
  ControllingSettlementProfile : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Area'
  LocAcctAssgmtBusinessArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LocAcctAssgmtControllingArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  LocAcctAssgmtCompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Processing Context'
  @sap.quickinfo : 'Additional Processing Context for Maintenance Order'
  @sap.updatable : 'false'
  MaintOrderProcessingContext : String(2);
  @sap.label : 'System Status'
  @sap.quickinfo : 'System Status Line'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  SystemStatusText : String(40);
  @sap.label : 'User Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  UserStatusText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Technical Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  TechnicalObject : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Technical Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  TechnicalObjectLabel : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tech. Obj. Type'
  @sap.quickinfo : 'Technical Object Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  TechObjIsEquipOrFuncnlLoc : String(20);
  to_MaintenanceOrderLongText : Composition of many MaintenanceOrder.MaintenanceOrderLongText {  };
  to_MaintenanceOrderOperation : Composition of many MaintenanceOrder.MaintenanceOrderOperation {  };
  to_MaintenanceOrderPartner : Composition of many MaintenanceOrder.MaintenanceOrderPartner {  };
  to_MaintenanceOrderPhaseControl : Composition of many MaintenanceOrder.MaintenanceOrderPhaseControl {  };
  to_MaintOrderObjectListItem : Composition of many MaintenanceOrder.MaintOrderObjectListItem {  };
  to_MaintOrderSettlmtDistrRule_2 : Composition of many MaintenanceOrder.MaintOrderSettlmtDistrRule {  };
} actions {
  action ApproveMaintenanceOrder() returns MaintenanceOrder.DummyFunctionImportResult;
  action AssignMaintNotificationToOrder(
    @sap.label : 'Notification'
    @sap.quickinfo : 'Notification Number'
    MaintenanceNotification : String(12),
    @sap.label : 'Header Notif.'
    @sap.quickinfo : 'Flag: notification assigned to order header'
    NotificationIsHeaderNotif : Boolean
  ) returns MaintenanceOrder.DummyFunctionImportResult;
  action RejectMaintenanceOrder() returns MaintenanceOrder.DummyFunctionImportResult;
  action ReleaseMaintenanceOrder() returns MaintenanceOrder.DummyFunctionImportResult;
  action ResetMaintOrderStatusClosed() returns MaintenanceOrder.DummyFunctionImportResult;
  action ResetMaintOrderStsRdyForSchedg() returns MaintenanceOrder.DummyFunctionImportResult;
  action ResetMaintOrdOpsStsDispatched() returns MaintenanceOrder.DummyFunctionImportResult;
  action ResetMaintOrdStsMainWorkCmplt() returns MaintenanceOrder.DummyFunctionImportResult;
  action ResetMaintOrdStsMrkdForDeltn(
    @sap.label : 'Also reset the deletion flag for the assigned notifications'
    @sap.quickinfo : 'Truth Value: True/False'
    AssgdMaintNotifIsToBeResetDel : Boolean
  ) returns MaintenanceOrder.DummyFunctionImportResult;
  action ResetMaintOrdStsTechCompleted(
    @sap.label : 'Put Assigned Notifications In Process Again'
    @sap.quickinfo : 'Truth Value: True/False'
    AssgdMaintNotifIsToBePutInProc : Boolean
  ) returns MaintenanceOrder.DummyFunctionImportResult;
  action ScheduleMaintenanceOrder() returns MaintenanceOrder.DummyFunctionImportResult;
  action SetMaintOrderOpsToDispatched() returns MaintenanceOrder.DummyFunctionImportResult;
  action SetMaintOrderStatusToClosed(
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Completion Date/Time'
    @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
    MaintOrderReferenceDateTime : DateTime,
    @sap.label : 'Complete Assigned Notifications'
    @sap.quickinfo : 'Truth Value: True/False'
    AssignedMaintNotifIsToBeClosed : Boolean
  ) returns MaintenanceOrder.DummyFunctionImportResult;
  action SetMaintOrderStatusToLocked() returns MaintenanceOrder.DummyFunctionImportResult;
  action SetMaintOrderStatusToUnlocked() returns MaintenanceOrder.DummyFunctionImportResult;
  action SetMaintOrderToDoNotExecute(
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Reference Date/Time'
    @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
    MaintOrderReferenceDateTime : DateTime,
    @sap.value.list : 'fixed-values'
    @sap.label : 'What should happen to assigned notifications'
    @sap.quickinfo : 'Do Not Execute Order and Determine Notification Status'
    MaintOrdCancellationAction : String(1),
    @sap.label : 'Complete All Assigned Notifications'
    @sap.quickinfo : 'Truth Value: True/False'
    AssignedMaintNotifIsToBeClosed : Boolean,
    @sap.label : 'Complete Header Notification and Unassign Others'
    @sap.quickinfo : 'Truth Value: True/False'
    AssgdMaintNotifIsToBeRsetAlloc : Boolean
  ) returns MaintenanceOrder.DummyFunctionImportResult;
  action SetMaintOrderToReadyForSchedg() returns MaintenanceOrder.DummyFunctionImportResult;
  action SetMaintOrdStsToMrkdForDeltn(
    @sap.label : 'Also set the deletion flag for the assigned notifications'
    @sap.quickinfo : 'Truth Value: True/False'
    AssgdMaintNotifIsToBeSetDel : Boolean
  ) returns MaintenanceOrder.DummyFunctionImportResult;
  action SetMaintOrdToMainWorkComplete(
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Main Work Completion Date and Time'
    @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
    MainWorkCompletedDateTime : DateTime,
    @sap.label : 'Set as Reference Date and Time'
    @sap.quickinfo : 'Truth Value: True/False'
    MainWrkCmpltdDateTimeIsUsed : Boolean
  ) returns MaintenanceOrder.DummyFunctionImportResult;
  action SetMaintOrdToTechCompleted(
    @sap.label : 'Use Main Work Completed Date and Time'
    @sap.quickinfo : 'Truth Value: True/False'
    MainWrkCmpltdDateTimeIsUsed : Boolean,
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Completion Date/Time'
    @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
    MaintOrderReferenceDateTime : DateTime,
    @sap.label : 'Complete Assigned Notifications'
    @sap.quickinfo : 'Truth Value: True/False'
    AssignedMaintNotifIsToBeClosed : Boolean
  ) returns MaintenanceOrder.DummyFunctionImportResult;
  action SubmitMaintOrderForApproval() returns MaintenanceOrder.DummyFunctionImportResult;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.content.version : '2'
@sap.label : 'Maintenance Order Long Text'
entity MaintenanceOrder.MaintenanceOrderLongText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text ID'
  @sap.updatable : 'false'
  key TextObjectType : String(4) not null;
  @sap.label : 'Language Key'
  @sap.updatable : 'false'
  key Language : String(2) not null;
  @sap.label : 'Long Text'
  MaintenanceOrderLongText : LargeString;
  to_MaintenanceOrder : Association to MaintenanceOrder.MaintenanceOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.content.version : '2'
@sap.label : 'Maintenance Order Operation'
entity MaintenanceOrder.MaintenanceOrderOperation {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operation'
  @sap.quickinfo : 'Maintenance Order Operation'
  @sap.updatable : 'false'
  key MaintenanceOrderOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Suboperation'
  @sap.quickinfo : 'Maintenance Order Suboperation'
  @sap.updatable : 'false'
  key MaintenanceOrderSubOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Control Key'
  OperationControlKey : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Object ID'
  @sap.quickinfo : 'Object ID of the resource'
  OperationWorkCenterInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Work Center'
  WorkCenter : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard text key'
  OperationStandardTextCode : String(7);
  @sap.label : 'Operation Short Text'
  OperationDescription : String(40);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Opertn Task List No.'
  @sap.quickinfo : 'Routing Number of Operations in the Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrderRoutingNumber : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'General counter for order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenanceOrderRoutingNode : String(8);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Superior Op. Node'
  @sap.quickinfo : 'Node Number of the Superior Operation'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SuperiorOperationInternalID : String(8);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OperationWorkCenterTypeCode : String(1);
  @sap.label : 'Language Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Language : String(2);
  @sap.label : 'No. of Time Tickets'
  @sap.quickinfo : 'Number of Time Tickets'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  NumberOfTimeTickets : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sort Term'
  @sap.quickinfo : 'Sort Term for Non-Stock Info Records'
  OperationPurgInfoRecdSearchTxt : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  OperationSupplier : String(10);
  @sap.unit : 'OpExternalProcessingCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Price'
  OpExternalProcessingPrice : Decimal(11, 3);
  @sap.unit : 'MaintOrdOperationQuantityUnit'
  @sap.label : 'Price unit'
  OpExternalProcessingPriceUnit : Decimal(5, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  OpExternalProcessingCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Element'
  CostElement : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Info Rec.'
  @sap.quickinfo : 'Purchasing Info Record Number'
  OperationPurchasingInfoRecord : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Organization'
  @sap.quickinfo : 'Purchasing Organization'
  PurchasingOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Group'
  @sap.quickinfo : 'Purchasing Group for External Processing Activity'
  PurchasingGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Group'
  MaterialGroup : String(9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Outline agreement'
  @sap.quickinfo : 'Number of principal purchase agreement'
  OpPurchaseOutlineAgreement : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Agreement Item'
  @sap.quickinfo : 'Item Number of Principal Purchase Agreement'
  OpPurchaseOutlineAgreementItem : String(5);
  @sap.label : 'Requisitioner'
  @sap.quickinfo : 'Name of requisitioner/requester'
  OperationRequisitionerName : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Req. Tracking Number'
  @sap.quickinfo : 'Requirement Tracking Number'
  OperationTrackingNumber : String(10);
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Number'
  @sap.quickinfo : 'Number of capacities required'
  NumberOfCapacities : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Percent'
  @sap.quickinfo : 'Work percentage'
  OperationWorkPercent : Integer;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Calculation Key'
  @sap.quickinfo : 'Key for calculation'
  OperationCalculationControl : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Activity Type'
  ActivityType : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'System Condition'
  OperationSystemCondition : String(1);
  @sap.label : 'Goods Recipient'
  OperationGoodsRecipientName : String(12);
  @sap.label : 'Unloading Point'
  OperationUnloadingPointName : String(25);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Personnel number'
  OperationPersonResponsible : String(8);
  @sap.label : 'Planned Deliv. Time'
  @sap.quickinfo : 'Planned Delivery Time in Days'
  DeliveryTimeInDays : Decimal(3, 0);
  @sap.unit : 'MaintOrdOperationDurationUnit'
  @sap.label : 'Normal Duration'
  @sap.quickinfo : 'Normal Duration of Activity'
  MaintOrderOperationDuration : Decimal(5, 1);
  @sap.label : 'Normal Duration Unit'
  @sap.quickinfo : 'Normal Duration/Unit'
  @sap.semantics : 'unit-of-measure'
  MaintOrdOperationDurationUnit : String(3);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpErlstSchedldExecStrtDteTme : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpErlstSchedldExecEndDteTme : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpLtstSchedldExecStrtDteTme : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpLtstSchedldExecEndDteTme : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpActualExecutionStartDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpActualExecutionEndDateTime : DateTime;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Constraint on start'
  @sap.quickinfo : 'Constraint on the basic start date for the activity'
  OpBscStartDateConstraintType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Constraint on finish'
  @sap.quickinfo : 'Constraint on the finish date of the activity'
  OpBscEndDateConstraintType : String(1);
  @sap.unit : 'MaintOrdOpWorkDurationUnit'
  @sap.label : 'Work'
  @sap.quickinfo : 'Work involved in the activity'
  MaintOrdOperationWorkDuration : Decimal(7, 1);
  @sap.label : 'Unit for Work'
  @sap.semantics : 'unit-of-measure'
  MaintOrdOpWorkDurationUnit : String(3);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  MaintOrdOpConstraintStrtDteTme : DateTime;
  @sap.display.format : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConstraintDateForBscStartDate : Date;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConstraintTimeForBscStartTime : Time;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  MaintOrdOpCstrtFinishDteTme : DateTime;
  @sap.display.format : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConstraintDateForBscFinishDate : Date;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConstraintTimeForBscFinishTime : Time;
  @sap.label : 'Execution factor'
  @sap.quickinfo : 'Execution Factor'
  MaintOrdOperationExecutionRate : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  Equipment : String(18);
  @sap.label : 'Functional Location'
  FunctionalLocation : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'MaintActivityType'
  @sap.quickinfo : 'Maintenance activity type'
  MaintenanceActivityType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Area'
  BusinessArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Costing Sheet'
  CostingSheet : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Area'
  FunctionalArea : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reservation/Purc.req'
  @sap.quickinfo : 'Reservation Relevance/Generation of Purchase Requisition'
  PurReqnOrResvnGeneration : String(1);
  @sap.label : 'Object Class'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintControllingObjectClass : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Int. dist. key'
  @sap.quickinfo : 'Distr.cap.reqmts (plant maint.,process order, network)'
  WrkCtrIntCapRqmtsDistr : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overhead key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrdOperationOverheadCode : String(6);
  @sap.unit : 'MaintOrdOperationQuantityUnit'
  @sap.label : 'Operation Quantity'
  @sap.quickinfo : 'Operation Total Quantity'
  MaintOrderOperationQuantity : Decimal(13, 3);
  @sap.label : 'Operation unit'
  @sap.quickinfo : 'Unit of measure for activity'
  @sap.semantics : 'unit-of-measure'
  MaintOrdOperationQuantityUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Assembly'
  Assembly : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Execution Stage'
  @sap.quickinfo : 'PRE MAIN POST'
  MaintOperationExecStageCode : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Internal ID'
  @sap.quickinfo : 'WBS Element'
  MaintOrdOpAssgdWBSElmntInt : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element)'
  WBSElement : String(24);
  @sap.label : 'Deletion Flag'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IsMarkedForDeletion : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrderOperationInternalID : String(22);
  @sap.label : 'Object counters'
  @sap.quickinfo : 'Object list counters'
  MaintenanceObjectListItem : Integer;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Requisition'
  @sap.quickinfo : 'Purchase Requisition Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchaseRequisition : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Requisition Item'
  @sap.quickinfo : 'Item Number of Purchase Requisition in Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchaseRequisitionItem : String(5);
  @sap.display.format : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpErlstSchedldExecStrtDte : Date;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpErlstSchedldExecStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpErlstSchedldExecEndDte : Date;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpErlstSchedldExecEndTme : Time;
  @sap.display.format : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpLtstSchedldExecStrtDte : Date;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpLtstSchedldExecStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpLtstSchedldExecEndDte : Date;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpLtstSchedldExecEndTme : Time;
  @sap.display.format : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpActualExecutionStartDate : Date;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpActualExecutionStartTime : Time;
  @sap.display.format : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpActualExecutionEndDate : Date;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpActualExecutionEndTime : Time;
  @sap.display.format : 'Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ActyConfFcstdEndDate : Date;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ActyConfFcstdEndTime : Time;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ActyConfForecastedEndDateTime : DateTime;
  @sap.unit : 'MaintOrdOpWorkDurationUnit'
  @sap.label : 'Forecast Work'
  @sap.quickinfo : 'Forecast Work (Actual + Remaining)'
  ForecastWorkQuantity : Decimal(7, 1);
  @sap.unit : 'MaintOrdOpWorkDurationUnit'
  @sap.label : 'Actual Work'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ActualWorkQuantity : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Process Phase'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrdOpProcessPhaseCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Process Subphase'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrdOpProcessSubPhaseCode : String(4);
  @sap.label : 'Keep Committed Qties'
  @sap.quickinfo : 'Keep Committed Quantities of All Stock Components'
  AllMaintOrdCompCmtdQtsAreKept : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ControllingArea : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Confirmation'
  @sap.quickinfo : 'Completion confirmation number for the operation'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrderConfirmation : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Confirmation counter'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrderConfCntrValue : String(8);
  @sap.label : 'No Remaining Work'
  @sap.quickinfo : 'Indicator: No Remaining Work Expected'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrdOpHasNoRemainingWork : Boolean;
  @sap.label : 'operation has srv'
  @sap.quickinfo : 'Indicator: operation is linked to a service'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrdOpHasLeanServices : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Align Date'
  @sap.quickinfo : 'Align Purchase Requisition Delivery Date'
  MaintOrdOpDelivDateAdjustment : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Task List Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaskListType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group'
  @sap.quickinfo : 'Key for Task List Group'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaskListGroup : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group Counter'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaskListGroupCounter : String(2);
  @sap.label : 'System Status'
  @sap.quickinfo : 'System Status Line'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  SystemStatusText : String(40);
  @sap.label : 'User Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  UserStatusText : String(40);
  to_MaintenanceOrder : Association to MaintenanceOrder.MaintenanceOrder {  };
  to_MaintOrderOpComponent_2 : Composition of many MaintenanceOrder.MaintOrderOpComponent {  };
  to_MaintOrderOpLongText : Composition of many MaintenanceOrder.MaintOrderOpLongText {  };
  to_MaintOrderOpPhaseControl : Composition of many MaintenanceOrder.MaintOrderOpPhaseControl {  };
  to_MaintOrderOpProdnRsceTool : Composition of many MaintenanceOrder.MaintOrderOpProdnRsceTool {  };
  to_MaintOrderOpRelationship : Composition of many MaintenanceOrder.MaintOrderOpRelationship {  };
} actions {
  action ResetMaintOrderOpStsDispatched() returns MaintenanceOrder.DummyFunctionImportResult;
  action SetMaintOrderOpToDispatched() returns MaintenanceOrder.DummyFunctionImportResult;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.content.version : '2'
@sap.label : 'Maintenance Order Partners'
entity MaintenanceOrder.MaintenanceOrderPartner {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner Function'
  @sap.updatable : 'false'
  key PartnerFunction : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner'
  @sap.updatable : 'false'
  key MaintenanceOrderPartner : String(12) not null;
  to_MaintenanceOrder : Association to MaintenanceOrder.MaintenanceOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '2'
@sap.label : 'Maintenance Order Phase Control'
entity MaintenanceOrder.MaintenanceOrderPhaseControl {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Phase Control'
  @sap.quickinfo : 'Phase Control Code'
  @sap.updatable : 'false'
  key MaintenancePhaseControl : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Phase Control'
  @sap.quickinfo : 'Phase Control Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenancePhaseControlName : String(4);
  @sap.label : 'Description'
  @sap.quickinfo : 'Description of the Phase Control Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenancePhaseControlText : String(30);
  @sap.label : 'Set Automatically'
  @sap.quickinfo : 'Phase Control Code: Set Automatically'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintPhseCtrlIsSetAutomly : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Key'
  @sap.quickinfo : 'Authorization Key for Phase Control Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintPhaseControlAuthorityCode : String(8);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Phase Control Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintProcgPhseCtrlActvtnCode : String(2);
  @sap.label : 'Short Description'
  @sap.quickinfo : 'Short Text for Fixed Values'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintProcgPhseCtrlActvtnDesc : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Process Phase'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EAMProcessPhaseCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Process Subphase'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EAMProcessSubPhaseCode : String(4);
  @sap.label : 'Status Is Active'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintObjPhseCtrlStatusIsActive : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  StatusObject : String(22);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Set By'
  @sap.quickinfo : 'Business Object Blocker Code Set By User ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintObjPhaseCtrlCodeSetBy : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Activated On'
  @sap.quickinfo : 'Business Object Phase Control Code Activated On'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintObjPhseCtrlCodeSetDteTime : DateTime;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reset By'
  @sap.quickinfo : 'Business Object Blocker Code Resolved By User ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintObjPhaseCtrlCodeResetBy : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Deactivated On'
  @sap.quickinfo : 'Business Object Phase Control Code Deactivated On'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintObjPhseCtrlCodeRsetDteTme : DateTime;
  to_MaintenanceOrder : Association to MaintenanceOrder.MaintenanceOrder {  };
} actions {
  action ActvtMaintOrderPhaseControl() returns MaintenanceOrder.DummyFunctionImportResult;
  action DactvtMaintOrderPhaseControl() returns MaintenanceOrder.DummyFunctionImportResult;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.addressable : 'false'
@sap.content.version : '2'
@sap.label : 'Detailed Cost Analysis in Maint. Order'
entity MaintenanceOrder.MaintOrderActlPlndCostItmSet {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Hierarchy ID'
  key P_GLAccountHierarchy : String(42) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Source Ledger'
  key SourceLedger : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ledger'
  @sap.quickinfo : 'Ledger in General Ledger Accounting'
  key Ledger : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year'
  key FiscalYear : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Journal Entry'
  key AccountingDocument : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'FP Request TSN'
  @sap.quickinfo : 'Financial Planning Request Transaction Sequence Number'
  key FinancialPlanningReqTransSqnc : String(23) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'FP Data Packet'
  @sap.quickinfo : 'Financial Planning Data Packet Number'
  key FinancialPlanningDataPacket : String(6) not null;
  @sap.label : 'Actual Plan Journal Entry Item'
  key ActualPlanJournalEntryItem : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'G/L Account Hierarchy'
  GLAccountHierarchy : String(42);
  @sap.label : 'Par. Node'
  @sap.quickinfo : 'Hierarchy parent node'
  MaintOrdCostAnlysSpendCategory : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'G/L Account'
  GLAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order ID'
  MaintenanceOrder : String(12);
  @sap.label : 'Description'
  @sap.quickinfo : 'Hierarchy node description'
  CostElementGroupName : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operation'
  @sap.quickinfo : 'Maintenance Order Operation'
  MaintenanceOrderOperation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Suboperation'
  @sap.quickinfo : 'Maintenance Order Suboperation'
  MaintenanceOrderSubOperation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'MaintActivityType'
  @sap.quickinfo : 'Maintenance activity type'
  MaintenanceActivityType : String(3);
  @sap.label : 'G/L Account Name'
  GLAccountName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Main Work Center'
  @sap.quickinfo : 'Main work center for maintenance tasks'
  MainWorkCenter : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Work Center'
  OperationWorkCenter : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Group'
  ProductGroup : String(9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  Product : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Assembly'
  Assembly : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  Equipment : String(18);
  @sap.label : 'Functional Location'
  FunctionalLocation : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Document'
  @sap.quickinfo : 'Reference Doc. Number'
  ReferenceDocument : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Document Type'
  ReferenceDocumentType : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Document Context'
  ReferenceDocumentContext : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reference Document Item'
  ReferenceDocumentItem : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Priority Type'
  MaintPriorityType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Priority'
  MaintPriority : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  PurchaseOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number of Purchasing Document'
  PurchaseOrderItem : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reservation'
  @sap.quickinfo : 'Number of reservation/dependent requirements'
  Reservation : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reservation Item'
  @sap.quickinfo : 'Item Number of Reservation'
  ReservationItem : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reservation Type'
  @sap.quickinfo : 'Type of Reservation'
  ReservationType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Global Currency'
  @sap.semantics : 'currency-code'
  GlobalCurrency : String(5);
  @sap.unit : 'GlobalCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Amount in Global Currency'
  AmountInGlobalCurrency : Decimal(23, 3);
  @sap.unit : 'GlobalCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Amount in Company Code Currency'
  ActualMaintAmountInGlobCrcy : Decimal(23, 3);
  @sap.unit : 'GlobalCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Amount in Company Code Currency'
  PlannedMaintAmountInGlobCrcy : Decimal(23, 3);
  @sap.unit : 'GlobalCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Amount in Company Code Currency'
  BaselineMaintAmountInGlobCrcy : Decimal(23, 3);
  @sap.unit : 'GlobalCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Amount in Company Code Currency'
  EstimatedMaintAmountInGlobCrcy : Decimal(23, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code Currency'
  @sap.semantics : 'currency-code'
  CompanyCodeCurrency : String(5);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Amount in Company Code Currency'
  AmountInCompanyCodeCurrency : Decimal(23, 3);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Amount in Company Code Currency'
  ActualMaintAmountInCoCrcy : Decimal(23, 3);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Amount in Company Code Currency'
  PlannedMaintAmountInCoCrcy : Decimal(23, 3);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Amount in Company Code Currency'
  BaselineMaintAmountInCoCrcy : Decimal(23, 3);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Amount in Company Code Currency'
  EstimatedMaintAmountInCoCrcy : Decimal(23, 3);
  to_MaintenanceOrder : Association to MaintenanceOrder.MaintenanceOrder {  };
  to_MaintenanceOrderOpComponent_2 : Association to MaintenanceOrder.MaintOrderOpComponent {  };
  to_MaintenanceOrderOperation : Association to MaintenanceOrder.MaintenanceOrderOperation {  };
  @sap.filterable : 'false'
  Parameters : Association to MaintenanceOrder.MaintOrderActlPlndCostItm {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.content.version : '2'
@sap.semantics : 'parameters'
entity MaintenanceOrder.MaintOrderActlPlndCostItm {
  @sap.display.format : 'UpperCase'
  @sap.parameter : 'mandatory'
  @sap.label : 'Hierarchy ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key P_GLAccountHierarchy : String(42) not null;
  Set : Association to many MaintenanceOrder.MaintOrderActlPlndCostItmSet {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.content.version : '2'
@sap.label : 'Maintenance Order Object List'
entity MaintenanceOrder.MaintOrderObjectListItem {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrder : String(12) not null;
  @sap.label : 'Object list'
  @sap.quickinfo : 'Object list number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrderObjectList : Integer64 not null;
  @sap.label : 'Object counters'
  @sap.quickinfo : 'Object list counters'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceObjectListItem : Integer not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  @sap.updatable : 'false'
  Equipment : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Notification'
  @sap.quickinfo : 'Notification Number'
  @sap.updatable : 'false'
  MaintenanceNotification : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Assembly'
  @sap.updatable : 'false'
  Assembly : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  @sap.updatable : 'false'
  Material : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Serial Number'
  @sap.updatable : 'false'
  SerialNumber : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'UII'
  @sap.quickinfo : 'Unique Item Identifier'
  @sap.updatable : 'false'
  UniqueItemIdentifier : String(72);
  @sap.label : 'Functional Location'
  @sap.updatable : 'false'
  FunctionalLocation : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sort field'
  @sap.quickinfo : 'Object list sort field'
  MaintObjectListItemSequence : String(20);
  to_MaintenanceOrder : Association to MaintenanceOrder.MaintenanceOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.content.version : '2'
@sap.label : 'Maintenance Order Component Long Text'
entity MaintenanceOrder.MaintOrderOpCompLongText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operation'
  @sap.quickinfo : 'Maintenance Order Operation'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrderOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Suboperation'
  @sap.quickinfo : 'Maintenance Order Suboperation'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrderSubOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintOrderComponentInternalID : String(22) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text ID'
  @sap.updatable : 'false'
  key TextObjectType : String(4) not null;
  @sap.label : 'Language Key'
  @sap.updatable : 'false'
  key Language : String(2) not null;
  @sap.label : 'Long Text'
  OrderComponentLongText : LargeString;
  to_MaintenanceOrder : Association to MaintenanceOrder.MaintenanceOrder {  };
  to_MaintenanceOrderComponent : Association to MaintenanceOrder.MaintOrderOpComponent {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.content.version : '2'
@sap.label : 'Maintenance Order Component'
entity MaintenanceOrder.MaintOrderOpComponent {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operation'
  @sap.quickinfo : 'Maintenance Order Operation'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrderOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Suboperation'
  @sap.quickinfo : 'Maintenance Order Suboperation'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrderSubOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintOrderComponentInternalID : String(22) not null;
  @sap.label : 'BOM Item'
  @sap.quickinfo : 'BOM item number'
  MaintenanceOrderComponent : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reservation'
  @sap.quickinfo : 'Number of reservation/dependent requirements'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Reservation : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item no.'
  @sap.quickinfo : 'Item Number of Reservation / Dependent Requirements'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ReservationItem : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Record type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ReservationType : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Opertn Task List No.'
  @sap.quickinfo : 'Routing Number of Operations in the Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrderRoutingNumber : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Internal counter'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrderOperationCounter : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  Product : String(18);
  @sap.label : 'Item Text'
  @sap.quickinfo : 'BOM Item Text (Line 1)'
  MaintOrdOperationComponentText : String(40);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Requirement Quantity'
  MaintOrdOpCompRequiredQuantity : Decimal(13, 3);
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.unit : 'UnitOfEntry'
  @sap.label : 'Qty in unit of entry'
  @sap.quickinfo : 'Quantity in unit of entry'
  QuantityInUnitOfEntry : Decimal(13, 3);
  @sap.label : 'Unit of Entry'
  @sap.quickinfo : 'Unit of entry'
  @sap.semantics : 'unit-of-measure'
  UnitOfEntry : String(3);
  @sap.display.format : 'Date'
  @sap.label : 'Requirements date'
  @sap.quickinfo : 'Requirements date for the component'
  RequirementDate : Date;
  @sap.label : 'Time qty required'
  @sap.quickinfo : 'Time that reservation quantity required'
  RequirementTime : Time;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  RequirementDateTime : DateTime;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Storage Location'
  StorageLocation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Item Category'
  @sap.quickinfo : 'Item category (bill of material)'
  MaintComponentItemCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Movement Type'
  @sap.quickinfo : 'Movement Type (Inventory Management)'
  GoodsMovementType : String(3);
  @sap.label : 'Final Issue'
  @sap.quickinfo : 'Final Issue for Reservation'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ReservationIsFinallyIssued : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Group'
  MaterialGroup : String(9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Reqn. / Resvn. Generation'
  @sap.quickinfo : 'Purchase Requisition or Reservation Generation'
  PurReqnOrResvnGeneration : String(1);
  @sap.label : 'Checkbox'
  @sap.heading : ''
  MaterialCompIsProcuredDirectly : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Type Group'
  ProductTypeCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Service Performer'
  ServicePerformer : String(10);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  PerformancePeriodStartDateTime : DateTime;
  @sap.display.format : 'Date'
  @sap.label : 'Start Date'
  @sap.quickinfo : 'Start Date for Period of Performance'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PerformancePeriodStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'End Date'
  @sap.quickinfo : 'End Date for Period of Performance'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PerformancePeriodEndDate : Date;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  PerformancePeriodEndDateTime : DateTime;
  @sap.label : 'Start Time'
  @sap.quickinfo : 'Start Time for a Lean Service'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PerformancePeriodStartTime : Time;
  @sap.label : 'End Time'
  @sap.quickinfo : 'End Time for a Lean Service'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PerformancePeriodEndTime : Time;
  @sap.unit : 'LeanServiceDurationUnit'
  @sap.label : 'Service Duration'
  @sap.quickinfo : 'Duration of Lean Service'
  LeanServiceDuration : Decimal(5, 1);
  @sap.label : 'Serv. Dur. Unit'
  @sap.quickinfo : 'Duration Unit for a Lean Service'
  @sap.semantics : 'unit-of-measure'
  LeanServiceDurationUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Function'
  @sap.quickinfo : 'Distribution function'
  DistributionFunction : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Align Req. Date'
  @sap.quickinfo : 'Align Component Requirement Date'
  MaintOrdCompDeliveryDateAdjmt : String(1);
  @sap.label : 'Align with Work Center'
  @sap.quickinfo : 'Align scheduling with work center operating hours'
  SrvcSchedgIsAlignedWthOpWrkCtr : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Debit/Credit Ind.'
  @sap.quickinfo : 'Debit/Credit Indicator'
  MaintOrderCompDebitCreditCode : String(1);
  @sap.label : 'Movement Allowed'
  @sap.quickinfo : 'Goods Movement for Reservation Allowed'
  GoodsMovementIsAllowed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Batch'
  @sap.quickinfo : 'Batch Number'
  MaintenanceOrderComponentBatch : String(10);
  @sap.label : 'Quantity is fixed'
  QuantityIsFixed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'G/L Account'
  @sap.quickinfo : 'G/L Account Number'
  MaintOrdOpComponentGLAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CostingRelevncy'
  @sap.quickinfo : 'Indicator for Relevancy to Costing'
  MaintOrdOpCompCostingRelevancy : String(1);
  @sap.label : 'Usage Probability'
  @sap.quickinfo : 'Usage Probability in % (Alternative Item)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintCompAltvProdUsgeRateInPct : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sort String'
  MaintOrderOpComponentSortText : String(10);
  @sap.label : 'Bulk Material'
  @sap.quickinfo : 'Indicator: Bulk Material'
  MaintOrdOpCompIsBulkProduct : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mat. Provision Ind.'
  @sap.quickinfo : 'Material Provision Indicator'
  MaterialProvisionType : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Internal ID'
  @sap.quickinfo : 'WBS Element'
  MaintOrdOpCompAssgdWBSElmntInt : String(8);
  @sap.unit : 'MaintOrdOpComponentCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Price/currency'
  @sap.quickinfo : 'Price in component currency'
  MaintOrderOpComponentPrice : Decimal(15, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element)'
  WBSElement : String(24);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Price unit'
  MaintOrdOpCompPriceUnitQty : Decimal(5, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  MaintOrdOpComponentCurrency : String(5);
  @sap.label : 'Backflush'
  @sap.quickinfo : 'Indicator: Backflush'
  MatlCompIsMarkedForBackflush : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Group'
  PurchasingGroup : String(3);
  @sap.label : 'Delivery time (days)'
  @sap.quickinfo : 'Delivery time in days'
  DeliveryTimeInDays : Decimal(3, 0);
  @sap.label : 'Goods Recipient'
  MaintOrdOpCompGdsRecipientName : String(12);
  @sap.label : 'Unloading Point'
  MaintOrdOpCompUnloadingPtTxt : String(25);
  @sap.label : 'GR processing time'
  @sap.quickinfo : 'Goods receipt processing time in days'
  GoodsReceiptDurationInWorkDays : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Info Rec.'
  @sap.quickinfo : 'Purchasing Info Record Number'
  PurchasingInfoRecord : String(10);
  @sap.label : 'Oper. LT offset'
  @sap.quickinfo : 'Lead-time offset for operation'
  OperationLeadTimeOffset : Decimal(3, 0);
  @sap.label : 'Operation LTO unit'
  @sap.quickinfo : 'Unit for lead-time offset for operation'
  @sap.semantics : 'unit-of-measure'
  OpsLeadTimeOffsetUnit : String(3);
  @sap.label : 'Requisitioner'
  @sap.quickinfo : 'Name of requisitioner/requester'
  MaintOrdOpCompRequisitioner : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Req. Tracking Number'
  @sap.quickinfo : 'Requirement Tracking Number'
  MaintOrdOpCompProcmtTrckgNmbr : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Organization'
  @sap.quickinfo : 'Purchasing Organization'
  ResponsiblePurchaseOrg : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Special Stock'
  @sap.quickinfo : 'Special Stock Indicator'
  MaintOrdOpCompSpecialStockType : String(1);
  @sap.unit : 'VariableSizeDimensionUnit'
  @sap.label : 'Size 1'
  VariableSizeDimension1 : Decimal(13, 3);
  @sap.label : 'Size unit'
  @sap.quickinfo : 'Unit of measure for sizes 1 to 3'
  @sap.semantics : 'unit-of-measure'
  VariableSizeDimensionUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'VSI Formula'
  @sap.quickinfo : 'Formula Key for Variable-Size Items'
  VariableSizeCompFormulaKey : String(2);
  @sap.unit : 'VariableSizeComponentUnit'
  @sap.label : 'Size 2'
  VariableSizeDimension2 : Decimal(13, 3);
  @sap.label : 'Number of Variable-Size Items'
  NumberOfVariableSizeItem : Integer;
  @sap.unit : 'VariableSizeComponentUnit'
  @sap.label : 'Size 3'
  VariableSizeDimension3 : Decimal(13, 3);
  @sap.unit : 'VariableSizeComponentUnit'
  @sap.label : 'VSI Quantity per PC'
  @sap.quickinfo : 'Variable-Size Item Quantity per Piece (PC)'
  VariableSizeItemQuantity : Decimal(13, 3);
  @sap.label : 'VSI Unit of Measure'
  @sap.quickinfo : 'Unit of Measure for Variable-Size Item'
  @sap.semantics : 'unit-of-measure'
  VariableSizeComponentUnit : String(3);
  @sap.label : 'Manual Reqmt Date'
  @sap.quickinfo : 'Manual Maintenance of Requirement Date'
  RqmtDateIsEnteredManually : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier Mat. No.'
  @sap.quickinfo : 'Material Number Used by Supplier'
  SupplierProduct : String(35);
  @sap.label : 'Keep Committed Qties'
  @sap.quickinfo : 'Keep Committed Quantities of Stock Components'
  MaintOrdCompCmtdQtyIsKept : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  MaintOrdOpCompPurOutlineAgrmt : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number of Purchasing Document'
  MaintOrdCompPurOutlineAgrmtItm : String(5);
  @sap.label : 'Item deleted'
  @sap.quickinfo : 'Item is deleted'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IsDeleted : Boolean;
  @sap.label : 'Catalog ID'
  @sap.quickinfo : 'Identifier for allowed catalogs'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrdOpCompProcmtCatalog : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product ID'
  @sap.quickinfo : 'Product ID in Catalog'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintOrdOpCompProcmtCatalogItm : String(40);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Quantity withdrawn'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  QuantityWithdrawnInBaseUnit : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Available Quantity'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConfirmedAvailableQuantity : Decimal(15, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Recipient Location'
  @sap.quickinfo : 'Recipient location code'
  RecipientLocationCode : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  ControllingArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Requisition'
  @sap.quickinfo : 'Purchase Requisition Number'
  PurchaseRequisition : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item of requisition'
  @sap.quickinfo : 'Item Number of Purchase Requisition'
  PurchaseRequisitionItem : String(5);
  @sap.unit : 'MaintOrdOpComponentCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Overall Limit'
  OverallLimitAmount : Decimal(13, 3);
  @sap.unit : 'MaintOrdOpComponentCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Expected Value'
  @sap.quickinfo : 'Expected Value of Overall Limit'
  ExpectedOverallLimitAmount : Decimal(13, 3);
  to_MaintenanceOrderOperation : Association to MaintenanceOrder.MaintenanceOrderOperation {  };
  to_MaintenanceOrder : Association to MaintenanceOrder.MaintenanceOrder {  };
  to_MaintOrderOpCompLongText : Composition of many MaintenanceOrder.MaintOrderOpCompLongText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.content.version : '2'
@sap.label : 'Maintenance Order Operation Long Text'
entity MaintenanceOrder.MaintOrderOpLongText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operation'
  @sap.quickinfo : 'Maintenance Order Operation'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrderOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Suboperation'
  @sap.quickinfo : 'Maintenance Order Suboperation'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrderSubOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text ID'
  @sap.updatable : 'false'
  key TextObjectType : String(4) not null;
  @sap.label : 'Language Key'
  @sap.updatable : 'false'
  key Language : String(2) not null;
  @sap.label : 'Long Text'
  OrderOperationLongText : LargeString;
  to_MaintenanceOrderOperation : Association to MaintenanceOrder.MaintenanceOrderOperation {  };
  to_MaintenanceOrder : Association to MaintenanceOrder.MaintenanceOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '2'
@sap.label : 'Maintenance Order Op Phase Control'
entity MaintenanceOrder.MaintOrderOpPhaseControl {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operation'
  @sap.quickinfo : 'Maintenance Order Operation'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrderOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Suboperation'
  @sap.quickinfo : 'Maintenance Order Suboperation'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrderSubOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Phase Control'
  @sap.quickinfo : 'Phase Control Code'
  @sap.updatable : 'false'
  key MaintenancePhaseControl : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Phase Control'
  @sap.quickinfo : 'Phase Control Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenancePhaseControlName : String(4);
  @sap.label : 'Description'
  @sap.quickinfo : 'Description of the Phase Control Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenancePhaseControlText : String(30);
  @sap.label : 'Set Automatically'
  @sap.quickinfo : 'Phase Control Code: Set Automatically'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintPhseCtrlIsSetAutomly : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Key'
  @sap.quickinfo : 'Authorization Key for Phase Control Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintPhaseControlAuthorityCode : String(8);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Phase Control Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintProcgPhseCtrlActvtnCode : String(2);
  @sap.label : 'Short Description'
  @sap.quickinfo : 'Short Text for Fixed Values'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintProcgPhseCtrlActvtnDesc : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Process Phase'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EAMProcessPhaseCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Process Subphase'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EAMProcessSubPhaseCode : String(4);
  @sap.label : 'Status Is Active'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintObjPhseCtrlStatusIsActive : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Set By'
  @sap.quickinfo : 'Business Object Blocker Code Set By User ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintObjPhaseCtrlCodeSetBy : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Activated On'
  @sap.quickinfo : 'Business Object Phase Control Code Activated On'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintObjPhseCtrlCodeSetDteTime : DateTime;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reset By'
  @sap.quickinfo : 'Business Object Blocker Code Resolved By User ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintObjPhaseCtrlCodeResetBy : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Deactivated On'
  @sap.quickinfo : 'Business Object Phase Control Code Deactivated On'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintObjPhseCtrlCodeRsetDteTme : DateTime;
  to_MaintenanceOrderOperation : Association to MaintenanceOrder.MaintenanceOrderOperation {  };
  to_MaintenanceOrder : Association to MaintenanceOrder.MaintenanceOrder {  };
} actions {
  action ActvtMaintOrderOpPhaseControl() returns MaintenanceOrder.DummyFunctionImportResult;
  action DactvtMaintOrderOpPhaseControl() returns MaintenanceOrder.DummyFunctionImportResult;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.content.version : '2'
@sap.label : 'Maintenance Order Operation PRT'
entity MaintenanceOrder.MaintOrderOpProdnRsceTool {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operation'
  @sap.quickinfo : 'Maintenance Order Operation'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrderOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Suboperation'
  @sap.quickinfo : 'Maintenance Order Suboperation'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrderSubOperation : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'PRT Item Number'
  @sap.quickinfo : 'Item Number for Production Resource/Tool'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key ProdnRsceToolItemNumber : String(4) not null;
  @sap.label : 'Text for PRT'
  @sap.quickinfo : 'First Line of Text for Production Resources/Tools'
  OrderProdnRsceToolText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PRT Category'
  @sap.quickinfo : 'Production Resources/Tools Category'
  @sap.updatable : 'false'
  ProdnRsceToolCategory : String(1) not null;
  @sap.label : 'PRT Category Name'
  @sap.quickinfo : 'Language-dependent description of the PRT category'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProdnRsceToolCategoryName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Production Resource/Tool'
  @sap.quickinfo : 'Production Resource/Tool Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ProductionResourceTool : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  @sap.updatable : 'false'
  Product : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Miscellaneous PRT'
  @sap.quickinfo : 'Miscellaneous Production Resources and Tools'
  @sap.updatable : 'false'
  MiscProductionResourceTool : String(18);
  @sap.label : 'PRT Description'
  @sap.quickinfo : 'Description of the Production Resource/Tool'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ProductionResourceToolDesc : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PRT Control Profile'
  @sap.quickinfo : 'Control Profile for Management of Production Resources/Tools'
  ProdnRsceToolControlProfile : String(4);
  @sap.unit : 'ProdnRsceToolStdWorkQtyUnit'
  @sap.label : 'Quantity'
  @sap.quickinfo : 'Standard Value for Quantity of Production Resources/Tools'
  ProdnRsceToolStandardWorkQty : Decimal(9, 3);
  @sap.label : 'Unit for Quantity'
  @sap.quickinfo : 'Unit for Quantity of Production Resources/Tools'
  @sap.semantics : 'unit-of-measure'
  ProdnRsceToolStdWorkQtyUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  @sap.updatable : 'false'
  Plant : String(4);
  to_MaintenanceOrderOperation : Association to MaintenanceOrder.MaintenanceOrderOperation {  };
  to_MaintenanceOrder : Association to MaintenanceOrder.MaintenanceOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.content.version : '2'
@sap.label : 'Maintenance Order Relationship'
entity MaintenanceOrder.MaintOrderOpRelationship {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operation'
  @sap.quickinfo : 'Maintenance Order Operation'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrderOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Suboperation'
  @sap.quickinfo : 'Maintenance Order Suboperation'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrderSubOperation : String(4) not null;
  @sap.label : 'Successor indicator'
  @sap.quickinfo : 'Indicator: Activity is successor to selected activity'
  @sap.updatable : 'false'
  key MaintOrdOperationIsSuccessor : Boolean not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  @sap.updatable : 'false'
  key RelatedMaintenanceOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operation'
  @sap.quickinfo : 'Maintenance Order Operation'
  @sap.updatable : 'false'
  key RelatedMaintOrderOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Type of relationship'
  @sap.heading : ''
  @sap.updatable : 'false'
  key OrderOpRelationshipIntType : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Predecessor ID no.'
  @sap.quickinfo : 'No. identifying the network to which the predecessor belongs'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PredecessorMaintOrderRouting : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Internal counter'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PredecessorOrderRoutingNode : String(8);
  @sap.display.format : 'NonNegative'
  @sap.label : 'No. identifying the network to which the successor belongs'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SuccessorMaintOrderRouting : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Internal counter'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SuccessorOrderRoutingNode : String(8);
  @sap.display.format : 'NonNegative'
  @sap.label : 'No. identifying the network to which the successor belongs'
  @sap.heading : ''
  RelatedMaintOrderRouting : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Internal counter'
  RelatedOrderRoutingNode : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Factory Calendar ID'
  @sap.quickinfo : 'Factory Calendar'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FactoryCalendar : String(2);
  @sap.unit : 'OpRelshpOffsetDurationUnit'
  @sap.label : 'Time Interval Relshp'
  @sap.quickinfo : 'Time Interval Between Relationships'
  OpRelshpOffsetDuration : Decimal(5, 1);
  @sap.label : 'Relationship unit'
  @sap.quickinfo : 'Unit for the time interval between relationships'
  @sap.semantics : 'unit-of-measure'
  OpRelshpOffsetDurationUnit : String(3);
  @sap.display.format : 'Date'
  @sap.label : 'Earliest start/rel.'
  @sap.quickinfo : 'Earliest start date for the relationship'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpRelshpEarliestStartDate : Date;
  @sap.label : 'Erl. start time /rel'
  @sap.quickinfo : 'Earliest start time for the relationship'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpRelshpEarliestStartTime : Time;
  @sap.display.format : 'Date'
  @sap.label : 'Latest start - rel'
  @sap.quickinfo : 'Latest start date of the relationship'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpRelationshipLatestStartDate : Date;
  @sap.label : 'Latest strt time-rel'
  @sap.quickinfo : 'Latest start time of the relationship'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpRelationshipLatestStartTime : Time;
  @sap.display.format : 'Date'
  @sap.label : 'Earliest finish rel.'
  @sap.quickinfo : 'Earliest finish date for the relationship'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpRelshpEarliestFinishDate : Date;
  @sap.label : 'Erl. finish time/rel'
  @sap.quickinfo : 'Earliest finish time for the relationship'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpRelshpEarliestFinishTime : Time;
  @sap.display.format : 'Date'
  @sap.label : 'Latest finish- rel.'
  @sap.quickinfo : 'Latest finish date of the relationship'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpRelshpLatestFinishDate : Date;
  @sap.label : 'Latest fin. time-rel'
  @sap.quickinfo : 'Latest finish time of the relationship'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpRelshpLatestFinishTime : Time;
  to_MaintenanceOrderOperation : Association to MaintenanceOrder.MaintenanceOrderOperation {  };
  to_MaintenanceOrder : Association to MaintenanceOrder.MaintenanceOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.content.version : '2'
@sap.label : 'Maintenance Order Settlement Rule'
entity MaintenanceOrder.MaintOrderSettlmtDistrRule {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ledger'
  @sap.quickinfo : 'Ledger in General Ledger Accounting'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key Ledger : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ledger Group'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key LedgerGroup : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Distr. Rule Group'
  @sap.quickinfo : 'Distribution Rule Group'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SettlementDistributionRuleGrp : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequence Number'
  @sap.quickinfo : 'Sequence Number of Distribution Rule'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SettlmtDistrRuleSequence : String(7) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ControllingObject : String(22);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Settlement Type'
  SettlementType : String(3);
  @sap.label : 'Short Description'
  @sap.quickinfo : 'Short Text for Fixed Values'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SettlementTypeDesc : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acct Assignment Type'
  @sap.quickinfo : 'Account Assignment Type'
  AccountAssignmentType : String(2);
  @sap.label : 'Account Assignment Type Desc'
  @sap.quickinfo : 'FIS_ACCASTY_TXT60'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AccountAssignmentTypeDesc : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Source Assignment'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DistributionSourceAssignment : String(3);
  @sap.label : 'Percent'
  @sap.quickinfo : 'Settlement Percentage Rate'
  SettlementPercentageRate : Decimal(5, 2);
  @sap.label : 'Equivalence Number'
  @sap.quickinfo : 'Equivalence Number for Order Settlement'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SettlementEquivalenceFactor : Decimal(10, 0);
  @sap.unit : 'SettlementAmountCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Amount'
  @sap.quickinfo : 'Amount for Amount Rule'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SettlementAmount : Decimal(15, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency of Amount'
  @sap.quickinfo : 'Currency for the Amount in the Amount Rule'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'currency-code'
  SettlementAmountCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  @sap.quickinfo : 'Controlling Area of Receiver'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ControllingArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Area'
  BusinessArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'G/L Account'
  @sap.quickinfo : 'G/L Account Number'
  GLAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center'
  @sap.quickinfo : 'Receiver Cost Center'
  CostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  OrderID : String(12);
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Internal ID'
  @sap.quickinfo : 'WBS Element'
  WBSElementInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Asset'
  @sap.quickinfo : 'Main Asset Number'
  MasterFixedAsset : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subnumber'
  @sap.quickinfo : 'Asset Subnumber'
  FixedAsset : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Network'
  @sap.quickinfo : 'Network Number for Account Assignment'
  NetworkNumberForAcctAssgmt : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.quickinfo : 'Sales Order Number'
  SalesOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sales Order Item'
  @sap.quickinfo : 'Item Number in Sales Order'
  SalesOrderItem : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Object'
  CostObject : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Process'
  BusinessProcess : String(12);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Dist. Rule Number'
  @sap.quickinfo : 'Distribution Rule Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AltvSettlmtDistrRuleSequence : String(7);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Valid-from Period'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ValidityStartFiscalPeriod : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Valid-from Year'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ValidityStartFiscalYear : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Valid To'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ValidityEndFiscalPeriod : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Valid-to Year'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ValidityEndFiscalYear : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'First Use'
  @sap.quickinfo : 'Period of First Use'
  SettlmtRule1stUsgeFiscalPeriod : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'First Use'
  @sap.quickinfo : 'Year First Used'
  SettlmtRule1stUsageFiscalYear : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Last Used'
  @sap.quickinfo : 'Period of Last Use'
  SettlmtRuleLastUsgeFsclPeriod : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Last Used'
  @sap.quickinfo : 'Year Last Used'
  SettlmtRuleLastUsageFiscalYear : String(4);
  to_MaintenanceOrder : Association to MaintenanceOrder.MaintenanceOrder {  };
};

@cds.external : true
type MaintenanceOrder.DummyFunctionImportResult {
  @sap.label : 'TRUE'
  IsInvalid : Boolean;
};


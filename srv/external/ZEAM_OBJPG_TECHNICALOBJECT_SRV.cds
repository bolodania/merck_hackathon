/* checksum : a3d771f41c8d7dde769017aceaedde65 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx pdf'
service ZEAM_OBJPG_TECHNICALOBJECT_SRV {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.TechnicalObjectTypeImageSet {
  @sap.unicode : 'false'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key TechnicalObject : LargeString not null;
  @sap.unicode : 'false'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key TechObjIsEquipOrFuncnlLoc : LargeString not null;
  @Core.MediaType : 'application/octet-stream'
  blob : LargeBinary;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.TechnicalObjectTypeSettingSet {
  @sap.unicode : 'false'
  @sap.label : 'Indicator'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key isCloud : Boolean not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.requires.filter : 'true'
@sap.content.version : '1'
@sap.label : 'Cost Center Hierarchy Node'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_CostCtrHierarchyInnerNodeVH {
  @sap.display.format : 'UpperCase'
  @sap.hierarchy.node.external.key.for : 'HierarchyNodeTechnicalID'
  @sap.text : 'HierarchyNodeText'
  @sap.label : 'Cost Center Hierarchy Node'
  key HierarchyNode : String(50) not null;
  @sap.display.format : 'UpperCase'
  @sap.filter.restriction : 'single-value'
  @sap.required.in.filter : 'true'
  @sap.label : 'Cost Center Hierarchy'
  @sap.value.list : 'standard'
  key UniversalHierarchy : String(42) not null;
  @sap.label : 'Node Class'
  @sap.quickinfo : 'Node class'
  HierarchyNodeClass : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Validity End Date'
  ValidityEndDate : Date;
  @sap.label : 'Description'
  @sap.quickinfo : 'Hierarchy node description'
  HierarchyNodeText : String(50);
  @sap.hierarchy.node.for : 'HierarchyNode'
  HierarchyNodeTechnicalID : String(1333);
  @sap.hierarchy.parent.node.for : 'HierarchyNodeTechnicalID'
  HierarchyParentNodeTechnicalID : String(1333);
  @sap.hierarchy.level.for : 'HierarchyNodeTechnicalID'
  HierarchyDistanceFromRoot : Integer;
  @sap.hierarchy.node.descendant.count.for : 'HierarchyNodeTechnicalID'
  HierarchyDescendantCount : Integer;
  @sap.hierarchy.drill.state.for : 'HierarchyNodeTechnicalID'
  HierarchyDrillState : String(22);
  @sap.hierarchy.preorder.rank.for : 'HierarchyNodeTechnicalID'
  HierarchyNodeOrdinalNumber : Integer;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Distribution Channel by Sales Org.'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_Dischannelvaluehelp {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  key SalesOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'DistributionChannelName'
  @sap.label : 'Distribution Channel'
  key DistributionChannel : String(2) not null;
  @sap.label : 'Distribution Channel Description'
  DistributionChannelName : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Hierarchy Duplicated Leaf Values'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_HierRuntimeRprstnDplLeafNode {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Hierarchy ID'
  key UniversalHierarchy : String(42) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Version'
  @sap.quickinfo : 'Hierarchy version'
  key HierarchyVersion : String(15) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Validity End Date'
  key ValidityEndDate : Date not null;
  @sap.text : 'HierarchyNode_Text'
  @sap.label : 'Node'
  @sap.quickinfo : 'Hierarchy node'
  key HierarchyNode : String(50) not null;
  @sap.label : 'Node Class'
  @sap.quickinfo : 'Node class'
  key HierarchyNodeClass : String(12) not null;
  @sap.label : 'Par. Node'
  @sap.quickinfo : 'Hierarchy parent node'
  key HierarchyParentNode : String(50) not null;
  @sap.label : 'Description'
  @sap.quickinfo : 'Hierarchy node description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  HierarchyNode_Text : String(50);
  @sap.display.format : 'Date'
  @sap.label : 'Validity Start Date'
  ValidityStartDate : Date;
  @sap.label : 'Leaf Value'
  @sap.quickinfo : 'Leaf value'
  UnivHierarchyBusinessEntity : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Node Type'
  @sap.quickinfo : 'Hierarchy node type'
  NodeType : String(1);
  @sap.label : 'Value'
  @sap.quickinfo : 'Node value'
  HierarchyNodeVal : String(40);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Hierarchy Level'
  HierarchyNodeLevel : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Hierarchy Type'
  HierarchyType : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Catalog Profile'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_MaintenanceCatalogProfileVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CatalogProfile_Text'
  @sap.label : 'Catalog Profile'
  key CatalogProfile : String(9) not null;
  @sap.label : 'Catalog Profile Description'
  @sap.quickinfo : 'Catalog Profile Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CatalogProfile_Text : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
@sap.label : 'Maintenance Object Status'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_MaintenanceObjectStatus {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object number'
  key StatusObject : String(22) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Object status'
  key StatusCode : String(5) not null;
  @sap.label : 'Text'
  @sap.quickinfo : 'Individual Status of an Object'
  StatusName : String(30);
  @sap.label : 'Status'
  @sap.quickinfo : 'Individual status of an object (short form)'
  StatusShortName : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'StatusProfileName'
  @sap.label : 'Status Profile'
  StatusProfile : String(8);
  @sap.label : 'Status Profile Name'
  @sap.quickinfo : 'Text (30 Characters)'
  StatusProfileName : String(30);
  @sap.label : 'Is User Status'
  IsUserStatus : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Status Sequence No.'
  @sap.quickinfo : 'Status Sequence Number'
  StatusSequenceNumber : String(2);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Maintenance Planning Plant'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_MaintenancePlanPlantVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PlantName1'
  @sap.label : 'Planning Plant'
  @sap.quickinfo : 'Maintenance Planning Plant'
  key MaintenancePlanningPlant : String(4) not null;
  @sap.label : 'Name 1'
  PlantName1 : String(30);
  @sap.label : 'Name 2'
  PlantName2 : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Maintenance Item Equipment'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_MaintItmEquipMatlSrlNmbrVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Equipment_Text'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  key Equipment : String(18) not null;
  @sap.label : 'Description'
  @sap.quickinfo : 'Description of technical object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Equipment_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material ID'
  Material : String(40);
  @sap.label : 'Material Description'
  MaterialName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Serial Number'
  SerialNumber : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Current customer'
  @sap.quickinfo : 'Customer to Whom Serial Number was Delivered'
  Customer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Vendor'
  @sap.quickinfo : 'Vendor number'
  Supplier : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Maintenance Object User Status With Status Number'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_MaintObjUserStatusWthStsNmbr {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object number'
  key StatusObject : String(22) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Object status'
  key StatusCode : String(5) not null;
  @sap.label : 'Text'
  @sap.quickinfo : 'Individual Status of an Object'
  StatusName : String(30);
  @sap.label : 'Status'
  @sap.quickinfo : 'Individual status of an object (short form)'
  StatusShortName : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'StatusProfileName'
  @sap.label : 'Status Profile'
  StatusProfile : String(8);
  @sap.label : 'Status Profile Name'
  @sap.quickinfo : 'Text (30 Characters)'
  StatusProfileName : String(30);
  @sap.label : 'Is User Status'
  IsUserStatus : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Status Number'
  @sap.quickinfo : 'Status Sequence Number'
  StatusSequenceNumber : String(2);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'F4 help for Master Warranty Number'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_MasterWarrantyNumberVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Master Warranty Number'
  @sap.quickinfo : 'Master warranty number'
  key MasterWarranty : String(20) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Warranty type'
  WarrantyType : String(1);
  @sap.label : 'Description'
  @sap.quickinfo : 'Text, Length 40'
  WarrantyName : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Record Created On'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'Name of Person Responsible for Creating the Object'
  CreatedByUser : String(12);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Technical Object'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_ObjPgTechnicalObject {
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechObjIsEquipOrFuncnlLocDesc'
  @sap.label : 'Technical Object Type'
  @sap.value.list : 'fixed-values'
  key TechObjIsEquipOrFuncnlLoc : String(20) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectDescription'
  @sap.label : 'Technical Object'
  key TechnicalObject : String(40) not null;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Activate_techobj_status_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Deactivate_techobj_status_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Del_flag_techobj_status_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Undel_flag_tehcobj_status_ac : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  @sap.value.list : 'standard'
  Equipment : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Location'
  @sap.value.list : 'standard'
  FunctionalLocation : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectDescription'
  @sap.label : 'Technical Object'
  @sap.quickinfo : 'Technical Object Identifier'
  @sap.value.list : 'standard'
  TechnicalObjectLabel : String(40);
  @sap.label : 'Technical Object Description'
  TechnicalObjectDescription : String(40);
  @sap.label : 'Technical Object Type Text'
  @sap.quickinfo : 'Description of Technical Object Type'
  TechObjIsEquipOrFuncnlLocDesc : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectCategoryDesc'
  @sap.label : 'Technical Object Category'
  @sap.value.list : 'standard'
  TechnicalObjectCategory : String(1);
  @sap.label : 'Technical Object Category Text'
  TechnicalObjectCategoryDesc : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectType_Text'
  @sap.label : 'Object Type'
  @sap.quickinfo : 'Type of Technical Object'
  @sap.value.list : 'standard'
  TechnicalObjectType : String(10);
  @sap.label : 'Object Type Text'
  @sap.quickinfo : 'Text for Object Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TechnicalObjectType_Text : String(20);
  @sap.label : 'Object Type Text'
  @sap.quickinfo : 'Text for Object Type'
  TechnicalObjectTypeDesc : String(20);
  @sap.label : 'Manufacturer'
  @sap.quickinfo : 'Manufacturer of Asset'
  AssetManufacturerName : String(30);
  @sap.label : 'Model Number'
  @sap.quickinfo : 'Manufacturer model number'
  ManufacturerPartTypeName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Manufacturer Part Number'
  @sap.quickinfo : 'Manufacturer part number'
  ManufacturerPartNmbr : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Manufacturer Serial Number'
  @sap.quickinfo : 'Manufacturer''s Serial Number'
  ManufacturerSerialNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'Name of Person Responsible for Creating the Object'
  @sap.value.list : 'standard'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Record Created On'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Changed By'
  @sap.quickinfo : 'Name of Person Who Changed Object'
  @sap.value.list : 'standard'
  LastChangedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Changed On'
  @sap.quickinfo : 'Last Changed On'
  LastChangeDate : Date;
  @sap.filter.restriction : 'single-value'
  @sap.label : 'Is Deleted'
  @sap.quickinfo : 'Deletion Indicator'
  IsDeleted : Boolean;
  @sap.filter.restriction : 'single-value'
  @sap.label : 'Has Long Text'
  @sap.quickinfo : 'Long Text Indicator'
  TechnicalObjectHasLongText : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Inventory Number'
  @sap.quickinfo : 'Inventory number'
  InventoryNumber : String(25);
  @sap.unit : 'GrossWeightUnit'
  @sap.label : 'Weight of Object'
  @sap.quickinfo : 'Weight of object'
  GrossWeight : Decimal(13, 3);
  @sap.label : 'Unit of Weight'
  @sap.quickinfo : 'Unit of weight'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  GrossWeightUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Size/dimension'
  SizeOrDimensionText : String(18);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintenancePlanningPlantName'
  @sap.label : 'Planning Plant'
  @sap.quickinfo : 'Maintenance Planning Plant'
  @sap.value.list : 'standard'
  MaintenancePlanningPlant : String(4);
  @sap.label : 'Planning Plant Name'
  @sap.quickinfo : 'Plant Name'
  MaintenancePlanningPlantName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintenancePlannerGroup_Text'
  @sap.label : 'Planner Group'
  @sap.quickinfo : 'Planner Group for Customer Service and Plant Maintenance'
  @sap.value.list : 'standard'
  MaintenancePlannerGroup : String(3);
  @sap.label : 'Planner Group Name'
  @sap.quickinfo : 'Name of the Maintenance Planner Group'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenancePlannerGroup_Text : String(18);
  @sap.label : 'Planner Group Name'
  @sap.quickinfo : 'Name of the Maintenance Planner Group'
  MaintenancePlannerGroupName : String(18);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MainWorkCenterDescription'
  @sap.label : 'Main Work Center'
  @sap.quickinfo : 'Work Center'
  @sap.value.list : 'standard'
  MainWorkCenter : String(8);
  @sap.label : 'Main Work Center Description'
  @sap.quickinfo : 'Work Center Text'
  MainWorkCenterDescription : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MainWorkCenterPlantName'
  @sap.label : 'Main Work Center Plant'
  @sap.quickinfo : 'Plant'
  @sap.value.list : 'standard'
  MainWorkCenterPlant : String(4);
  @sap.label : 'Main Work Center Plant Name'
  @sap.quickinfo : 'Plant Name'
  MainWorkCenterPlantName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintenancePlant_Text'
  @sap.label : 'Maintenance Plant'
  @sap.value.list : 'standard'
  MaintenancePlant : String(4);
  @sap.label : 'Plant Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenancePlant_Text : String(30);
  @sap.label : 'Maintenance Plant Name'
  @sap.quickinfo : 'Plant Name'
  MaintenancePlantName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'WorkCenterText'
  @sap.label : 'Work Center'
  @sap.value.list : 'standard'
  WorkCenter : String(8);
  @sap.label : 'Work Center Text'
  WorkCenterText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant Section'
  @sap.value.list : 'standard'
  PlantSection : String(3);
  @sap.text : 'PlantSectionPersonRespPhone'
  @sap.label : 'Plant Section Responsible'
  @sap.quickinfo : 'Group of Employees Responsible for Company Area'
  @sap.value.list : 'standard'
  PlantSectionPersonRespName : String(14);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Phone Number of Plant Section Responsible'
  @sap.quickinfo : 'Phone Number of Employee Group Responsible for Company Area'
  PlantSectionPersonRespPhone : String(12);
  @sap.display.format : 'UpperCase'
  @sap.text : 'AssetLocation_Text'
  @sap.label : 'Location'
  @sap.quickinfo : 'Location of maintenance object'
  @sap.value.list : 'standard'
  AssetLocation : String(10);
  @sap.label : 'Location Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AssetLocation_Text : String(40);
  @sap.label : 'Location Name'
  LocationName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Room'
  AssetRoom : String(8);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ABCIndicatorDesc'
  @sap.label : 'ABC Indicator'
  @sap.quickinfo : 'ABC Indicator for Technical Object'
  @sap.value.list : 'fixed-values'
  ABCIndicator : String(1);
  @sap.label : 'ABC Indicator Description'
  @sap.quickinfo : 'Description of ABC Indicator of Technical Object'
  ABCIndicatorDesc : String(20);
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  BusinessPartnerName1 : String(40);
  @sap.label : 'Name 2'
  BusinessPartnerName2 : String(40);
  @sap.label : 'Street'
  StreetName : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  @sap.quickinfo : 'City postal code'
  PostalCode : String(10);
  @sap.label : 'City'
  CityName : String(40);
  @sap.label : 'House Number Supplement'
  @sap.quickinfo : 'House number supplement'
  HouseNumberSupplementText : String(10);
  @sap.label : 'Floor'
  @sap.quickinfo : 'Floor in building'
  Floor : String(10);
  @sap.label : 'Room Number'
  @sap.quickinfo : 'Room or Apartment Number'
  RoomNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Form of Address'
  @sap.quickinfo : 'Form-of-Address Key'
  FormOfAddress : String(4);
  @sap.label : 'Building'
  @sap.quickinfo : 'Building (Number or Code)'
  Building : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sort Field'
  MaintObjectFreeDefinedAttrib : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Technical Object'
  SuperiorTechnicalObject : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'SuperiorTechnicalObjectName'
  @sap.label : 'Superior Technical Object'
  @sap.quickinfo : 'Technical Object Identifier'
  @sap.value.list : 'standard'
  SuperiorTechnicalObjectLabel : String(40);
  @sap.label : 'Superior Technical Object Text'
  @sap.quickinfo : 'Technical Object Description'
  SuperiorTechnicalObjectName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Superior Technical Object Type'
  @sap.quickinfo : 'Technical Object Type'
  SuperiorObjIsEquipOrFuncnlLoc : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Technical Identification Number'
  @sap.quickinfo : 'Technical identification number'
  TechnicalObjectSortCode : String(25);
  @odata.Type : 'Edm.Byte'
  UICT_TechnicalObjectSortCode : Integer;
  @sap.display.format : 'UpperCase'
  @sap.text : 'CompanyCodeName'
  @sap.label : 'Company Code'
  @sap.value.list : 'standard'
  CompanyCode : String(4);
  @sap.label : 'Company Name'
  @sap.quickinfo : 'Name of Company Code or Company'
  CompanyCodeName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.text : 'BusinessAreaName'
  @sap.label : 'Business Area'
  @sap.value.list : 'standard'
  BusinessArea : String(4);
  @sap.label : 'Business Area Description'
  @sap.quickinfo : 'Business Area Name'
  BusinessAreaName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MasterFixedAssetDescription'
  @sap.label : 'Asset'
  @sap.quickinfo : 'Main Asset Number'
  @sap.value.list : 'standard'
  MasterFixedAsset : String(12);
  @sap.label : 'Asset Description'
  @sap.quickinfo : 'Asset Main Number Text'
  MasterFixedAssetDescription : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Asset Subnumber'
  @sap.value.list : 'standard'
  FixedAsset : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'CostCenterName'
  @sap.label : 'Cost Center'
  @sap.value.list : 'standard'
  CostCenter : String(10);
  @sap.label : 'Cost Center Name'
  CostCenterName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center Hierarchy Node'
  CostCenterHierarchyNode : String(50);
  @sap.display.format : 'UpperCase'
  @sap.filter.restriction : 'single-value'
  @sap.label : 'Cost Center Hierarchy'
  @sap.value.list : 'standard'
  CostCenterHierarchy : String(42);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ControllingAreaName'
  @sap.label : 'Controlling Area'
  @sap.value.list : 'standard'
  ControllingArea : String(4);
  @sap.label : 'Controlling Area Name'
  ControllingAreaName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.text : 'WBSDescription'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element)'
  WBSElement : String(24);
  @sap.label : 'WBS Element Description'
  @sap.quickinfo : 'Work Breakdown Structure Element Name'
  WBSDescription : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'StandingOrderDesc'
  @sap.label : 'Standing Order'
  @sap.quickinfo : 'Standing order number'
  @sap.value.list : 'standard'
  StandingOrderNumber : String(12);
  @sap.label : 'Standing Order Description'
  @sap.quickinfo : 'Description'
  StandingOrderDesc : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'SettlementOrderDesc'
  @sap.label : 'Settlement Order'
  @sap.quickinfo : 'Settlement order'
  @sap.value.list : 'standard'
  SettlementOrder : String(12);
  @sap.label : 'Settlement Order Description'
  @sap.quickinfo : 'Order Description'
  SettlementOrderDesc : String(40);
  @sap.label : 'User Status'
  @sap.quickinfo : 'Concatenated User Status'
  @sap.sortable : 'false'
  ConcatenatedActiveUserStsName : String(224);
  @sap.label : 'System Status'
  @sap.quickinfo : 'Concatenated System Status'
  @sap.sortable : 'false'
  ConcatenatedActiveSystStsName : String(224);
  @sap.display.format : 'UpperCase'
  @sap.text : 'SalesOrganization_Text'
  @sap.label : 'Sales Organization'
  @sap.value.list : 'standard'
  SalesOrganization : String(4);
  @sap.label : 'Sales Organization Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesOrganization_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.text : 'DistributionChannel_Text'
  @sap.label : 'Distribution Channel'
  @sap.value.list : 'standard'
  DistributionChannel : String(2);
  @sap.label : 'Distribution Channel Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DistributionChannel_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.text : 'Division_Text'
  @sap.label : 'Division'
  @sap.value.list : 'standard'
  Division : String(2);
  @sap.label : 'Division Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Division_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.text : 'SalesOffice_Text'
  @sap.label : 'Sales Office'
  @sap.value.list : 'standard'
  SalesOffice : String(4);
  @sap.label : 'Sales Office Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesOffice_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.text : 'SalesGroup_Text'
  @sap.label : 'Sales Group'
  @sap.value.list : 'standard'
  SalesGroup : String(3);
  @sap.label : 'Sales Group Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesGroup_Text : String(20);
  @sap.filter.restriction : 'single-value'
  @sap.label : 'Technical Obj. Sync.'
  @sap.quickinfo : 'Technical Object Is Synchronized with AIN'
  TechObjIsSyncedWthAstIntelNtwk : Boolean;
  @sap.label : 'Image'
  TechnicalObjectThumbnailURL : String(277);
  @sap.display.format : 'UpperCase'
  @sap.label : 'AIN Object ID'
  AssetIntelNtwkObjectID : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  @sap.quickinfo : 'Technical Object Authorization Group'
  @sap.value.list : 'standard'
  AuthorizationGroup : String(4);
  @sap.label : 'Checkbox'
  @sap.heading : ''
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  UICT_MaintenanceOrder : Boolean;
  @sap.label : 'Checkbox'
  @sap.heading : ''
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  UICT_MaintenanceNotification : Boolean;
  @sap.label : 'Checkbox'
  @sap.heading : ''
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  UICT_MaintenanceItem : Boolean;
  @sap.label : 'Checkbox'
  @sap.heading : ''
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  UICT_ServiceOrder : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Char'
  @sap.quickinfo : 'Character field of length 40'
  TechObjectWithLeadingZeros : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object number'
  MaintObjectInternalID : String(22);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProdnRsceToolQtyCalcFmlaName'
  @sap.label : 'Usage Value Formula'
  @sap.quickinfo : 'Formula for Calculating the Total Usage Value of PRT'
  ProdnRsceToolUsageQtyCalcFmla : String(6);
  @sap.label : 'Formula Description'
  @sap.quickinfo : 'Short Text for the Formula'
  ProdnRsceToolQtyCalcFmlaName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductionResourceUsageDesc'
  @sap.label : 'PRT Usage'
  @sap.quickinfo : 'Production Resource/Tool Usage'
  ProductionResourceUsage : String(3);
  @sap.label : 'Usage Description'
  @sap.quickinfo : 'Description of the Usage'
  ProductionResourceUsageDesc : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProdnRsceToolControlPrflName'
  @sap.label : 'PRT Control Key'
  @sap.quickinfo : 'Control Profile for Management of Production Resources/Tools'
  ProdnRsceToolControlProfile : String(4);
  @sap.label : 'PRT Control Key Text'
  @sap.quickinfo : 'Text for the production resources/tools control key'
  ProdnRsceToolControlPrflName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Catalog Profile'
  @sap.value.list : 'standard'
  CatalogProfile : String(9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Master Warranty'
  @sap.quickinfo : 'Master warranty number'
  @sap.value.list : 'standard'
  TechObjCustomerMasterWarranty : String(20);
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Customer Warranty Start Date'
  @sap.quickinfo : 'Warranty Date'
  TechObjCustWarrantyStartDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Customer Warranty End Date'
  @sap.quickinfo : 'Date on which the warranty ends'
  TechObjCustWarrantyEndDate : Date;
  @sap.filter.restriction : 'single-value'
  @sap.label : 'Inherit Customer Warranty'
  @sap.quickinfo : 'Data element for domain BOOLE: TRUE (=''X'') and FALSE (='' '')'
  TechObjIsCustWarrantyInherited : Boolean;
  @sap.filter.restriction : 'single-value'
  @sap.label : 'Pass On Customer Warranty'
  @sap.quickinfo : 'Data element for domain BOOLE: TRUE (=''X'') and FALSE (='' '')'
  TechObjIsCustWarrantyPassedOn : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Vendor Master Warranty'
  @sap.quickinfo : 'Master warranty number'
  @sap.value.list : 'standard'
  TechObjSupplierMasterWarranty : String(20);
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Vendor Warranty Start Date'
  @sap.quickinfo : 'Warranty Date'
  TechObjSuplrWarrantyStartDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Vendor Warranty End Date'
  @sap.quickinfo : 'Date on which the warranty ends'
  TechObjSuplrWarrantyEndDate : Date;
  @sap.filter.restriction : 'single-value'
  @sap.label : 'Inherit Vendor Warranty'
  @sap.quickinfo : 'Data element for domain BOOLE: TRUE (=''X'') and FALSE (='' '')'
  TechObjIsSuplrWrntyInherited : Boolean;
  @sap.filter.restriction : 'single-value'
  @sap.label : 'Pass On Vendor Warranty'
  @sap.quickinfo : 'Data element for domain BOOLE: TRUE (=''X'') and FALSE (='' '')'
  TechObjIsSuplrWarrantyPassedOn : Boolean;
  to_ABCIndicator : Association to ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_ABCIndicator {  };
  to_ActiveSystemStatus : Association to many ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_StsObjActiveStatusCodeText {  };
  to_ActiveUserStatus : Association to many ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_StsObjActiveStatusCodeText {  };
  to_AssetLocationVH : Association to ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_PMAssetLocationVH {  };
  to_CatalogProfileVH : Association to ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_MaintenanceCatalogProfileVH {  };
  to_CostCenterHierarchyInnerVH : Association to many ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_CostCtrHierarchyInnerNodeVH {  };
  to_CostCenterHierarchyLeafNode : Association to many ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_HierRuntimeRprstnDplLeafNode {  };
  to_CustomerMasterWarrantyVH : Association to ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_MasterWarrantyNumberVH {  };
  to_MaintenancePlanningPlantVH : Association to ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_MaintenancePlanPlantVH {  };
  to_ObjPgMaintenanceItem : Association to many ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_TechObjMaintenanceItem {  };
  to_ObjPgTechnicalObjectWthDesc : Association to ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_ObjPgTechnicalObjectWthDesc {  };
  to_SettlementOrder : Association to ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_Order {  };
  to_SrvcMaintenanceItem : Association to many ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_TechObjSrvcMaintenanceItem {  };
  to_SuperiorTechnicalObject : Association to ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_TechnicalObjectLabelVH {  };
  to_SuperiorTechnicalObjQuickVw : Association to ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_TechObjQuickVw {  };
  to_SupplierMasterWarrantyVH : Association to ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_MasterWarrantyNumberVH {  };
  to_SystemStatus : Association to many ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_MaintenanceObjectStatus {  };
  to_TechnicalObjectChgHistory : Association to many ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_TechnicalObjectChgHistory {  };
  to_TechnicalObjectLabelVH : Association to ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_TechnicalObjectLabelVH {  };
  to_TechObjIsEquipOrFuncnlLocVH : Association to ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_TechObjIsEquipOrFuncnlLoc {  };
  to_TechObjMaintenanceOrder : Association to many ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_TechObjMaintenanceOrder {  };
  to_TechObjMaintNotification : Association to many ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_TechObjMaintNotification {  };
  to_TechObjServiceOrder : Association to many ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_TechObjServiceOrder {  };
  to_UserStatusWithStatusNumber : Association to ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_MaintObjUserStatusWthStsNmbr {  };
  to_UserStatusWthoutStsNmbr : Association to many ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_MaintenanceObjectStatus {  };
} actions {
  action A7509D75273B4F485Activate_techobj_status() returns ZEAM_OBJPG_TECHNICALOBJECT_SRV.DummyFunctionImportResult;
  action A7509D75273B4F4Deactivate_techobj_status() returns ZEAM_OBJPG_TECHNICALOBJECT_SRV.DummyFunctionImportResult;
  action A7509D75273B4F485Del_flag_techobj_status() returns ZEAM_OBJPG_TECHNICALOBJECT_SRV.DummyFunctionImportResult;
  action A7509D75273B4F4Undel_flag_tehcobj_status() returns ZEAM_OBJPG_TECHNICALOBJECT_SRV.DummyFunctionImportResult;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Obj Page for Technical Object with Desc'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_ObjPgTechnicalObjectWthDesc {
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectDescription'
  @sap.label : 'Technical Object'
  key TechnicalObject : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tech. Obj. Type'
  @sap.quickinfo : 'Technical Object Type'
  key TechObjIsEquipOrFuncnlLoc : String(20) not null;
  @sap.label : 'Long Text'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  TechnicalObjectLongText : String(1333);
  @sap.label : 'Description'
  @sap.quickinfo : 'Technical Object Description'
  TechnicalObjectDescription : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectClassDesc'
  @sap.label : 'Class'
  @sap.quickinfo : 'Class number'
  ClassNumber : String(18);
  @sap.label : 'Description'
  @sap.quickinfo : 'Class Description'
  TechnicalObjectClassDesc : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectCategoryDesc'
  @sap.label : 'Category'
  @sap.quickinfo : 'Technical Object Category'
  @sap.value.list : 'standard'
  TechnicalObjectCategory : String(1);
  @sap.label : 'Technical Object Category Text'
  TechnicalObjectCategoryDesc : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectTypeDesc'
  @sap.label : 'Type'
  @sap.quickinfo : 'Type of Technical Object'
  @sap.value.list : 'standard'
  TechnicalObjectType : String(10);
  @sap.label : 'Type'
  @sap.quickinfo : 'Text for Object Type'
  TechnicalObjectTypeDesc : String(20);
  @sap.label : 'Manufacturer'
  @sap.quickinfo : 'Manufacturer of Asset'
  AssetManufacturerName : String(30);
  @sap.label : 'Model number'
  @sap.quickinfo : 'Manufacturer model number'
  ManufacturerPartTypeName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Manufacturer Part Number'
  @sap.quickinfo : 'Manufacturer part number'
  ManufacturerPartNmbr : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Manufacturer Serial Number'
  @sap.quickinfo : 'Manufacturer''s Serial Number'
  ManufacturerSerialNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Serial Number'
  SerialNumber : String(18);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaterialName'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  Material : String(40);
  @sap.label : 'Material Name'
  @sap.quickinfo : 'Material Description'
  MaterialName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaterialTypeName'
  @sap.label : 'Construction Type'
  @sap.quickinfo : 'Construction type material of the object'
  @sap.value.list : 'standard'
  ConstructionMaterial : String(40);
  @sap.label : 'Construction Material Name'
  @sap.quickinfo : 'Material Description'
  MaterialTypeName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Inventory Number'
  @sap.quickinfo : 'Inventory number'
  InventoryNumber : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
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
  @sap.label : 'Original Files'
  TechObjNmbrOfAttachedDocuments : Integer;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object number'
  MaintObjectInternalID : String(22);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Char'
  @sap.quickinfo : 'Character field of length 40'
  TechObjectWithLeadingZeros : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center'
  @sap.value.list : 'standard'
  CostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  @sap.value.list : 'standard'
  ControllingArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planning Plant'
  @sap.quickinfo : 'Maintenance Planning Plant'
  MaintenancePlanningPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maint. Planner Group'
  @sap.quickinfo : 'Planner Group for Customer Service and Plant Maintenance'
  @sap.value.list : 'standard'
  MaintenancePlannerGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  MaintenancePlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Loc/Acct Assignment'
  @sap.quickinfo : 'Location and account assignment for technical object'
  MaintObjectLocAcctAssgmtNmbr : String(12);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Division by Distribution Chain'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_OrgDivisionValueHelp {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  key SalesOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  key DistributionChannel : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'DivisionName'
  @sap.label : 'Division'
  key Division : String(2) not null;
  @sap.label : 'Division Description'
  DivisionName : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Asset Location Value Help'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_PMAssetLocationVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'LocationName'
  @sap.label : 'Location'
  key Location : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.label : 'Location Name'
  LocationName : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Plant Maintenance Work Centers'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_PMWorkCenterVH {
  @sap.display.format : 'NonNegative'
  @sap.text : 'WorkCenter'
  @sap.label : 'Object ID'
  @sap.quickinfo : 'Object ID of the resource'
  key WorkCenterInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Type'
  @sap.quickinfo : 'Object types of the CIM resource'
  key WorkCenterTypeCode : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'WorkCenter_Text'
  @sap.label : 'Work Center'
  key WorkCenter : String(8) not null;
  @sap.label : 'Work Center Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkCenter_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Work Center Category'
  WorkCenterCategoryCode : String(4);
  @sap.label : 'Category Name'
  @sap.quickinfo : 'Name of the Work Center Category'
  WorkCenterCategoryName : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Consumption View for PM Reporter'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_PMWorkReqReporterVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'FullName'
  @sap.label : 'User'
  @sap.quickinfo : 'User Name in User Master Record'
  key UserID : String(12) not null;
  @sap.label : 'First Name'
  FirstName : String(40);
  @sap.label : 'Last Name'
  LastName : String(40);
  @sap.label : 'Full Name'
  @sap.quickinfo : 'Full Name of Person'
  FullName : String(80);
  @sap.label : 'E-Mail Address'
  @sap.semantics : 'email'
  EmailAddress : String(241);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Sales Organization'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_SalesDocSalesOrganizationVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'SalesOrganization_Text'
  @sap.label : 'Sales Organization'
  key SalesOrganization : String(4) not null;
  @sap.label : 'Sales Organization Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesOrganization_Text : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Sales Group'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_SalesGroupValueHelp {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Office'
  key SalesOffice : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'SalesGroupName'
  @sap.label : 'Sales Group'
  key SalesGroup : String(3) not null;
  @sap.label : 'Sales Group Description'
  SalesGroupName : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Sales Office'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_SalesOfficeValueHelp {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  key SalesOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  key DistributionChannel : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  key OrganizationDivision : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'SalesOfficeName'
  @sap.label : 'Sales Office'
  key SalesOffice : String(4) not null;
  @sap.label : 'Sales Office Description'
  SalesOfficeName : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Sales Organization'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_SalesOrganizationVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'SalesOrganization_Text'
  @sap.label : 'Sales Organization'
  key SalesOrganization : String(4) not null;
  @sap.label : 'Sales Organization Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesOrganization_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Statistics Currency'
  @sap.quickinfo : 'Statistics currency'
  @sap.semantics : 'currency-code'
  SalesOrganizationCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  @sap.quickinfo : 'Company code of the sales organization'
  @sap.value.list : 'standard'
  CompanyCode : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Status Object Active Status Code Text'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_StsObjActiveStatusCodeText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object number'
  key StatusObject : String(22) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Object status'
  key StatusCode : String(5) not null;
  IsUserStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status Profile'
  StatusProfile : String(8);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Status Sequence No.'
  @sap.quickinfo : 'Status Sequence Number'
  StatusSequenceNumber : String(2);
  @sap.label : 'Status'
  @sap.quickinfo : 'Individual Status of an Object'
  StatusName : String(30);
  @sap.label : 'Status'
  @sap.quickinfo : 'Individual status of an object (short form)'
  StatusShortName : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Technical Object Change History'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_TechnicalObjectChgHistory {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Value'
  key ChangeDocObject : String(90) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Number'
  @sap.quickinfo : 'Change Number of Document'
  key ChangeDocument : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Table Name'
  key DatabaseTable : String(30) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ChangeDocDatabaseTableField_Text'
  @sap.label : 'Field Name'
  key ChangeDocDatabaseTableField : String(30) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ChangeDocItemChangeType_Text'
  @sap.label : 'Activity'
  key ChangeDocItemChangeType : String(1) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Edited On'
  key CreationDateTime : DateTime not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Table Key'
  @sap.quickinfo : 'Changed table record key'
  key ChangeDocTableKey : String(70) not null;
  @sap.label : 'Field Name'
  @sap.quickinfo : 'Long Field Label'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ChangeDocDatabaseTableField_Text : String(40);
  @sap.label : 'Change Method'
  @sap.quickinfo : 'Short Text for Fixed Values'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ChangeDocItemChangeType_Text : String(60);
  @sap.display.format : 'NonNegative'
  @sap.text : 'MaintObjectChangeTypeCodeText'
  @sap.label : 'Edit Type'
  MaintObjectChangeTypeCode : String(1);
  @sap.label : 'Edit Type Text'
  MaintObjectChangeTypeCodeText : String(60);
  @sap.label : 'Short Description'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  TechnicalObjectDescription : String(200);
  @sap.display.format : 'UpperCase'
  @sap.text : 'UserDescription'
  @sap.label : 'Edited By'
  CreatedByUser : String(12);
  @sap.label : 'Edited By Name'
  UserDescription : String(80);
  @sap.display.format : 'Date'
  @sap.label : 'Date'
  @sap.quickinfo : 'Creation Date of Change Document'
  CreationDate : Date;
  @sap.label : 'Time'
  @sap.quickinfo : 'Time of Change'
  CreationTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.label : 'New Value'
  ChangeDocNewFieldValue : String(254);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Old Value'
  ChangeDocPreviousFieldValue : String(254);
  @sap.display.format : 'UpperCase'
  @sap.label : 'New Value Display'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  TechObjChgDocNewFldValueText : String(254);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Old Value Display'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  TechObjChgDocOldFldValueText : String(254);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Change Doc. Object'
  @sap.quickinfo : 'Object class'
  ChangeDocObjectClass : String(15);
  @sap.label : 'Characteristic Description'
  CharcDescription : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Class'
  @sap.quickinfo : 'Class number'
  Class : String(18);
  @sap.label : 'Status'
  @sap.quickinfo : 'Individual Status of an Object'
  StatusName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status Profile'
  StatusProfile : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status inactive'
  @sap.quickinfo : 'Indicator: Status Is Inactive'
  StatusIsInactive : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Technical Object Value Help'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_TechnicalObjectLabelVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechObjIsEquipOrFuncnlLocDesc'
  @sap.label : 'Tech. Obj. Type'
  @sap.quickinfo : 'Technical Object Type'
  key TechObjIsEquipOrFuncnlLoc : String(20) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectDescription'
  @sap.label : 'Technical Object'
  @sap.quickinfo : 'Technical Object Identifier'
  key TechnicalObjectLabel : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectDescription'
  @sap.label : 'Technical Object'
  key TechnicalObject : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Location'
  @sap.quickinfo : 'Functional Location Label'
  FunctionalLocationLabelName : String(40);
  @sap.label : 'Technical Object Type'
  @sap.quickinfo : 'Description of Technical Object Type'
  @sap.value.list : 'fixed-values'
  TechObjIsEquipOrFuncnlLocDesc : String(40);
  @sap.label : 'Technical Object Description'
  TechnicalObjectDescription : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  @sap.value.list : 'standard'
  Equipment : String(18);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Maintenance Items for Technical Object'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_TechObjMaintenanceItem {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maintenance Item'
  @sap.quickinfo : 'Maintenance item'
  key MaintenanceItem : String(16) not null;
  @sap.label : 'Maintenance Item Text'
  @sap.quickinfo : 'Item Short Text'
  MaintenanceItemDescription : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maintenance Plan'
  MaintenancePlan : String(12);
  @sap.label : 'Maintenance Plan Text'
  MaintenancePlanDesc : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintPriorityDesc'
  @sap.label : 'Priority'
  MaintPriority : String(1);
  @sap.label : 'Priority Text'
  MaintPriorityDesc : String(20);
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectDescription'
  @sap.label : 'Technical Object'
  @sap.quickinfo : 'Technical Object Identifier'
  TechnicalObjectLabel : String(40);
  @sap.label : 'Technical Object Description'
  TechnicalObjectDescription : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechObjIsEquipOrFuncnlLocDesc'
  @sap.label : 'Technical Object Type'
  TechObjIsEquipOrFuncnlLoc : String(20);
  @sap.label : 'Technical Object Type Description'
  @sap.quickinfo : 'Description of Technical Object Type'
  TechObjIsEquipOrFuncnlLocDesc : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maintenance Item Category'
  @sap.quickinfo : 'Maintenance plan category'
  MaintenancePlanCategory : String(2);
  @sap.label : 'Maintenance Item Category Text'
  @sap.quickinfo : 'Text, 40 Characters Long'
  MaintenancePlanCategoryDesc : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maintenance Strategy'
  MaintenanceStrategy : String(6);
  @sap.label : 'Maintenance Strategy Text'
  @sap.quickinfo : 'Description of maintenance strategy'
  MaintenanceStrategyDesc : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Notification Type'
  NotificationType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planning Plant'
  @sap.quickinfo : 'Maintenance Planning Plant'
  MaintenancePlanningPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planner Group'
  @sap.quickinfo : 'Planner Group for Customer Service and Plant Maintenance'
  MaintenancePlannerGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'AuthorizGroup'
  @sap.quickinfo : 'Technical Object Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center'
  @sap.value.list : 'standard'
  CostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  @sap.value.list : 'standard'
  ControllingArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  MaintenancePlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Loc/Acct Assignment'
  @sap.quickinfo : 'Location and account assignment for technical object'
  MaintObjectLocAcctAssgmtNmbr : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order Type'
  MaintenanceOrderType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Technical Object'
  TechnicalObject : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Maintenance Orders for Technical Object'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_TechObjMaintenanceOrder {
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintenanceOrderDesc'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  key MaintenanceOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object number'
  MaintenanceOrderInternalID : String(22);
  @sap.display.format : 'UpperCase'
  @sap.text : 'OrderTypeName'
  @sap.label : 'Order Type'
  MaintenanceOrderType : String(4);
  @sap.label : 'Order Type Name'
  @sap.quickinfo : 'Name of an Order Type'
  OrderTypeName : String(40);
  @sap.label : 'Description'
  MaintenanceOrderDesc : String(40);
  @sap.label : 'System Status'
  @sap.quickinfo : 'Concatenated System Status'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ConcatenatedActiveSystStsName : String(224);
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  CreationDate : Date;
  @sap.label : 'Created At'
  @sap.quickinfo : 'Time created'
  CreationTime : Time;
  @sap.display.format : 'Date'
  @sap.label : 'Basic Start Date'
  MaintOrdBasicStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Basic finish date'
  MaintOrdBasicEndDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintPriorityDesc'
  @sap.label : 'Priority'
  MaintPriority : String(1);
  @sap.label : 'Priority Text'
  MaintPriorityDesc : String(20);
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectDescription'
  @sap.label : 'Technical Object'
  @sap.quickinfo : 'Technical Object Identifier'
  TechnicalObjectLabel : String(40);
  @sap.label : 'Technical Object Description'
  TechnicalObjectDescription : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechObjIsEquipOrFuncnlLocDesc'
  @sap.label : 'Technical Object Type'
  TechObjIsEquipOrFuncnlLoc : String(20);
  @sap.label : 'Technical Object Type Description'
  @sap.quickinfo : 'Description of Technical Object Type'
  TechObjIsEquipOrFuncnlLocDesc : String(40);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Order category'
  MaintenanceOrderCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'Entered By'
  CreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Work Center'
  WorkCenter : String(8);
  @sap.label : 'Work Center Text'
  WorkCenterText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maint. Planner Group'
  @sap.quickinfo : 'Planner Group for Customer Service and Plant Maintenance'
  @sap.value.list : 'standard'
  MaintenancePlannerGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planning Plant'
  @sap.quickinfo : 'Maintenance Planning Plant'
  MaintenancePlanningPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Respons. Cost Center'
  @sap.quickinfo : 'Responsible Cost Center'
  @sap.value.list : 'standard'
  ResponsibleCostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  ControllingArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'AuthorizGroup'
  @sap.quickinfo : 'Technical Object Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  MaintenancePlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Technical Object'
  TechnicalObject : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Maintenance Notifications for Technical Object'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_TechObjMaintNotification {
  @sap.display.format : 'UpperCase'
  @sap.text : 'NotificationText'
  @sap.label : 'Notification'
  @sap.quickinfo : 'Notification Number'
  key MaintenanceNotification : String(12) not null;
  @sap.label : 'Description'
  @sap.quickinfo : 'Short Text'
  NotificationText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'NotificationTypeName'
  @sap.label : 'Notification Type'
  NotificationType : String(2);
  @sap.label : 'Notification Type Text'
  NotificationTypeName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectDescription'
  @sap.label : 'Technical Object'
  @sap.quickinfo : 'Technical Object Identifier'
  TechnicalObjectLabel : String(40);
  @sap.label : 'Technical Object Description'
  TechnicalObjectDescription : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechObjIsEquipOrFuncnlLocDesc'
  @sap.label : 'Technical Object Type'
  TechObjIsEquipOrFuncnlLoc : String(20);
  @sap.label : 'Technical Object Type Description'
  @sap.quickinfo : 'Description of Technical Object Type'
  TechObjIsEquipOrFuncnlLocDesc : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintPriorityDesc'
  @sap.label : 'Priority'
  MaintPriority : String(1);
  @sap.label : 'Priority Text'
  MaintPriorityDesc : String(20);
  @sap.label : 'System Status'
  @sap.quickinfo : 'Concatenated System Status'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ConcatenatedActiveSystStsName : String(224);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintenancePlanningPlantName'
  @sap.label : 'Planning Plant'
  @sap.quickinfo : 'Maintenance Planning Plant'
  MaintenancePlanningPlant : String(4);
  @sap.label : 'Plant Name'
  MaintenancePlanningPlantName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintenancePlannerGroupName'
  @sap.label : 'Maintenance Planner Group'
  @sap.quickinfo : 'Planner Group for Customer Service and Plant Maintenance'
  @sap.value.list : 'standard'
  MaintenancePlannerGroup : String(3);
  @sap.label : 'Planner Group Name'
  @sap.quickinfo : 'Name of the Maintenance Planner Group'
  MaintenancePlannerGroupName : String(18);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ABCIndicatorDesc'
  @sap.label : 'ABC Indicator'
  @sap.quickinfo : 'ABC Indicator for Technical Object'
  ABCIndicator : String(1);
  @sap.label : 'ABC Indicator Text'
  @sap.quickinfo : 'Description of ABC Indicator of Technical Object'
  ABCIndicatorDesc : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Record Created On'
  CreationDate : Date;
  @sap.label : 'Created At'
  @sap.quickinfo : 'Time at Which Record Was Added'
  CreationTime : Time;
  @sap.label : 'User Status'
  @sap.quickinfo : 'Concatenated User Status'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ConcatenatedActiveUserStsName : String(224);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'Name of Person Responsible for Creating the Object'
  CreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.text : 'AssemblyName'
  @sap.label : 'Assembly'
  @sap.value.list : 'standard'
  Assembly : String(40);
  @sap.label : 'Assembly Name'
  @sap.quickinfo : 'Material Description'
  AssemblyName : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Malfunction Start On'
  @sap.quickinfo : 'Start of Malfunction (Date)'
  MalfunctionStartDate : Date;
  @sap.label : 'Malfunction Start At'
  @sap.quickinfo : 'Start of Malfunction (Time)'
  MalfunctionStartTime : Time;
  @sap.display.format : 'Date'
  @sap.label : 'Malfunction End On'
  @sap.quickinfo : 'End of Malfunction (Date)'
  MalfunctionEndDate : Date;
  @sap.label : 'Malfunction End At'
  @sap.quickinfo : 'End of Malfunction (Time)'
  MalfunctionEndTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintenanceWorkCenterText'
  @sap.label : 'Work Center'
  @sap.value.list : 'standard'
  MaintenanceWorkCenter : String(8);
  @sap.label : 'Work Center Text'
  MaintenanceWorkCenterText : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Required Start On'
  @sap.quickinfo : 'Required Start Date'
  RequiredStartDate : Date;
  @sap.label : 'Required Start At'
  @sap.quickinfo : 'Required Start Time'
  RequiredStartTime : Time;
  @sap.display.format : 'Date'
  @sap.label : 'Required End On'
  @sap.quickinfo : 'Required End Date'
  RequiredEndDate : Date;
  @sap.label : 'Required End At'
  @sap.quickinfo : 'Required End Time'
  RequiredEndTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintenanceWorkCenterPlantName'
  @sap.label : 'Plant for Work Ctr'
  @sap.quickinfo : 'Plant for Work Center'
  @sap.value.list : 'standard'
  MaintenanceWorkCenterPlant : String(4);
  @sap.label : 'Maintenance Work Center Plant Name'
  @sap.quickinfo : 'Plant Name'
  MaintenanceWorkCenterPlantName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'AssetLocationName'
  @sap.label : 'Location'
  @sap.quickinfo : 'Location of maintenance object'
  AssetLocation : String(10);
  @sap.label : 'Location Name'
  AssetLocationName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Room'
  AssetRoom : String(8);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintenancePlantName'
  @sap.label : 'Maintenance Plant'
  @sap.value.list : 'standard'
  MaintenancePlant : String(4);
  @sap.label : 'Maintenance Plant Name'
  @sap.quickinfo : 'Plant Name'
  MaintenancePlantName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant Section'
  @sap.value.list : 'standard'
  PlantSection : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Priority Type'
  MaintPriorityType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Technical Object'
  TechnicalObject : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'AuthorizGroup'
  @sap.quickinfo : 'Technical Object Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object number'
  @sap.quickinfo : 'Object Number for Status Management'
  MaintNotifInternalID : String(22);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order Type'
  MaintenanceOrderType : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Quick view for Technical Objects'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_TechObjQuickVw {
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectDescription'
  @sap.label : 'Technical Object'
  key TechnicalObject : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechObjIsEquipOrFuncnlLoc_Text'
  @sap.label : 'Technical Object Type'
  key TechObjIsEquipOrFuncnlLoc : String(20) not null;
  @sap.label : 'Technical Object Type Description'
  @sap.quickinfo : 'Description of Technical Object Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TechObjIsEquipOrFuncnlLoc_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Technical Object'
  @sap.quickinfo : 'Technical Object Identifier'
  TechnicalObjectLabel : String(40);
  @sap.label : 'Long Text'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  TechnicalObjectLongText : String(1333);
  @sap.label : 'Tech. Obj. Desc'
  @sap.quickinfo : 'Technical Object Description'
  TechnicalObjectDescription : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object number'
  MaintObjectInternalID : String(22);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Location'
  @sap.value.list : 'standard'
  SuperiorFunctionalLocation : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Location'
  @sap.quickinfo : 'Functional Location Label'
  SuperiorFuncnlLocLabelName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectCategory_Text'
  @sap.label : 'Category'
  @sap.quickinfo : 'Technical Object Category'
  @sap.value.list : 'standard'
  TechnicalObjectCategory : String(1);
  @sap.label : 'Technical Object Category Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TechnicalObjectCategory_Text : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tech. Obj. Type'
  @sap.quickinfo : 'Technical Object Type'
  SuperiorObjIsEquipOrFuncnlLoc : String(20);
  @sap.label : 'Image'
  TechnicalObjectThumbnailURL : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Superior Technical Object'
  @sap.quickinfo : 'Technical Object Identifier'
  SuperiorTechnicalObject : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectType_Text'
  @sap.label : 'Object Type'
  @sap.quickinfo : 'Type of Technical Object'
  @sap.value.list : 'standard'
  TechnicalObjectType : String(10);
  @sap.label : 'Object Type Text'
  @sap.quickinfo : 'Text for Object Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TechnicalObjectType_Text : String(20);
  @sap.label : 'Manufacturer'
  @sap.quickinfo : 'Manufacturer of Asset'
  AssetManufacturerName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'PlantName'
  @sap.label : 'Maintenance Plant'
  @sap.value.list : 'standard'
  MaintenancePlant : String(4);
  @sap.label : 'Maintenance Plant Name'
  @sap.quickinfo : 'Plant Name'
  PlantName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant Section'
  @sap.value.list : 'standard'
  PlantSection : String(3);
  @sap.display.format : 'UpperCase'
  @sap.text : 'LocationName'
  @sap.label : 'Location'
  @sap.quickinfo : 'Location of maintenance object'
  AssetLocation : String(10);
  @sap.label : 'Location Name'
  LocationName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Room'
  AssetRoom : String(8);
  @sap.label : 'Model Number'
  @sap.quickinfo : 'Manufacturer model number'
  ManufacturerPartTypeName : String(20);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Identifying Lvl'
  @sap.quickinfo : 'Number of Identifying Level'
  FuncLocStrucIdentifyingLevel : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : '2nd Ident. Lvl'
  @sap.quickinfo : 'Number of 2nd Identifying Level'
  FuncLocStruc2ndIdentifyingLvl : String(2);
  @sap.label : 'Identifying Level'
  @sap.quickinfo : 'Field Label Displayed for Identifying Level'
  IdentifyingLabel : String(15);
  @sap.label : 'Second Identifying Level'
  @sap.quickinfo : 'Field Label Displayed for Second Identifying Level'
  SecondIdentifyingLabel : String(15);
  @sap.label : 'System Status'
  @sap.quickinfo : 'Concatenated System Status'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ConcatenatedActiveSystStsName : String(224);
  @sap.label : 'User Status'
  @sap.quickinfo : 'Concatenated User Status'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ConcatenatedActiveUserStsName : String(224);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Identifying Technical Object'
  @sap.quickinfo : 'Functional Location Label'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  TechObjStructureIdentifierLvl1 : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Second Identifying Technical Object'
  @sap.quickinfo : 'Functional Location Label'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  TechObjStructureIdentifierLvl2 : String(40);
  @odata.Type : 'Edm.Byte'
  @sap.label : 'UI Field Control'
  @sap.quickinfo : 'UI Field Control Byte'
  UxFcTechObjStrucIdentifierLvl1 : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'UI Field Control'
  @sap.quickinfo : 'UI Field Control Byte'
  UxFcTechObjStrucIdentifierLvl2 : Integer;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Char'
  @sap.quickinfo : 'Character field of length 40'
  TechObjectWithLeadingZeros : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planning Plant'
  @sap.quickinfo : 'Maintenance Planning Plant'
  MaintenancePlanningPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maint. Planner Group'
  @sap.quickinfo : 'Planner Group for Customer Service and Plant Maintenance'
  @sap.value.list : 'standard'
  MaintenancePlannerGroup : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Service order for technical object'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_TechObjServiceOrder {
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechObjIsEquipOrFuncnlLocDesc'
  @sap.label : 'Technical Object Type'
  key TechObjIsEquipOrFuncnlLoc : String(20) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Technical Object'
  key TechnicalObject : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ServiceDocumentDescription'
  @sap.label : 'Service Order'
  @sap.quickinfo : 'Transaction ID'
  key ServiceDocument : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trans. Cat.'
  @sap.quickinfo : 'Business Trans. Cat.'
  ServiceObjectType : String(10);
  @sap.label : 'Service Order Description'
  @sap.quickinfo : 'Transaction Description'
  ServiceDocumentDescription : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ServiceDocumentTypeName'
  @sap.label : 'Service Order Type'
  @sap.quickinfo : 'Business Transaction Type'
  ServiceDocumentType : String(4);
  @sap.label : 'Service Order Type Description'
  @sap.quickinfo : 'Description'
  ServiceDocumentTypeName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ServiceDocumentStatusName'
  @sap.label : 'Life Cycle Status'
  ServiceDocumentStatus : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Life Cycle Status Description'
  @sap.quickinfo : 'Lifecycle Status Description'
  ServiceDocumentStatusName : String(60);
  @sap.display.format : 'NonNegative'
  @sap.text : 'ServiceDocumentPriorityName'
  @sap.label : 'Priority'
  @sap.quickinfo : 'Activity Priority'
  ServiceDocumentPriority : String(1);
  @sap.label : 'Priority Description'
  @sap.quickinfo : 'Description'
  ServiceDocumentPriorityName : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Posting Date'
  @sap.quickinfo : 'Posting Date for a Business Transaction'
  PostingDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectDescription'
  @sap.label : 'Technical Object'
  @sap.quickinfo : 'Technical Object Identifier'
  TechnicalObjectLabel : String(40);
  @sap.label : 'Technical Object Description'
  TechnicalObjectDescription : String(40);
  @sap.label : 'Technical Object Type Description'
  @sap.quickinfo : 'Description of Technical Object Type'
  TechObjIsEquipOrFuncnlLocDesc : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'UserDescription'
  @sap.label : 'Created By'
  @sap.quickinfo : 'User that Created the Transaction'
  ServiceDocumentCreatedByUser : String(12);
  @sap.label : 'Created By User Description'
  @sap.quickinfo : 'User Description'
  UserDescription : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  SalesOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Office'
  SalesOffice : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Group'
  SalesGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  DistributionChannel : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  Division : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Org. ID'
  @sap.quickinfo : 'Sales Organization ID'
  SalesOrganizationOrgUnitID : String(14);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Office'
  SalesOfficeOrgUnitID : String(14);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Group'
  SalesGroupOrgUnitID : String(14);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Service Organization'
  ServiceOrganization : String(14);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Employee Responsible'
  ResponsibleEmployee : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Tech obj in Mitem and obj list for srvc'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_TechObjSrvcMaintenanceItem {
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechObjIsEquipOrFuncnlLocDesc'
  @sap.label : 'Technical Object Type'
  key TechObjIsEquipOrFuncnlLoc : String(20) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Technical Object'
  key TechnicalObject : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintenanceItemDescription'
  @sap.label : 'Maintenance Item'
  @sap.quickinfo : 'Maintenance item'
  key MaintenanceItem : String(16) not null;
  @sap.label : 'Maintenance Item Text'
  @sap.quickinfo : 'Item Short Text'
  MaintenanceItemDescription : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintenancePlanDesc'
  @sap.label : 'Maintenance Plan'
  MaintenancePlan : String(12);
  @sap.label : 'Maintenance Plan Text'
  MaintenancePlanDesc : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ServiceContractDescription'
  @sap.label : 'Service Contract'
  @sap.quickinfo : 'Transaction ID'
  ServiceContract : String(10);
  @sap.label : 'Service Contract Description'
  @sap.quickinfo : 'Transaction Description'
  ServiceContractDescription : String(40);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Service Contract Item'
  @sap.quickinfo : 'Shortened Item Number in Document'
  ServiceContractItem : String(6);
  @sap.display.format : 'UpperCase'
  @sap.text : 'SrvcOrdTmplDescription'
  @sap.label : 'Service Order Template'
  @sap.quickinfo : 'Transaction ID'
  ServiceOrderTemplate : String(10);
  @sap.label : 'Service Order Template Description'
  @sap.quickinfo : 'Transaction Description'
  SrvcOrdTmplDescription : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ServiceOrderTypeName'
  @sap.label : 'Service Order Type'
  @sap.quickinfo : 'Business Transaction Type'
  ServiceOrderType : String(4);
  @sap.label : 'Service Order Type Description'
  @sap.quickinfo : 'Description'
  ServiceOrderTypeName : String(40);
  @sap.display.format : 'NonNegative'
  @sap.text : 'ServiceDocumentPriorityName'
  @sap.label : 'Service Priority'
  @sap.quickinfo : 'Activity Priority'
  ServiceDocumentPriority : String(1);
  @sap.label : 'Priority Description'
  @sap.quickinfo : 'Description'
  ServiceDocumentPriorityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectDescription'
  @sap.label : 'Technical Object'
  @sap.quickinfo : 'Technical Object Identifier'
  TechnicalObjectLabel : String(40);
  @sap.label : 'Technical Object Description'
  TechnicalObjectDescription : String(40);
  @sap.label : 'Technical Object Type Description'
  @sap.quickinfo : 'Description of Technical Object Type'
  TechObjIsEquipOrFuncnlLocDesc : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  Equipment : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Loc/Acct Assignment'
  @sap.quickinfo : 'Location and account assignment for technical object'
  MaintObjectLocAcctAssgmtNmbr : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maint. plan cat.'
  @sap.quickinfo : 'Maintenance plan category'
  MaintenancePlanCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maint. Planner Group'
  @sap.quickinfo : 'Planner Group for Customer Service and Plant Maintenance'
  MaintenancePlannerGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planning Plant'
  @sap.quickinfo : 'Maintenance Planning Plant'
  MaintenancePlanningPlant : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'ABC Indicator'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_ABCIndicator {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ABCIndicator_Text'
  @sap.label : 'ABC Indicator'
  @sap.quickinfo : 'ABC Indicator for Technical Object'
  key ABCIndicator : String(1) not null;
  @sap.label : 'ABC Indicator Text'
  @sap.quickinfo : 'Description of ABC Indicator of Technical Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ABCIndicator_Text : String(20);
  @sap.label : 'ABC Ind Obj Inst ID'
  @sap.quickinfo : 'Object Instance ID of ABC Indicator'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ABCIndicatorCodeOID : String(128);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Business Area'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_BusinessAreaStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BusinessArea_Text'
  @sap.label : 'Business Area'
  key BusinessArea : String(4) not null;
  @sap.label : 'Business Area Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BusinessArea_Text : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Company Code'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_CompanyCodeStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CompanyCodeName'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.label : 'Company Name'
  @sap.quickinfo : 'Name of Company Code or Company'
  CompanyCodeName : String(25);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Controlling Area'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_ControllingAreaStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ControllingAreaName'
  @sap.label : 'Controlling Area'
  key ControllingArea : String(4) not null;
  @sap.label : 'Controlling Area Name'
  ControllingAreaName : String(25);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Cost Center Hierarchy Value Help'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_CostCenterHierarchyVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CostCenterHierarchy_Text'
  @sap.label : 'Cost Center Hierarchy'
  key CostCenterHierarchy : String(42) not null;
  @sap.label : 'Description'
  @sap.quickinfo : 'Hierarchy description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CostCenterHierarchy_Text : String(50);
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Valid To Date'
  ValidityEndDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Valid-From Date'
  ValidityStartDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  ControllingArea : String(12);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Cost Center'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_CostCenterStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'CostCenter_Text'
  @sap.label : 'Cost Center'
  key CostCenter : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Valid To Date'
  key ValidityEndDate : Date not null;
  @sap.label : 'Cost Center Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CostCenter_Text : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Valid-From Date'
  ValidityStartDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Customer'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_Customer_VH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BPCustomerName'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.label : 'Customer Name 1'
  @sap.quickinfo : 'Name 1'
  OrganizationBPName1 : String(35);
  @sap.label : 'Business Partner Name 1'
  @sap.quickinfo : 'Name 1'
  BusinessPartnerName1 : String(40);
  @sap.label : 'Customer Name 2'
  @sap.quickinfo : 'Name 2'
  OrganizationBPName2 : String(35);
  @sap.label : 'Business Partner Name 2'
  @sap.quickinfo : 'Name 2'
  BusinessPartnerName2 : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region'
  @sap.quickinfo : 'Country/Region Key'
  Country : String(3);
  @sap.label : 'City'
  CityName : String(35);
  @sap.label : 'Business Partner Address City'
  @sap.quickinfo : 'City'
  BPAddrCityName : String(40);
  @sap.label : 'Street'
  @sap.quickinfo : 'Street and House Number'
  StreetName : String(35);
  @sap.label : 'Business Partner Address Street'
  @sap.quickinfo : 'Street'
  BPAddrStreetName : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  PostalCode : String(10);
  @sap.label : 'Customer Name'
  @sap.quickinfo : 'Name of Customer'
  CustomerName : String(80);
  @sap.label : 'Business Partner Customer Name'
  @sap.quickinfo : 'Customer Name'
  BPCustomerName : String(81);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account group'
  @sap.quickinfo : 'Customer Account Group'
  CustomerAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purpose Complete Flag'
  @sap.quickinfo : 'Business Purpose Completed Flag'
  IsBusinessPurposeCompleted : String(1);
  @sap.label : 'Competitors'
  @sap.quickinfo : 'Indicator: Competitor'
  IsCompetitor : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  BusinessPartner : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner Type'
  BusinessPartnerType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Ctrlr. Set'
  @sap.quickinfo : 'BP: Data Controller Set Flag'
  DataControllerSet : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController1 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController2 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController3 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController4 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController5 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController6 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController7 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController8 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController9 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController10 : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Equipment Category'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_EquipmentCategoryStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'EquipmentCategory_Text'
  @sap.label : 'Equipment category'
  key EquipmentCategory : String(1) not null;
  @sap.label : 'Equipment CatDesc.'
  @sap.quickinfo : 'Equipment category description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EquipmentCategory_Text : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status Profile'
  EquipmentCategoryStatusProfile : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'View profile'
  @sap.quickinfo : 'View profile for tab index Customizing'
  EquipmentCategoryViewProfile : String(8);
  @sap.label : 'Linear Asset'
  @sap.quickinfo : 'Indicator: Object Belongs to Linear Asset Management'
  EquipCatHasLinearAttributes : Boolean;
  @sap.label : 'Equi Cat Obj Inst ID'
  @sap.quickinfo : 'Object Instance ID of Equipment Category'
  EquipmentCategoryOID : String(128);
  @sap.label : 'IS-U'
  @sap.quickinfo : 'IS-U data'
  IsUtilitiesData : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'No. Range Int. Asst'
  @sap.quickinfo : 'Number Range of Internal Number Assignment'
  NumberRangeForIntIDAssignment : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'No. Range Ext. Asst'
  @sap.quickinfo : 'Number Range of External Number Assignment'
  NumberRangeForExtIDAssignment : String(2);
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechObjInspectionLevelCode_Text'
  @sap.label : 'Inspection Level'
  @sap.quickinfo : 'Level at Which the Object is Represented'
  TechObjInspectionLevelCode : String(1);
  @sap.label : 'Short Description'
  @sap.quickinfo : 'Short Text for Fixed Values'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TechObjInspectionLevelCode_Text : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'EquipRefCateg.'
  @sap.quickinfo : 'Equipment reference category'
  EquipmentCategoryReferenceType : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Equipment'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_EquipmentStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Equipment_Text'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  key Equipment : String(18) not null;
  @sap.label : 'Description'
  @sap.quickinfo : 'Description of technical object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Equipment_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Fixed Asset'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_FixedAssetStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Asset'
  @sap.quickinfo : 'Main Asset Number'
  key MasterFixedAsset : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'FixedAssetDescription'
  @sap.label : 'Sub-number'
  @sap.quickinfo : 'Asset Subnumber'
  key FixedAsset : String(4) not null;
  @sap.label : 'Description'
  @sap.quickinfo : 'Asset Description'
  FixedAssetDescription : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Asset Class'
  AssetClass : String(8);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Functional Location'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_FunctionalLocationStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'FunctionalLocation_Text'
  @sap.label : 'Functional Location'
  key FunctionalLocation : String(40) not null;
  @sap.label : 'Description'
  @sap.quickinfo : 'Description of functional location'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FunctionalLocation_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
@sap.label : 'Location and Account Assignment'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_LocationAccountAssignment {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Loc/Acct Assignment'
  @sap.quickinfo : 'Location and account assignment for technical object'
  key MaintObjectLocAcctAssgmtNmbr : String(12) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'PP work center'
  @sap.quickinfo : 'Object ID of PP work center'
  WorkCenterInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Type'
  @sap.quickinfo : 'Object types of the CIM resource'
  WorkCenterTypeCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Location'
  @sap.value.list : 'standard'
  FunctionalLocation : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maintenance Plant'
  @sap.value.list : 'standard'
  MaintenancePlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant Section'
  @sap.value.list : 'standard'
  PlantSection : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Location'
  @sap.quickinfo : 'Location of maintenance object'
  AssetLocation : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sort Field'
  MaintObjectFreeDefinedAttrib : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Area'
  @sap.value.list : 'standard'
  BusinessArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  @sap.value.list : 'standard'
  ControllingArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'CostCenter_Text'
  @sap.label : 'Cost Center'
  @sap.value.list : 'standard'
  CostCenter : String(10);
  @sap.label : 'Cost Center Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CostCenter_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  @sap.value.list : 'standard'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  Division : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Location'
  @sap.quickinfo : 'Location of maintenance object'
  MaintenanceObjectLocation : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Room'
  AssetRoom : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ABC Indicator'
  @sap.quickinfo : 'ABC Indicator for Technical Object'
  ABCIndicator : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  AddressID : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element)'
  WBSElementInternalID : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Asset'
  @sap.quickinfo : 'Main Asset Number'
  @sap.value.list : 'standard'
  MasterFixedAsset : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sub-number'
  @sap.quickinfo : 'Asset Subnumber'
  @sap.value.list : 'standard'
  FixedAsset : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Settlement Order'
  @sap.quickinfo : 'Settlement order'
  SettlementOrder : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standing Order'
  @sap.quickinfo : 'Standing order number'
  @sap.value.list : 'standard'
  StandingOrderNumber : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  SalesOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  DistributionChannel : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Office'
  SalesOffice : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  OrganizationDivision : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Group'
  SalesGroup : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Maintenance Order'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_MaintenanceOrderStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintenanceOrderDesc'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  key MaintenanceOrder : String(12) not null;
  @sap.label : 'Description'
  MaintenanceOrderDesc : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Maintenance Plan'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_MaintenancePlanStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintenancePlanDesc'
  @sap.label : 'Maintenance Plan'
  key MaintenancePlan : String(12) not null;
  @sap.label : 'Maintenance Plan Description'
  @sap.quickinfo : 'Maintenance Plan Text'
  MaintenancePlanDesc : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Call Object'
  @sap.quickinfo : 'Call object for maintenance plan'
  MaintenancePlanCallObject : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Maintenance Strategy'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_MaintenanceStrategyStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintenanceStrategy_Text'
  @sap.label : 'Maintenance Strategy'
  key MaintenanceStrategy : String(6) not null;
  @sap.label : 'Strategy Description'
  @sap.quickinfo : 'Description of maintenance strategy'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenanceStrategy_Text : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.label : 'Scheduling Indicator'
  @sap.quickinfo : 'Short Text for Fixed Values'
  MaintPlanSchedgIndDesc : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scheduling indicator'
  MaintStrategySchedulingCode : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Maintenance Planner Group'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_MaintPlnrGrpStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintenancePlannerGroupName'
  @sap.label : 'Planner Group'
  @sap.quickinfo : 'Maintenance Planner Group'
  key MaintenancePlannerGroup : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planning Plant'
  @sap.quickinfo : 'Maintenance Planning Plant'
  key MaintenancePlanningPlant : String(4) not null;
  @sap.label : 'Planner Group Name'
  @sap.quickinfo : 'Name of the Maintenance Planner Group'
  MaintenancePlannerGroupName : String(18);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Master Fixed Asset'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_MasterFixedAssetStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'MasterFixedAssetDescription'
  @sap.label : 'Asset'
  @sap.quickinfo : 'Main Asset Number'
  key MasterFixedAsset : String(12) not null;
  @sap.label : 'Asset Main No. Text'
  @sap.quickinfo : 'Asset Main Number Text'
  MasterFixedAssetDescription : String(50);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Material'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_MaterialStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Material_Text'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Material : String(40) not null;
  @sap.label : 'Material Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Material_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Order Header'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_Order {
  @sap.display.format : 'UpperCase'
  @sap.text : 'OrderDescription'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  key OrderID : String(12) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Order Category'
  OrderCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order Type'
  OrderType : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Order Internal ID'
  OrderInternalID : String(10);
  @sap.label : 'Order Description'
  OrderDescription : String(40);
  @sap.label : 'Long Text Exists'
  OrderHasLongText : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'MRP Controller'
  MRPController : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  ControllingArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Number'
  @sap.quickinfo : 'Object Internal ID'
  ObjectInternalID : String(22);
  @sap.label : 'Statistical'
  @sap.quickinfo : 'Identifier for Statistical Order'
  IsStatisticalOrder : Boolean;
  @sap.label : 'Deletion Flag'
  IsMarkedForDeletion : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Search Help for WorkAgreements'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_PersWrkAgrmtSrchHelp {
  @sap.display.format : 'NonNegative'
  @sap.text : 'PersonFullName'
  @sap.label : 'Personnel number'
  key PersonWorkAgreement : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID rel.object'
  @sap.quickinfo : 'ID of Related Object'
  Person : String(45);
  @sap.label : 'Last Name'
  @sap.quickinfo : 'Last Name of Business Partner (Person)'
  LastName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Family Name'
  FamilyName : String(35);
  @sap.label : 'First Name'
  @sap.quickinfo : 'First Name of Business Partner (Person)'
  FirstName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Given Name'
  GivenName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID Number'
  @sap.quickinfo : 'Identification Number'
  PersonExternalID : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'User ID'
  UserID : String(12);
  @sap.label : 'Full Name'
  PersonFullName : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.label : 'Company Name'
  @sap.quickinfo : 'Name of Company Code or Company'
  CompanyCodeName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center'
  CostCenter : String(10);
  @sap.label : 'Cost Center Name'
  CostCenterName : String(20);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Job key'
  @sap.quickinfo : 'Job'
  Job : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Job Name'
  @sap.quickinfo : 'Job Title'
  JobName : String(255);
  @sap.label : 'Organizational Unit Name'
  OrganizationalUnitName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Organizational key'
  @sap.quickinfo : 'Organizational Key'
  PersonWorkAgrmtAuthznGrpg : String(14);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purpose Completed'
  @sap.quickinfo : 'Business Purpose Completed Flag'
  IsBusinessPurposeCompleted : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Plant Section'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_PlantSection {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant Section'
  key PlantSection : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.label : 'EmplGrp Responsible'
  @sap.quickinfo : 'Group of Employees Responsible for Company Area'
  PlantSectionPersonRespName : String(14);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Phone Group Resp.'
  @sap.quickinfo : 'Phone Number of Employee Group Responsible for Company Area'
  PlantSectionPersonRespPhone : String(12);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Plant Section'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_PlantSectionStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant Section'
  key PlantSection : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.label : 'Plant Name'
  PlantName : String(30);
  @sap.label : 'EmplGrp Responsible'
  @sap.quickinfo : 'Group of Employees Responsible for Company Area'
  PlantSectionPersonRespName : String(14);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Plant'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_PlantStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PlantName'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.label : 'Plant Name'
  PlantName : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Contact Card User'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_PMContactCardUser {
  @sap.display.format : 'UpperCase'
  @sap.text : 'FullName'
  @sap.label : 'User'
  @sap.quickinfo : 'User Name in User Master Record'
  key UserID : String(12) not null;
  @sap.label : 'First Name'
  FirstName : String(40);
  @sap.label : 'Last Name'
  LastName : String(40);
  @sap.label : 'Full Name'
  @sap.quickinfo : 'Full Name of Person'
  FullName : String(80);
  @sap.label : 'E-Mail Address'
  @sap.semantics : 'email'
  EmailAddress : String(241);
  @sap.label : 'Department'
  OrganizationalUnit : String(40);
  @sap.label : 'Function'
  FunctionalTitleName : String(40);
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  Company : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone number'
  @sap.quickinfo : 'Complete Number: Dialing Code+Number+Extension'
  @sap.semantics : 'tel'
  InternationalPhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone number'
  @sap.quickinfo : 'Complete Number: Dialing Code+Number+Extension'
  @sap.semantics : 'tel'
  InternationalMobilePhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Academic Title 1'
  @sap.quickinfo : 'Academic Title: Key'
  FormOfAddress : String(4);
  @sap.label : 'Street'
  StreetName : String(60);
  @sap.label : 'House Number'
  HouseNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region Key'
  Country : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  @sap.quickinfo : 'City postal code'
  PostalCode : String(10);
  @sap.label : 'City'
  CityName : String(40);
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
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Product Value Help'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_ProductStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Product_Text'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.label : 'Product Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Product_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'External Product ID'
  @sap.quickinfo : 'External Representation of Material Number'
  ProductExternalID : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Supplier'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_Supplier_VH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BPSupplierName'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  key Supplier : String(10) not null;
  @sap.label : 'Supplier Name1'
  @sap.quickinfo : 'Supplier Name'
  SupplierName : String(35);
  @sap.label : 'Business Partner Name1'
  BusinessPartnerName1 : String(40);
  @sap.label : 'Business Partner Supplier Name'
  @sap.quickinfo : 'Supplier Name'
  BPSupplierName : String(81);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account group'
  @sap.quickinfo : 'Vendor account group'
  SupplierAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purpose Completed'
  @sap.quickinfo : 'Business Purpose Completed Flag'
  IsBusinessPurposeCompleted : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  BusinessPartner : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner Type'
  BusinessPartnerType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Ctrlr. Set'
  @sap.quickinfo : 'BP: Data Controller Set Flag'
  DataControllerSet : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController1 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController2 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController3 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController4 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController5 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController6 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController7 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController8 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController9 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController10 : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Technical Object Category'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_TechnicalObjectCategory {
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectCategory_Text'
  @sap.label : 'Tech. Obj. Category'
  @sap.quickinfo : 'Technical Object Category'
  key TechnicalObjectCategory : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechObjIsEquipOrFuncnlLocDesc'
  @sap.label : 'Tech. Obj. Type'
  @sap.quickinfo : 'Technical Object Type'
  key TechObjIsEquipOrFuncnlLoc : String(20) not null;
  @sap.label : 'Technical Object Category Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TechnicalObjectCategory_Text : String(30);
  @sap.label : 'Technical Object Type'
  @sap.quickinfo : 'Description of Technical Object Type'
  @sap.value.list : 'fixed-values'
  TechObjIsEquipOrFuncnlLocDesc : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Technical Object'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_TechnicalObjectStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObject_Text'
  @sap.label : 'Technical Object'
  key TechnicalObject : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechObjIsEquipOrFuncnlLoc_Text'
  @sap.label : 'Tech. Obj. Type'
  @sap.quickinfo : 'Technical Object Type'
  key TechObjIsEquipOrFuncnlLoc : String(20) not null;
  @sap.label : 'Tech. Obj. Desc'
  @sap.quickinfo : 'Technical Object Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TechnicalObject_Text : String(40);
  @sap.label : 'Technical Object Type Description'
  @sap.quickinfo : 'Description of Technical Object Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TechObjIsEquipOrFuncnlLoc_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Techncial Object Type'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_TechnicalObjectTypeStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechnicalObjectType_Text'
  @sap.label : 'Object Type'
  @sap.quickinfo : 'Type of Technical Object'
  key TechnicalObjectType : String(10) not null;
  @sap.label : 'Object Type Text'
  @sap.quickinfo : 'Text for Object Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TechnicalObjectType_Text : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Technical Object Authorization Group'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_TechObjAuthznGrp {
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechObjAuthorizationGroup_Text'
  @sap.label : 'Authorization Group'
  @sap.quickinfo : 'Technical object authorization group'
  key TechObjAuthorizationGroup : String(4) not null;
  @sap.label : 'Authorization Group Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TechObjAuthorizationGroup_Text : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Technical Object is Equi or Func Loc'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_TechObjIsEquipOrFuncnlLoc {
  @sap.display.format : 'UpperCase'
  @sap.text : 'TechObjIsEquipOrFuncnlLoc_Text'
  @sap.label : 'Tech. Obj. Type'
  @sap.quickinfo : 'Technical Object Type'
  key TechObjIsEquipOrFuncnlLoc : String(20) not null;
  @sap.label : 'Technical Object Type Description'
  @sap.quickinfo : 'Description of Technical Object Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TechObjIsEquipOrFuncnlLoc_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Unit of Measure'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_UnitOfMeasureStdVH {
  @sap.text : 'UnitOfMeasureLongName'
  @sap.label : 'Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  key UnitOfMeasure : String(3) not null;
  @sap.label : 'Meas. Unit Text'
  @sap.quickinfo : 'Unit of Measurement Text (Maximum 30 Characters)'
  UnitOfMeasureLongName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'UnitOfMeasureDimensionName'
  @sap.label : 'Dimension'
  @sap.quickinfo : 'Dimension key'
  UnitOfMeasureDimension : String(6);
  @sap.label : 'Dimension Text'
  UnitOfMeasureDimensionName : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Work Center By Semantic Key'
@sap.value.list : 'true'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.I_WrkCtrBySemanticKeyStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'WorkCenter_Text'
  @sap.label : 'Work Center'
  key WorkCenter : String(8) not null;
  @sap.label : 'Work Center Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkCenter_Text : String(40);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Object ID'
  @sap.quickinfo : 'Object ID of the resource'
  WorkCenterInternalID : String(8);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__Currencies {
  @sap.label : 'Currency'
  @sap.semantics : 'currency-code'
  key CurrencyCode : String(5) not null;
  @sap.label : 'ISO code'
  ISOCode : String(3) not null;
  @sap.label : 'Short text'
  Text : String(15) not null;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Decimals'
  DecimalPlaces : Integer not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__UnitsOfMeasure {
  @sap.label : 'Internal UoM'
  @sap.semantics : 'unit-of-measure'
  key UnitCode : String(3) not null;
  @sap.label : 'ISO Code'
  ISOCode : String(3) not null;
  @sap.label : 'Commercial'
  ExternalCode : String(3) not null;
  @sap.label : 'Meas. Unit Text'
  Text : String(30) not null;
  @sap.label : 'Decimal Places'
  DecimalPlaces : Integer;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__MyDocumentDescriptions {
  @sap.label : 'UUID'
  key Id : UUID not null;
  CreatedBy : String(12) not null;
  @odata.Type : 'Edm.DateTime'
  @sap.label : 'Time Stamp'
  CreatedAt : DateTime not null;
  FileName : String(256) not null;
  Title : String(256) not null;
  Format : Association to ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__FormatSet {  };
  TableColumns : Association to many ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__TableColumnsSet {  };
  CoverPage : Association to many ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__CoverPageSet {  };
  Signature : Association to ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__SignatureSet {  };
  PDFStandard : Association to ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__PDFStandardSet {  };
  Hierarchy : Association to ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__HierarchySet {  };
  Header : Association to ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__PDFHeaderSet {  };
  Footer : Association to ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__PDFFooterSet {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__FormatSet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  FitToPage : ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__FitToPage not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  FontSize : Integer not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Orientation : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PaperSize : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  BorderSize : Integer not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarginSize : Integer not null;
  @sap.label : 'Font Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  FontName : String(255) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Padding : Integer not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__PDFStandardSet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  UsePDFAConformance : Boolean not null;
  @sap.label : 'Indicator'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DoEnableAccessibility : Boolean not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__TableColumnsSet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Name : String(256) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Header : String(256) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  HorizontalAlignment : String(10) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__CoverPageSet {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Title : String(256) not null;
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Name : String(256) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Value : String(256) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__SignatureSet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  @sap.label : 'Indicator'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DoSign : Boolean not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Reason : String(256) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__HierarchySet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DistanceFromRootElement : String(256) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DrillStateElement : String(256) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__PDFHeaderSet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  Right : ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__HeaderFooterField not null;
  Left : ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__HeaderFooterField not null;
  Center : ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__HeaderFooterField not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__PDFFooterSet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  Right : ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__HeaderFooterField not null;
  Left : ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__HeaderFooterField not null;
  Center : ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__HeaderFooterField not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
entity ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__ValueHelpSet {
  key VALUEHELP : LargeString not null;
  FIELD_VALUE : String(10) not null;
  DESCRIPTION : LargeString;
};

@cds.external : true
type ZEAM_OBJPG_TECHNICALOBJECT_SRV.TechnicalObjectComplexTypeMassEdit {
  @sap.label : 'Message type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Type : String(1) not null;
  @sap.label : 'Message Class'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Id : String(20) not null;
  @sap.label : 'Message Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Number : String(3) not null;
  @sap.label : 'Message Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Message : String(220) not null;
  @sap.label : 'Log number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LogNo : String(20) not null;
  @sap.label : 'Message no.'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LogMsgNo : String(6) not null;
  @sap.label : 'Message Variable'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MessageV1 : String(50) not null;
  @sap.label : 'Message Variable'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MessageV2 : String(50) not null;
  @sap.label : 'Message Variable'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MessageV3 : String(50) not null;
  @sap.label : 'Message Variable'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MessageV4 : String(50) not null;
  @sap.label : 'Parameter Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Parameter : String(32) not null;
  @sap.label : 'Parameter line'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Row : Integer not null;
  @sap.label : 'Field name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Field : String(30) not null;
  @sap.label : 'Logical system'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  System : String(10) not null;
};

@cds.external : true
type ZEAM_OBJPG_TECHNICALOBJECT_SRV.DummyFunctionImportResult {
  @sap.label : 'TRUE'
  IsInvalid : Boolean;
};

@cds.external : true
type ZEAM_OBJPG_TECHNICALOBJECT_SRV.EamTIsavailableMasschange {
  @sap.label : 'TRUE'
  IsAvailable : Boolean;
};

@cds.external : true
type ZEAM_OBJPG_TECHNICALOBJECT_SRV.EamsTBoCloud {
  @sap.label : 'Cloud'
  EamsCloud : Boolean;
};

@cds.external : true
type ZEAM_OBJPG_TECHNICALOBJECT_SRV.EamTBopfTechnobjDismantle {
  @sap.label : 'Superior Function Location Number'
  Functlocation : LargeString;
  @sap.label : 'Superior Equipment Number'
  Equipment : LargeString;
  @sap.label : 'TRUE'
  Simulationmode : Boolean;
  @sap.label : 'Description'
  Jobtext : String(120);
  @sap.label : 'Job Name'
  Jobname : String(32);
  @sap.label : 'Job No.'
  Jobcount : String(8);
  Subordinate : LargeString;
};

@cds.external : true
type ZEAM_OBJPG_TECHNICALOBJECT_SRV.EamTBopfTechnobjInstcnt {
  @odata.Type : 'Edm.Byte'
  Numberofsubobjects : Integer;
};

@cds.external : true
type ZEAM_OBJPG_TECHNICALOBJECT_SRV.EamTBopfTechnobjInstall {
  @sap.label : 'Superior Function Location Number'
  Superiorfunctlocation : LargeString;
  @sap.label : 'Superior Equipment Number'
  Superiorequipment : LargeString;
  @sap.label : 'TRUE'
  Simulationmode : Boolean;
  @sap.label : 'Description'
  Jobtext : String(120);
  @sap.label : 'Job Name'
  Jobname : String(32);
  @sap.label : 'Job No.'
  Jobcount : String(8);
  Subordinate : LargeString;
};

@cds.external : true
type ZEAM_OBJPG_TECHNICALOBJECT_SRV.EamTBopfTechnobjMasschange {
  @sap.label : 'Function Location Number'
  Functlocation : LargeString;
  @sap.label : 'Equipment Number'
  Equipment : LargeString;
  @sap.label : 'Changed Fields'
  Changedfields : LargeString;
  @sap.label : 'TRUE'
  Simulationmode : Boolean;
  @sap.label : 'Description'
  Jobtext : String(120);
  @sap.label : 'Job Name'
  Jobname : String(32);
  @sap.label : 'Job No.'
  Jobcount : String(8);
};

@cds.external : true
type ZEAM_OBJPG_TECHNICALOBJECT_SRV.EamTBopfTechnobjDisplay {
  @sap.label : 'Superior Function Location Number'
  Functlocation : LargeString;
  @sap.label : 'Superior Equipment Number'
  Equipment : LargeString;
  @sap.label : 'Technical Object'
  Technicalobject : String(40);
  @sap.label : 'Tech. Obj. Type'
  Techobjisequiporfuncnlloc : String(20);
  @sap.label : 'Position'
  Installposition : String(4);
  @odata.Type : 'Edm.DateTime'
  @sap.label : 'Equip Inst/Dism Date'
  Installationdate : DateTime;
  @sap.label : 'Eqmt Inst/Dism Time'
  Installationtime : Time;
  Description : LargeString;
  @sap.label : 'Material'
  Material : String(40);
  @sap.label : 'Material Description'
  Materialname : String(40);
  @sap.label : 'Serial Number'
  Serialnumber : String(18);
};

@cds.external : true
type ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__FitToPage {
  @sap.label : 'Error behavior'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ErrorRecoveryBehavior : String(8) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  IsEnabled : Boolean not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MinimumFontSize : Integer not null;
};

@cds.external : true
type ZEAM_OBJPG_TECHNICALOBJECT_SRV.SAP__HeaderFooterField {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Type : String(256) not null;
};

@cds.external : true
function ZEAM_OBJPG_TECHNICALOBJECT_SRV.IsCloudFuncImport() returns ZEAM_OBJPG_TECHNICALOBJECT_SRV.TechnicalObjectTypeSettingSet;

@cds.external : true
action ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_ObjPgTechnicalObjectCheckmasschange() returns ZEAM_OBJPG_TECHNICALOBJECT_SRV.EamTIsavailableMasschange;

@cds.external : true
action ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_ObjPgTechnicalObjectCheck_cloud() returns ZEAM_OBJPG_TECHNICALOBJECT_SRV.EamsTBoCloud;

@cds.external : true
action ZEAM_OBJPG_TECHNICALOBJECT_SRV.A7509D75273B4F4855EDismantletechnicalobj(
  @sap.label : 'Superior Function Location Number'
  Functlocation : LargeString,
  @sap.label : 'Superior Equipment Number'
  Equipment : LargeString,
  @sap.label : 'TRUE'
  Simulationmode : Boolean,
  @sap.label : 'Description'
  Jobtext : String(120),
  @sap.label : 'Job Name'
  Jobname : String(32),
  @sap.label : 'Job No.'
  Jobcount : String(8),
  Subordinate : LargeString
) returns ZEAM_OBJPG_TECHNICALOBJECT_SRV.EamTBopfTechnobjDismantle;

@cds.external : true
action ZEAM_OBJPG_TECHNICALOBJECT_SRV.A7509D75273B4Getnumberofinstalledtechobj(
  @sap.label : 'Superior Function Location Number'
  Functlocation : LargeString,
  @sap.label : 'Superior Equipment Number'
  Equipment : LargeString
) returns ZEAM_OBJPG_TECHNICALOBJECT_SRV.EamTBopfTechnobjInstcnt;

@cds.external : true
action ZEAM_OBJPG_TECHNICALOBJECT_SRV.A7509D75273B4F4855Installtechnicalobject(
  @sap.label : 'Superior Function Location Number'
  Superiorfunctlocation : LargeString,
  @sap.label : 'Superior Equipment Number'
  Superiorequipment : LargeString,
  @sap.label : 'TRUE'
  Simulationmode : Boolean,
  @sap.label : 'Description'
  Jobtext : String(120),
  @sap.label : 'Job Name'
  Jobname : String(32),
  @sap.label : 'Job No.'
  Jobcount : String(8),
  Subordinate : LargeString
) returns ZEAM_OBJPG_TECHNICALOBJECT_SRV.EamTBopfTechnobjInstall;

@cds.external : true
action ZEAM_OBJPG_TECHNICALOBJECT_SRV.C_ObjPgTechnicalObjectMasschange(
  @sap.label : 'Function Location Number'
  Functlocation : LargeString,
  @sap.label : 'Equipment Number'
  Equipment : LargeString,
  @sap.label : 'Changed Fields'
  Changedfields : LargeString,
  @sap.label : 'TRUE'
  Simulationmode : Boolean,
  @sap.label : 'Description'
  Jobtext : String(120),
  @sap.label : 'Job Name'
  Jobname : String(32),
  @sap.label : 'Job No.'
  Jobcount : String(8)
) returns ZEAM_OBJPG_TECHNICALOBJECT_SRV.EamTBopfTechnobjMasschange;

@cds.external : true
action ZEAM_OBJPG_TECHNICALOBJECT_SRV.A7509D75273B4F4Viewinstalledtechnicalobj(
  @sap.label : 'Superior Function Location Number'
  Functlocation : LargeString,
  @sap.label : 'Superior Equipment Number'
  Equipment : LargeString
) returns many ZEAM_OBJPG_TECHNICALOBJECT_SRV.EamTBopfTechnobjDisplay;


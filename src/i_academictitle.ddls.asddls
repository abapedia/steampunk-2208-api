@AbapCatalog.sqlViewName: 'IACADEMICTITLE'
@EndUserText.label: 'Academic Titles'
@VDM.viewType: #BASIC
@AccessControl.authorizationCheck: #NOT_REQUIRED
@AbapCatalog.compiler.compareFilter:true
@AbapCatalog.preserveKey:true
@ObjectModel.representativeKey: 'AcademicTitle'
@ObjectModel.sapObjectNodeType.name: 'AcademicTitle' 
@ClientHandling.algorithm: #SESSION_VARIABLE 
@ObjectModel.usageType.dataClass: #CUSTOMIZING 
@ObjectModel.usageType.serviceQuality: #A 
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]


define view I_AcademicTitle as
    select distinct from tsad2 
association[0..*] to I_AcademicTitleText as _Text
  on $projection.AcademicTitle = _Text.AcademicTitle  
{
  key AcademicTitle,
      AcademicTitleName
}
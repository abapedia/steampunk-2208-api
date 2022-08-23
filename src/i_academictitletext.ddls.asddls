@AbapCatalog.sqlViewName: 'IACADEMICTITLET'
@EndUserText.label: 'Text for Academic Title'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@AbapCatalog.compiler.compareFilter:true
@AbapCatalog.preserveKey:true
@ClientHandling.algorithm: #SESSION_VARIABLE 
@ObjectModel.usageType.dataClass: #CUSTOMIZING 
@ObjectModel.usageType.serviceQuality: #A 
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.dataCategory: #TEXT
@ObjectModel.representativeKey: 'AcademicTitle'
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,#CDS_MODELING_DATA_SOURCE,#CDS_MODELING_ASSOCIATION_TARGET,#LANGUAGE_DEPENDENT_TEXT]
@VDM.viewType: #BASIC
define view I_AcademicTitleText   
as select from tsad2t
 association[0..1] to I_Language as _Language 
  on   langu = _Language.Language
 
{
  key AcademicTitle,
  key Language,
      AcademicTitleName
}
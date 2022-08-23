@AbapCatalog.sqlViewName: 'IBUPAIS'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@AccessControl.personalData.blocking: #BLOCKED_DATA_EXCLUDED
@AccessControl.privilegedAssociations:  [ '_BPDataControllerUsage' ]
@Analytics: {
 dataCategory: #DIMENSION,
 dataExtraction: {
    enabled: true,
    delta.changeDataCapture: {
      mapping:[
                {
                    table: 'BUT0IS', role: #MAIN,
                    viewElement: ['IndustrySector','IndustrySystemType' , 'BusinessPartner'],
                    tableElement: ['ind_sector','istype','partner']
                },
                {
                    table: 'TB038B', role: #LEFT_OUTER_TO_ONE_JOIN,
                    viewElement: ['IndustrySector','IndustrySystemType'],
                    tableElement: ['ind_sector','istype']
                }           
              
                
           ]
   }
 }
}
@ObjectModel.supportedCapabilities: [ #ANALYTICAL_DIMENSION,
                                      #CDS_MODELING_ASSOCIATION_TARGET,
                                      #EXTRACTION_DATA_SOURCE]                                  
@EndUserText.label: 'Core View for BUT0IS'
@VDM.viewType: #BASIC
@ObjectModel.representativeKey:'IndustrySector'
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #XL
@ObjectModel.usageType.dataClass: #MASTER
@ClientHandling.algorithm: #SESSION_VARIABLE

define view I_BusinessPartnerIndustry
  as select from but0is
  
    association [1..1] to I_BusinessPartner as _BusinessPartner    on _BusinessPartner.BusinessPartner  = $projection.BusinessPartner
    association [1..1] to I_Industrykeysystemtexts as _Text on  $projection.IndustrySystemType = _Text.IndustrySystemType
                                                            and $projection.IndustrySector = _Text.IndustrySector
                                                            and _Text.Language = $session.system_language
    association [0..*] to I_BPDataControllerUsage as _BPDataControllerUsage on  $projection.BusinessPartner = _BPDataControllerUsage.BusinessPartner
    association [0..1] to I_BusPartIndustrySystem  as _BusPartIndustrySystem on  $projection.IndustrySystemType = _BusPartIndustrySystem.IndustrySystemType
{
  key IndustrySector,
  key IndustrySystemType,
  key BusinessPartner,
      IsStandardIndustry,
      IndustryKeyDescription
}
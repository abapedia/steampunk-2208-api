@AbapCatalog.sqlViewName: 'IBUPATAXNUMBER'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Analytics: {
 dataCategory: #DIMENSION,
 dataExtraction: {
    enabled: true,
   delta.changeDataCapture: {
       mapping:[
                {
                    table: 'DFKKBPTAXNUM', role: #MAIN,
                    viewElement: ['BusinessPartner','BPTaxType'],
                    tableElement: ['partner','taxtype']
                },
                 {
                    table: 'BUT000', role: #LEFT_OUTER_TO_ONE_JOIN,
                    viewElement: ['BusinessPartner'],
                    tableElement: ['partner']
                }               
                
           ]
   }
 }
}
@ObjectModel.supportedCapabilities: [ #ANALYTICAL_DIMENSION,   
                                      #CDS_MODELING_ASSOCIATION_TARGET,
                                      #EXTRACTION_DATA_SOURCE]
@ClientHandling.algorithm : #SESSION_VARIABLE
@ObjectModel.representativeKey:'BPTaxType'
@VDM.viewType: #BASIC
@AbapCatalog.compiler.compareFilter: true
@EndUserText.label: 'Core view for Tax Number'
@AccessControl.personalData.blocking: #NOT_REQUIRED
@AccessControl.privilegedAssociations:  [ '_BPDataControllerUsage' ]
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MASTER

define view I_Businesspartnertaxnumber
  as select from dfkkbptaxnum as BusinessPartnerTaxNumber

  association [1..1] to I_BusinessPartner    as _BusinessPartner on $projection.BusinessPartner = _BusinessPartner.BusinessPartner
  association [0..*] to I_BusPartTaxTypeText as _TaxCategoryText on $projection.BPTaxType = _TaxCategoryText.BPTaxType
  association [0..*] to I_BPDataControllerUsage as _BPDataControllerUsage on  $projection.BusinessPartner = _BPDataControllerUsage.BusinessPartner
{
  key BusinessPartner,
  key BPTaxType,
      BPTaxNumber,
      BPTaxLongNumber,
      AuthorizationGroup
}
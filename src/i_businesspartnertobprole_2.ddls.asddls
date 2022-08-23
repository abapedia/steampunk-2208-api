@AbapCatalog.sqlViewName: 'IBPTOBPROLE2' //must start with "I"

@AccessControl.authorizationCheck:#CHECK
@AccessControl.personalData.blocking: #REQUIRED
@AccessControl.personalData.blockingIndicator: '_BusinessPartner.IsBusinessPurposeCompleted'
@AccessControl.privilegedAssociations:  [ '_BusinessPartnerDiffValue', '_BPDataControllerUsage']

@Analytics: {
    dataCategory: #DIMENSION,
    dataExtraction: {
        enabled: true,
        delta.changeDataCapture: {
            mapping:[
                
                {
                    table: 'but100', role: #MAIN,
                    viewElement: ['BusinessPartner' ,'BusinessPartnerRole','BusinessPartnerDiffTypeValue'],
                    tableElement: ['partner', 'rltyp' ,'dfval']
                   
                },
               
                {
                    table: 'but000', role: #LEFT_OUTER_TO_ONE_JOIN,
                    viewElement: ['BusinessPartner'],
                    tableElement: ['partner']
                }                              
            ]
        }
    }
 } 
@Analytics.internalName: #LOCAL
@ClientHandling.algorithm: #SESSION_VARIABLE

@EndUserText.label: 'Business Partner assignment to BP Role' //same as DDL description

@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@AbapCatalog.preserveKey: true
@AbapCatalog.compiler.compareFilter: true
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,
                                     #CDS_MODELING_DATA_SOURCE,
                                     #CDS_MODELING_ASSOCIATION_TARGET,
                                     #ANALYTICAL_DIMENSION,
                                     #EXTRACTION_DATA_SOURCE]
@ObjectModel.modelingPattern: #ANALYTICAL_DIMENSION    
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.representativeKey:'BusinessPartnerRole'

@VDM.viewType: #BASIC

define view I_BusinessPartnerToBPRole_2 
  as select from but100

  association [0..1] to I_BusinessPartnerRole as _BusinessPartnerRole on $projection.BusinessPartnerRole = _BusinessPartnerRole.BusinessPartnerRole
  association [0..1] to I_BusinessPartner     as _BusinessPartner     on $projection.BusinessPartner = _BusinessPartner.BusinessPartner
  association [0..1] to I_BPDifferentiationTypeValue as _BusinessPartnerDiffValue on $projection.BusinessPartnerDiffTypeValue = _BusinessPartnerDiffValue.BusinessPartnerDiffTypeValue
  association [0..*] to I_BPDataControllerUsage as _BPDataControllerUsage on  $projection.BusinessPartner = _BPDataControllerUsage.BusinessPartner
  
{
      mandt,
  key BusinessPartner,
  key BusinessPartnerRole,
  key BusinessPartnerDiffTypeValue,
      ValidFrom,
      ValidTo,
      AuthorizationGroup
}
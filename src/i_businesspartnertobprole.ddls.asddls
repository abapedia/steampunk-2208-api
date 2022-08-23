@AbapCatalog.sqlViewName: 'IBPTOBPROLE' //must start with "I"

@AccessControl.authorizationCheck:#CHECK
@AccessControl.personalData.blocking: #REQUIRED
@AccessControl.personalData.blockingIndicator: '_BusinessPartner.IsBusinessPurposeCompleted'
@AccessControl.privilegedAssociations:  [ '_BPDataControllerUsage' ]
@Analytics: {
    dataCategory: #DIMENSION,
    dataExtraction: {
       enabled: true,
       delta.changeDataCapture: {
          automatic : true
       }
    }
}

@ClientHandling.algorithm: #SESSION_VARIABLE 

@EndUserText.label: 'Business Partner assignment to BP Role' //same as DDL description

@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true

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

@VDM.lifecycle.status: #DEPRECATED
@VDM.lifecycle.successor: 'I_BusinessPartnerToBPRole_2' 

define view I_BusinessPartnerToBPRole 
  as select from but100

  association [0..1] to I_BusinessPartnerRole as _BusinessPartnerRole on $projection.BusinessPartnerRole = _BusinessPartnerRole.BusinessPartnerRole
  association [0..1] to I_BusinessPartner     as _BusinessPartner     on $projection.BusinessPartner = _BusinessPartner.BusinessPartner
  association [0..*] to I_BPDataControllerUsage as _BPDataControllerUsage on  $projection.BusinessPartner = _BPDataControllerUsage.BusinessPartner
  
{
      mandt,
  key BusinessPartner,
  key BusinessPartnerRole,
      ValidFrom,
      ValidTo,
      AuthorizationGroup
}
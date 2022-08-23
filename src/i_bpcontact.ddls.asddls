@EndUserText.label: 'Business Partner Contact'
//@Analytics.dataCategory: #DIMENSION //or #CUBE or #FACT
@Analytics: {
 dataCategory: #DIMENSION,
 dataExtraction: {
    enabled: true,
   delta.changeDataCapture: {
      automatic: true
   }
 }
}
@VDM.viewType: #BASIC
@AccessControl.authorizationCheck:  #CHECK //or #CHECK
@AccessControl.personalData.blocking: #BLOCKED_DATA_EXCLUDED
@ObjectModel.supportedCapabilities: [#ANALYTICAL_DIMENSION,#CDS_MODELING_ASSOCIATION_TARGET,#EXTRACTION_DATA_SOURCE]
@AccessControl.privilegedAssociations:  [ '_BPCompanyDataControllerUsage', '_BPPersonDataControllerUsage' ]
@AbapCatalog.sqlViewName: 'IBPCONTACT' //must start with "I"
@ObjectModel.usageType.serviceQuality: #D
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.representativeKey:'RelationshipNumber'
@ClientHandling.algorithm: #SESSION_VARIABLE
@Metadata.allowExtensions: true

define view I_BPContact
  as select from but050
  association [1..1] to I_BusinessPartner        as _BusinessPartnerCompany on  _BusinessPartnerCompany.BusinessPartner = $projection.BusinessPartnerCompany
  association [1..1] to I_BusinessPartner        as _BusinessPartnerPerson  on  _BusinessPartnerPerson.BusinessPartner = $projection.BusinessPartnerPerson
  association [0..*] to I_BpContactToAddress     as _ContactAddress         on  $projection.RelationshipNumber     = _ContactAddress.RelationshipNumber
                                                                            and $projection.BusinessPartnerCompany = _ContactAddress.BusinessPartnerCompany
                                                                            and $projection.BusinessPartnerPerson  = _ContactAddress.BusinessPartnerPerson

  association [0..1] to I_BPContactToFuncAndDept as _ContactRelationship    on  $projection.RelationshipNumber     = _ContactRelationship.RelationshipNumber
                                                                            and $projection.BusinessPartnerCompany = _ContactRelationship.BusinessPartnerCompany
                                                                            and $projection.BusinessPartnerPerson  = _ContactRelationship.BusinessPartnerPerson
                                                                            and $projection.ValidityEndDate        = _ContactRelationship.ValidityEndDate
  association [0..*] to I_BPDataControllerUsage as _BPCompanyDataControllerUsage on $projection.BusinessPartnerCompany = _BPCompanyDataControllerUsage.BusinessPartner
  association [0..*] to I_BPDataControllerUsage as _BPPersonDataControllerUsage on $projection.BusinessPartnerPerson  = _BPPersonDataControllerUsage.BusinessPartner


{
  key RelationshipNumber,
  key BusinessPartnerCompany,
  key BusinessPartnerPerson,
  key ValidityEndDate,
      ValidityStartDate,
      IsStandardRelationship,
      RelationshipCategory
}
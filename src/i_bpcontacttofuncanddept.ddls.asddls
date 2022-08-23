@AbapCatalog.sqlViewName: 'IBPCNTCTFUNCDEPT'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck:  #CHECK //or #CHECK
@AccessControl.personalData.blocking: #REQUIRED
//@Analytics.dataCategory: #DIMENSION //or #CUBE or #FACT
@Analytics: {
 dataCategory: #DIMENSION,
 dataExtraction: {
    enabled: true   
 }
}
@ObjectModel.supportedCapabilities: [ #ANALYTICAL_DIMENSION,
                                      #CDS_MODELING_ASSOCIATION_TARGET,
                                      #EXTRACTION_DATA_SOURCE]     
@AccessControl.privilegedAssociations:  ['_BPCompanyDataControllerUsage','_BPPersonDataControllerUsage']
@VDM.viewType: #BASIC
@ObjectModel.usageType.serviceQuality: #D
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.representativeKey:'RelationshipNumber'
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'BP Contact To Function and Department'
@Metadata.allowExtensions: true

define view I_BPContactToFuncAndDept
  as select from but051

  association [1..1] to I_BusinessPartner          as _BusinessPartnerCompany      on _BusinessPartnerCompany.BusinessPartner = $projection.BusinessPartnerCompany
  association [1..1] to I_BusinessPartner          as _BusinessPartnerPerson       on _BusinessPartnerPerson.BusinessPartner = $projection.BusinessPartnerPerson
  association [1..1] to I_ContactPersondepartment  as _ContactPersonDepartment     on _ContactPersonDepartment.ContactPersonDepartment = $projection.ContactPersonDepartment
  association [1..1] to I_ContactPersonFunction    as _ContactPersonFunction       on _ContactPersonFunction.ContactPersonFunction = $projection.ContactPersonFunction

  association [0..1] to I_ContactPersonFunction    as _CntctPersnFuncValueHelp     on $projection.ContactPersonFunction = _CntctPersnFuncValueHelp.ContactPersonFunction
  association [0..*] to I_ContactPersonFunctionT   as _ContactPersonFunctionText   on $projection.ContactPersonFunction = _ContactPersonFunctionText.ContactPersonFunction
  association [0..1] to I_ContactPersondepartment  as _CntctPersnDeptValueHelp     on $projection.ContactPersonDepartment = _CntctPersnDeptValueHelp.ContactPersonDepartment
  association [1..*] to I_ContactPersonDepartmentT as _ContactPersonDepartmentText on $projection.ContactPersonDepartment = _ContactPersonDepartmentText.ContactPersonDepartment
  association [1..*] to I_BPContactPersonAuthorityText as _BPContactPersonAuthorityText on $projection.ContactPersonAuthorityType = _BPContactPersonAuthorityText.ContactPersonAuthorityType
  association [1..*] to I_BPCntctPersnVIPIndicatorText as _BPCntctPersnVIPIndicatorText on $projection.ContactPersonVIPType = _BPCntctPersnVIPIndicatorText.ContactPersonVIPType
  association [0..*] to I_BPDataControllerUsage as _BPCompanyDataControllerUsage on  $projection.BusinessPartnerCompany = _BPCompanyDataControllerUsage.BusinessPartner
  association [0..*] to I_BPDataControllerUsage as _BPPersonDataControllerUsage  on  $projection.BusinessPartnerPerson  = _BPPersonDataControllerUsage.BusinessPartner
  association [1..1] to I_BPContact             as _BPContact on $projection.RelationshipNumber = _BPContact.RelationshipNumber
                                                              and  $projection.BusinessPartnerCompany = _BPContact .BusinessPartnerCompany
                                                              and $projection.BusinessPartnerPerson  = _BPContact.BusinessPartnerPerson
                                                              and $projection.ValidityEndDate        = _BPContact.ValidityEndDate 
{
  key RelationshipNumber,
  key BusinessPartnerCompany,
  key BusinessPartnerPerson,
  key ValidityEndDate,
      ValidityStartDate,
      ContactPersonFunction,
      ContactPersonFunctionName,
      ContactPersonDepartment,
      ContactPersonDepartmentName,
      ContactPersonAuthorityType,
      ContactPersonVIPType,
      ContactPersonRemarkText,
      PhoneNumber,
      PhoneNumberExtension,
      FaxNumber,
      FaxNumberExtension,
      EmailAddress,
      RelationshipCategory
}
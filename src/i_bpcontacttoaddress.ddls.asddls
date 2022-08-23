@AbapCatalog.sqlViewName: 'IBPCNTCTADDRESS'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck:  #CHECK //or #CHECK
@AccessControl.personalData.blocking: #REQUIRED
@AccessControl.privilegedAssociations:  [ '_BPCompanyDataControllerUsage', '_BPPersonDataControllerUsage' ]
@VDM.viewType: #BASIC
@ObjectModel.usageType.serviceQuality: #D
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.representativeKey:'RelationshipNumber'
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Business Partner Contact To Address'

define view I_BpContactToAddress
  as select from but052
    inner join   but000 on but052.partner2 = but000.partner

  association [1..1] to I_BusinessPartner    as _BusinessPartnerCompany on  $projection.BusinessPartnerCompany = _BusinessPartnerCompany.BusinessPartner

  association [1..1] to I_BusinessPartner    as _BusinessPartnerPerson  on  $projection.BusinessPartnerPerson = _BusinessPartnerPerson.BusinessPartner

  association [1..*] to adcp as _AddressDetails on  $projection.AddressID = _AddressDetails.addrnumber
                                                and $projection.PersonNumber = _AddressDetails.persnumber
                                                
  association [1..*] to adrp as _PersonDetails on $projection.PersonNumber = _PersonDetails.persnumber                                              
                                                                        
  association [1] to I_BusinessPartnerAddress as _BPCompanyPostalAddress on $projection.AddressID = _BPCompanyPostalAddress.AddressNumber
                                                                        and $projection.BusinessPartnerCompany = _BPCompanyPostalAddress.BusinessPartner

  association [0..1] to I_AddressPhoneNumber as _Telephone              on  $projection.AddressID      = _Telephone.AddressID
                                                                        and $projection.PersonNumber   = _Telephone.Person
                                                                        and _Telephone.PhoneNumberType = '1'

  association [0..1] to I_AddressPhoneNumber as _MobilePhone            on  $projection.AddressID        = _MobilePhone.AddressID
                                                                        and $projection.PersonNumber     = _MobilePhone.Person
                                                                        and _MobilePhone.PhoneNumberType = '3'

  association [0..1] to I_AddressFaxNumber   as _FaxNumber              on  $projection.AddressID         = _FaxNumber.AddressID
                                                                        and $projection.PersonNumber      = _FaxNumber.Person
                                                                        and _FaxNumber.IsDefaultFaxNumber = 'X'
  association [0..*] to I_BPDataControllerUsage as _BPCompanyDataControllerUsage on $projection.BusinessPartnerCompany = _BPCompanyDataControllerUsage.BusinessPartner
  association [0..*] to I_BPDataControllerUsage as _BPPersonDataControllerUsage on $projection.BusinessPartnerPerson  = _BPPersonDataControllerUsage.BusinessPartner

{
  key RelationshipNumber,
  key BusinessPartnerCompany,
  key BusinessPartnerPerson,
  key ValidityEndDate,
  key AddressID,
      PersonNumber,
      IsDefaultAddress,
      AddressRepresentationCode,
      ContactRelationshipFunction,
      ContactRelationshipDepartment,
      Floor,
      Building,
      RoomNumber,
      PrfrdCommMediumType,
      CorrespondenceShortName,
      InhouseMail,
      InternationalPhoneNumber,
      PhoneNumberCountry,
      PhoneNumber,
      InternationalMobilePhoneNumber,
      MobilePhoneCountry,
      MobilePhoneNumber,
      MobilePhoneNumberExtension,
      InternationalFaxNumber,
      FaxCountry,
      AuthorizationGroup,
      IsBusinessPurposeCompleted
}
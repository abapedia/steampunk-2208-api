@AbapCatalog.sqlViewName: 'IWORKPLACEADDR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@Analytics : {
          dataCategory: #FACT,
          dataExtraction: {
           enabled: true }
           }           
@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@AccessControl.privilegedAssociations: ['_OrganizationAddress', '_EmailAddress', '_CurrentDfltEmailAddress', '_PhoneNumber', '_CurrentDfltLandlinePhoneNmbr', '_CurrentDfltMobilePhoneNumber', '_FaxNumber', '_CurrentDfltFaxNumber', '_UniformResourceIdentifier', '_MainWebsiteURL']
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Corporate Workplace Address of a Person'
//@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
//@ObjectModel.representativeKey: 'AddressID'
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE,
                                     #EXTRACTION_DATA_SOURCE ]
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MIXED
@VDM: {
  viewType: #COMPOSITE,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}

define view I_PersonWorkplaceAddress
  as select from I_AddressWorkplaceDetails

  association [1]    to I_OrganizationAddress          as _OrganizationAddress          on  _OrganizationAddress.AddressID                 = $projection.AddressID
                                                                                        and _OrganizationAddress.AddressRepresentationCode = $projection.AddressRepresentationCode
                                                                                        and _OrganizationAddress.AddressPersonID           = ''

  association [1]    to I_AddressPersonName            as _PersonName                   on  _PersonName.AddressPersonID           = $projection.AddressPersonID
                                                                                        and _PersonName.AddressRepresentationCode = $projection.AddressRepresentationCode

  association [0..*] to I_AddressEmailAddress_2        as _EmailAddress                 on  _EmailAddress.AddressID       = $projection.AddressID
                                                                                        and _EmailAddress.AddressPersonID = $projection.AddressPersonID

  association [0..1] to I_AddrCurDefaultEmailAddress   as _CurrentDfltEmailAddress      on  _CurrentDfltEmailAddress.AddressID       = $projection.AddressID
                                                                                        and _CurrentDfltEmailAddress.AddressPersonID = $projection.AddressPersonID

  association [0..*] to I_AddressPhoneNumber_2         as _PhoneNumber                  on  _PhoneNumber.AddressID       = $projection.AddressID
                                                                                        and _PhoneNumber.AddressPersonID = $projection.AddressPersonID

  association [0..1] to I_AddrCurDfltLandlinePhoneNmbr as _CurrentDfltLandlinePhoneNmbr on  _CurrentDfltLandlinePhoneNmbr.AddressID       = $projection.AddressID
                                                                                        and _CurrentDfltLandlinePhoneNmbr.AddressPersonID = $projection.AddressPersonID

  association [0..1] to I_AddrCurDfltMobilePhoneNumber as _CurrentDfltMobilePhoneNumber on  _CurrentDfltMobilePhoneNumber.AddressID       = $projection.AddressID
                                                                                        and _CurrentDfltMobilePhoneNumber.AddressPersonID = $projection.AddressPersonID

  association [0..*] to I_AddressFaxNumber_2           as _FaxNumber                    on  _FaxNumber.AddressID       = $projection.AddressID
                                                                                        and _FaxNumber.AddressPersonID = $projection.AddressPersonID

  association [0..1] to I_AddrCurDefaultFaxNumber      as _CurrentDfltFaxNumber         on  _CurrentDfltFaxNumber.AddressID       = $projection.AddressID
                                                                                        and _CurrentDfltFaxNumber.AddressPersonID = $projection.AddressPersonID

  association [0..*] to I_AddressURI                   as _UniformResourceIdentifier    on  _UniformResourceIdentifier.AddressID       = $projection.AddressID
                                                                                        and _UniformResourceIdentifier.AddressPersonID = $projection.AddressPersonID

  association [0..1] to I_AddressMainWebsiteURL        as _MainWebsiteURL               on  _MainWebsiteURL.AddressID       = $projection.AddressID
                                                                                        and _MainWebsiteURL.AddressPersonID = $projection.AddressPersonID

  association [0..1] to I_NameSupplement               as _NameSupplement               on  $projection.personnamesupplementcode = _NameSupplement.PersonNameSupplementCode

  association [0..1] to I_FamilyNamePrefix             as _FamilyNamePrefix             on  $projection.familynameprefix = _FamilyNamePrefix.FamilyNamePrefix

  association [0..1] to I_FamilyNamePrefix             as _FamilyNameSecondPrefix       on  $projection.familynamesecondprefix = _FamilyNameSecondPrefix.FamilyNamePrefix

  association [0..1] to I_AcademicTitle                as _AcademicTitle                on  $projection.academictitle = _AcademicTitle.AcademicTitle

  association [0..1] to I_AcademicTitle                as _AcademicTitle2               on  $projection.academictitle2 = _AcademicTitle2.AcademicTitle


{
  key AddressID,
  key AddressPersonID,
  key AddressRepresentationCode,
      CorrespondenceLanguage,
      GivenName,
      FamilyName,
      PersonBirthName,
      PersonMiddleName,
      SecondFamilyName,
      AcademicTitle,
      AcademicTitle2,
      FamilyNamePrefix,
      FamilyNameSecondPrefix,
      PersonNameSupplementCode,
      PersonNickname,
      NameInitials,
      PersonFullName,
      FormOfAddress,
      WorkplaceBuilding,
      WorkplaceFloor,
      WorkplaceRoomNumber,
      WorkplaceFunctionalTitleName,
      WorkplaceDepartmentName,
      WorkplacePrfrdCommMediumType,
      WorkplaceCorrespncShortName,
      WorkplaceInhouseMail
}
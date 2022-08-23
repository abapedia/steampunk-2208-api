@AbapCatalog.sqlViewName: 'IPERSONADDRESS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@Analytics : {
          dataCategory: #DIMENSION,
          dataExtraction: {
           enabled: true }
           } 
@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@AccessControl.privilegedAssociations: ['_EmailAddress', '_CurrentDfltEmailAddress', '_PhoneNumber', '_CurrentDfltLandlinePhoneNmbr', '_CurrentDfltMobilePhoneNumber', '_FaxNumber', '_CurrentDfltFaxNumber', '_UniformResourceIdentifier', '_MainWebsiteURL']
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Address of a Person'
//@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE,
                                     #EXTRACTION_DATA_SOURCE ]
@ObjectModel.representativeKey: 'AddressID'
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MIXED
@VDM: {
  viewType: #COMPOSITE,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}

define view I_PersonAddress
  as select from I_AddressWorkplaceDetails

  association [0..1] to I_AddrOrgNamePostalAddress     as _OrgNamePostalAddress          on  _OrgNamePostalAddress.AddressID                 = $projection.AddressID
                                                                                         and _OrgNamePostalAddress.AddressRepresentationCode = $projection.AddressRepresentationCode
                                                                                         and _OrgNamePostalAddress.AddressIsPersonAddress    = 'X'

  association [0..1] to I_AddressPersonName            as _PersonName                    on  _PersonName.AddressPersonID           = $projection.AddressPersonID
                                                                                         and _PersonName.AddressRepresentationCode = $projection.AddressRepresentationCode

  association [0..*] to I_AddressEmailAddress_2        as _EmailAddress                  on  _EmailAddress.AddressID       = $projection.AddressID
                                                                                         and _EmailAddress.AddressPersonID = $projection.AddressPersonID

  association [0..1] to I_AddrCurDefaultEmailAddress   as _CurrentDfltEmailAddress       on  _CurrentDfltEmailAddress.AddressID       = $projection.AddressID
                                                                                         and _CurrentDfltEmailAddress.AddressPersonID = $projection.AddressPersonID

  association [0..*] to I_AddressPhoneNumber_2         as _PhoneNumber                   on  _PhoneNumber.AddressID       = $projection.AddressID
                                                                                         and _PhoneNumber.AddressPersonID = $projection.AddressPersonID

  association [0..1] to I_AddrCurDfltLandlinePhoneNmbr as _CurrentDfltLandlinePhoneNmbr  on  _CurrentDfltLandlinePhoneNmbr.AddressID       = $projection.AddressID
                                                                                         and _CurrentDfltLandlinePhoneNmbr.AddressPersonID = $projection.AddressPersonID


  association [0..1] to I_AddrCurDfltMobilePhoneNumber as _CurrentDfltMobilePhoneNumber  on  _CurrentDfltMobilePhoneNumber.AddressID       = $projection.AddressID
                                                                                         and _CurrentDfltMobilePhoneNumber.AddressPersonID = $projection.AddressPersonID


  association [0..*] to I_AddressFaxNumber_2           as _FaxNumber                     on  _FaxNumber.AddressID       = $projection.AddressID
                                                                                         and _FaxNumber.AddressPersonID = $projection.AddressPersonID

  association [0..1] to I_AddrCurDefaultFaxNumber      as _CurrentDfltFaxNumber          on  _CurrentDfltFaxNumber.AddressID       = $projection.AddressID
                                                                                         and _CurrentDfltFaxNumber.AddressPersonID = $projection.AddressPersonID

  association [0..*] to I_AddressURI                   as _UniformResourceIdentifier     on  _UniformResourceIdentifier.AddressID       = $projection.AddressID
                                                                                         and _UniformResourceIdentifier.AddressPersonID = $projection.AddressPersonID

  association [0..1] to I_AddressMainWebsiteURL        as _MainWebsiteURL                on  _MainWebsiteURL.AddressID       = $projection.AddressID
                                                                                         and _MainWebsiteURL.AddressPersonID = $projection.AddressPersonID

  association [0..1] to I_Region                       as _Region                        on  $projection.region  = _Region.Region
                                                                                         and $projection.country = _Region.Country

  association [0..1] to I_Country                      as _Country                       on  $projection.country = _Country.Country

  association [0..1] to I_FormOfAddress                as _FormOfAddress                 on  $projection.formofaddress = _FormOfAddress.FormOfAddress

  association [0..1] to I_AddressNonDeliverableReason  as _POBoxAddrNonDeliverableReason on  $projection.poboxaddrnondeliverablereason = _POBoxAddrNonDeliverableReason.AddressNonDeliverableReason

  association [0..1] to I_AddressNonDeliverableReason  as _StreetAddrNonDeliverableRsn   on  $projection.streetaddrnondeliverablereason = _StreetAddrNonDeliverableRsn.AddressNonDeliverableReason

  association [0..1] to I_TransportationZone           as _TransportationZone            on  $projection.transportzone = _TransportationZone.TransportZone
                                                                                         and $projection.country       = _TransportationZone.CountryCode

  association [0..1] to I_Region                       as _POBoxDeviatingRegion          on  $projection.poboxdeviatingregion  = _POBoxDeviatingRegion.Region
                                                                                         and $projection.poboxdeviatingcountry = _POBoxDeviatingRegion.Country

  association [0..1] to I_Country                      as _POBoxDeviatingCountry         on  $projection.poboxdeviatingcountry = _POBoxDeviatingCountry.Country

  association [0..1] to I_AddressCommunicationMethod   as _PrfrdCommMediumType           on  $projection.prfrdcommmediumtype = _PrfrdCommMediumType.CommunicationMediumType

  association [0..1] to I_AddressDeliveryServiceType   as _DeliveryServiceTypeCode       on  $projection.deliveryservicetypecode = _DeliveryServiceTypeCode.DeliveryServiceTypeCode

  association [0..1] to I_Language                     as _CorrespondenceLanguage        on  $projection.correspondencelanguage = _CorrespondenceLanguage.Language

  association [0..1] to I_AddressObjectType            as _AddressObjectType             on  $projection.AddressObjectType = _AddressObjectType.AddressObjectType

  association [0..1] to I_AddressRepresentation        as _AddressRepresentationCode     on  $projection.AddressRepresentationCode = _AddressRepresentationCode.AddressRepresentationCode

  association [0..1] to I_SecondaryRegion              as _SecondaryRegion               on  $projection.secondaryregion = _SecondaryRegion.SecondaryRegion
                                                                                         and $projection.country         = _SecondaryRegion.Country
                                                                                         and $projection.region          = _SecondaryRegion.Region

  association [0..1] to I_TertiaryRegion               as _TertiaryRegion                on  $projection.tertiaryregion  = _TertiaryRegion.TertiaryRegion
                                                                                         and $projection.secondaryregion = _TertiaryRegion.SecondaryRegion
                                                                                         and $projection.country         = _TertiaryRegion.Country
                                                                                         and $projection.region          = _TertiaryRegion.Region

  association [0..1] to I_PostalCity                   as _PostalCity                    on  $projection.citynumber = _PostalCity.CityNumber
                                                                                         and $projection.country    = _PostalCity.Country

  association [0..1] to I_TimeZone                     as _TimeZone                      on  $projection.addresstimezone = _TimeZone.TimeZoneID


  association [0..1] to I_NameSupplement               as _NameSupplement                on  $projection.personnamesupplementcode = _NameSupplement.PersonNameSupplementCode

  association [0..1] to I_FamilyNamePrefix             as _FamilyNamePrefix              on  $projection.familynameprefix = _FamilyNamePrefix.FamilyNamePrefix

  association [0..1] to I_FamilyNamePrefix             as _FamilyNameSecondPrefix        on  $projection.familynamesecondprefix = _FamilyNameSecondPrefix.FamilyNamePrefix

  association [0..1] to I_RegionalStructureCheckStatus as _RegionalStructureCheckStatus  on  $projection.regionalstructurecheckstatus = _RegionalStructureCheckStatus.RegionalStructureCheckStatus

  association [0..1] to I_AcademicTitle                as _AcademicTitle                 on  $projection.academictitle = _AcademicTitle.AcademicTitle

  association [0..1] to I_AcademicTitle                as _AcademicTitle2                on  $projection.academictitle2 = _AcademicTitle2.AcademicTitle

  association [0..1] to I_Street                       as _Street                        on  $projection.country = _Street.Country
                                                                                         and $projection.street  = _Street.Street
                                                                                         
  association [0..1] to I_AddressGroup                 as _AddressGroup                  on  $projection.addressgroup = _AddressGroup.AddressGroup   
  association [0..1] to I_AddressPersonName            as _AddressPersonName             on  $projection.AddressPersonID = _AddressPersonName.AddressPersonID
                                                                                         and $projection.AddressRepresentationCode = _AddressPersonName.AddressRepresentationCode                                                                                                                                                                  
{
  key AddressID,
  key AddressPersonID,
  key AddressRepresentationCode,
      AddressObjectType,
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
      AddressPersonSearchTerm1,
      AddressPersonSearchTerm2,
      PrfrdCommMediumType,
      CityNumber,
      CityName,
      DistrictName,
      VillageName,
      PostalCode,
      CompanyPostalCode,
      Street,
      StreetName,
      StreetAddrNonDeliverableReason,
      StreetPrefixName1,
      StreetPrefixName2,
      StreetSuffixName1,
      StreetSuffixName2,
      HouseNumber,
      HouseNumberSupplementText,
      Building,
      Floor,
      RoomNumber,
      Country,
      Region,
      TaxJurisdiction,
      TransportZone,
      POBox,
      POBoxAddrNonDeliverableReason,
      POBoxIsWithoutNumber,
      POBoxPostalCode,
      POBoxLobbyName,
      POBoxDeviatingCityName,
      POBoxDeviatingRegion,
      POBoxDeviatingCountry,
      CareOfName,
      DeliveryServiceTypeCode,
      DeliveryServiceNumber,
      AddressTimeZone,
      SecondaryRegion,
      SecondaryRegionName,
      TertiaryRegion,
      TertiaryRegionName,
      RegionalStructureCheckStatus,
      AddressGroup
}
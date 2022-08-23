@AbapCatalog.sqlViewName: 'IORGADDRESS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@Analytics : {
          dataCategory: #DIMENSION,
          dataExtraction: {
           enabled: true }
           }
@AccessControl.privilegedAssociations: ['_EmailAddress', '_CurrentDfltEmailAddress', '_PhoneNumber', '_CurrentDfltLandlinePhoneNmbr', '_CurrentDfltMobilePhoneNumber', '_FaxNumber', '_CurrentDfltFaxNumber', '_UniformResourceIdentifier', '_MainWebsiteURL']
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Address of an Organization'
//@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE,
                                     #EXTRACTION_DATA_SOURCE]
@ObjectModel.representativeKey: 'AddressID'
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MIXED
@VDM: {
  viewType: #BASIC,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}

define view I_OrganizationAddress
  as select from I_AddrOrgNamePostalAddress
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

  association [0..1] to I_Region                       as _Region                        on  $projection.Region  = _Region.Region
                                                                                         and $projection.Country = _Region.Country

  association [0..1] to I_Country                      as _Country                       on  $projection.Country = _Country.Country

  association [0..1] to I_FormOfAddress                as _FormOfAddress                 on  $projection.FormOfAddress = _FormOfAddress.FormOfAddress

  association [0..1] to I_AddressNonDeliverableReason  as _POBoxAddrNonDeliverableReason on  $projection.POBoxAddrNonDeliverableReason = _POBoxAddrNonDeliverableReason.AddressNonDeliverableReason

  association [0..1] to I_AddressNonDeliverableReason  as _StreetAddrNonDeliverableRsn   on  $projection.StreetAddrNonDeliverableReason = _StreetAddrNonDeliverableRsn.AddressNonDeliverableReason

  association [0..1] to I_TransportationZone           as _TransportationZone            on  $projection.TransportZone = _TransportationZone.TransportZone
                                                                                         and $projection.Country       = _TransportationZone.CountryCode

  association [0..1] to I_Region                       as _POBoxDeviatingRegion          on  $projection.POBoxDeviatingRegion  = _POBoxDeviatingRegion.Region
                                                                                         and $projection.POBoxDeviatingCountry = _POBoxDeviatingRegion.Country

  association [0..1] to I_Country                      as _POBoxDeviatingCountry         on  $projection.POBoxDeviatingCountry = _POBoxDeviatingCountry.Country

  association [0..1] to I_AddressCommunicationMethod   as _PrfrdCommMediumType           on  $projection.PrfrdCommMediumType = _PrfrdCommMediumType.CommunicationMediumType

  association [0..1] to I_AddressDeliveryServiceType   as _DeliveryServiceTypeCode       on  $projection.DeliveryServiceTypeCode = _DeliveryServiceTypeCode.DeliveryServiceTypeCode

  association [0..1] to I_Language                     as _CorrespondenceLanguage        on  $projection.CorrespondenceLanguage = _CorrespondenceLanguage.Language

  association [0..1] to I_AddressRepresentation        as _AddressRepresentationCode     on  $projection.AddressRepresentationCode = _AddressRepresentationCode.AddressRepresentationCode

  association [0..1] to I_AddressObjectType            as _AddressObjectType             on  $projection.AddressObjectType = _AddressObjectType.AddressObjectType

  association [0..1] to I_TimeZone                     as _TimeZone                      on  $projection.AddressTimeZone = _TimeZone.TimeZoneID

  association [0..1] to I_SecondaryRegion              as _SecondaryRegion               on  $projection.SecondaryRegion = _SecondaryRegion.SecondaryRegion
                                                                                         and $projection.Country         = _SecondaryRegion.Country
                                                                                         and $projection.Region          = _SecondaryRegion.Region

  association [0..1] to I_TertiaryRegion               as _TertiaryRegion                on  $projection.TertiaryRegion  = _TertiaryRegion.TertiaryRegion
                                                                                         and $projection.SecondaryRegion = _TertiaryRegion.SecondaryRegion
                                                                                         and $projection.Country         = _TertiaryRegion.Country
                                                                                         and $projection.Region          = _TertiaryRegion.Region

  association [0..1] to I_PostalCity                   as _PostalCity                    on  $projection.CityNumber = _PostalCity.CityNumber
                                                                                         and $projection.Country    = _PostalCity.Country

  association [0..1] to I_RegionalStructureCheckStatus as _RegionalStructureCheckStatus  on  $projection.RegionalStructureCheckStatus = _RegionalStructureCheckStatus.RegionalStructureCheckStatus

  association [0..1] to I_Street                       as _Street                        on  $projection.Country = _Street.Country
                                                                                         and $projection.Street  = _Street.Street
 
  association [0..1] to I_AddressGroup                 as _AddressGroup                  on  $projection.AddressGroup = _AddressGroup.AddressGroup  
  
  association [0..1] to I_AddressPersonName            as _AddressPersonName             on  $projection.AddressPersonID = _AddressPersonName.AddressPersonID
                                                                                         and $projection.AddressRepresentationCode = _AddressPersonName.AddressRepresentationCode                                                                                      
{
  key AddressID,
  key AddressPersonID,
  key AddressRepresentationCode,
      AddressObjectType,
      CorrespondenceLanguage,
      PrfrdCommMediumType,
      AddresseeFullName,
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
      FormOfAddress,
      AddresseeName1,
      AddresseeName2,
      AddresseeName3,
      AddresseeName4,
      AddressSearchTerm1,
      AddressSearchTerm2,
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
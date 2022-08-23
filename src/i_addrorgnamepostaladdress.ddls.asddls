@AbapCatalog.sqlViewName: 'IADDRPOSTALADDR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Postal Address and Organization Name'
//@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MIXED
//@ObjectModel.representativeKey: 'AddressID'
@VDM: {
  viewType: #BASIC,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}

define view I_AddrOrgNamePostalAddress
  as select from adrc
  association [0..1] to I_Region             as _Region             on  $projection.Region  = _Region.Region
                                                                    and $projection.Country = _Region.Country

  association [0..1] to I_Country            as _Country            on  $projection.Country = _Country.Country

  association [0..1] to I_FormOfAddress      as _FormOfAddress      on  $projection.FormOfAddress = _FormOfAddress.FormOfAddress

  association [0..1] to I_TransportationZone as _TransportationZone on  $projection.TransportZone = _TransportationZone.TransportZone
                                                                    and $projection.Country       = _TransportationZone.CountryCode

{
  key AddressID,
  key AddressRepresentationCode,
      AddressIsPersonAddress,
      CorrespondenceLanguage,
      PrfrdCommMediumType,
      CityNumber,
      CityName,
      DistrictName,
      VillageName,
      PostalCode,
      CompanyPostalCode,
      POBox,
      POBoxAddrNonDeliverableReason,
      POBoxIsWithoutNumber,
      POBoxPostalCode,
      POBoxLobbyName,
      POBoxDeviatingCityName,
      POBoxDeviatingRegion,
      POBoxDeviatingCountry,
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
      CareOfName,
      FormOfAddress,
      AddresseeName1,
      AddresseeName2,
      AddresseeName3,
      AddresseeName4,
      TaxJurisdiction,
      TransportZone,
      DeliveryServiceTypeCode,
      DeliveryServiceNumber,
      AddressTimeZone,
      SecondaryRegion,
      SecondaryRegionName,
      TertiaryRegion,
      TertiaryRegionName,
      AddressSearchTerm1,
      AddressSearchTerm2,
      RegionalStructureCheckStatus,
      AddressGroup
}
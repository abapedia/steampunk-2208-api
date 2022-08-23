@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Bank'
@VDM.viewType: #BASIC
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #B,
  sizeCategory: #L,
  dataClass: #MASTER
}
@Metadata.allowExtensions:true
@Search.searchable: true
@ObjectModel.supportedCapabilities: [#CDS_MODELING_DATA_SOURCE, #EXTRACTION_DATA_SOURCE]
@ObjectModel.representativeKey: 'BankInternalID'
//@ObjectModel.sapObjectNodeType.name: 'Bank'
@Analytics: {dataCategory: #DIMENSION, dataExtraction.enabled: true}


define view entity I_Bank_2
  as select from    bnka   as bk
    left outer join bnkain as ad on  bk.banks = ad.banks
                                 and bk.bankl = ad.bankl
  association [0..1] to I_Address             as _Address     on  $projection.AddressID = _Address.AddressID
  association [0..*] to I_OrganizationAddress as _BankAddress on  $projection.AddressID = _BankAddress.AddressID
  association [0..1] to I_Region              as _Region      on  $projection.Region      = _Region.Region
                                                              and $projection.BankCountry = _Region.Country
  association [0..1] to I_Country             as _Country     on  $projection.BankCountry = _Country.Country

{
  key BankCountry,
  key BankInternalID,
      CreationDate,
      CreatedByUser,
      BankName,
      Region,
      StreetName,
      ShortStreetName,
      CityName,
      ShortCityName,
      SWIFTCode,
      BankNetworkGrouping,
      IsPostBankAccount,
      IsMarkedForDeletion,
      Bank,
      PostOfficeBankAccount,
      Branch,
      BankBranch,
      CheckDigitCalculationMethod,
      BankDataFileFormat,
      AddressID,
      BankCategory
}
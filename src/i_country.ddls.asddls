@EndUserText.label: 'Country/Region'
@Analytics: { dataCategory: #DIMENSION, dataExtraction.enabled: true }
@VDM.viewType: #BASIC
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@AccessControl.authorizationCheck: #NOT_REQUIRED   // #CHECK
@AbapCatalog.sqlViewName: 'IFICOUNTRY'
@AbapCatalog.preserveKey:true
@AbapCatalog.compiler.compareFilter:true
@ObjectModel.representativeKey: 'Country'
@ObjectModel.sapObjectNodeType.name: 'Country'
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.dataClass:  #MASTER
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.compositionRoot:true
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,
                                     #CDS_MODELING_DATA_SOURCE,
                                     #CDS_MODELING_ASSOCIATION_TARGET]
@Search.searchable: true
@ClientHandling.algorithm: #SESSION_VARIABLE
@AbapCatalog.buffering.status: #ACTIVE
@AbapCatalog.buffering.type: #FULL
@AbapCatalog.buffering.numberOfKeyFields: 1
@Metadata.ignorePropagatedAnnotations: true
 
define view I_Country
  as select from t005
  association [0..*] to I_CountryText as _Text on $projection.Country = _Text.Country
{
  key Country,
      CountryThreeLetterISOCode,
      CountryThreeDigitISOCode,
      CountryISOCode,
      IsEuropeanUnionMember
}
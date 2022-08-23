@AbapCatalog.sqlViewName: 'IFORMOFADDRTEXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey:true
@ClientHandling.algorithm : #SESSION_VARIABLE
@EndUserText.label: 'Form Of Address - Text'
@Analytics.dataExtraction.enabled : true
@ObjectModel.dataCategory: #TEXT
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'FormOfAddress'
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,
                                     #CDS_MODELING_DATA_SOURCE,
                                     #CDS_MODELING_ASSOCIATION_TARGET,
                                     #LANGUAGE_DEPENDENT_TEXT]
@Metadata.ignorePropagatedAnnotations:true

define view I_FormOfAddressText
  as select from tsad3t
  association [0..1] to I_Language      as _Language      on $projection.Language = _Language.Language
  association [0..1] to I_FormOfAddress as _FormOfAddress on $projection.FormOfAddress = _FormOfAddress.FormOfAddress
{
  key Language,
  key FormOfAddress,
      FormOfAddressName
}
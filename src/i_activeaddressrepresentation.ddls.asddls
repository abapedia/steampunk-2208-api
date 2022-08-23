@AbapCatalog.sqlViewName: 'IACTADDRSCRPT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.serviceQuality: #X
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.resultSet.sizeCategory: #XS
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Representation of names of language scripts'
define view I_ActiveAddressRepresentation
  as select from I_AddressRepresentation as AddressRepresentation
  association [1..1] to tsadvc                      as _ActiveAddressRepresentation on $projection.AddressRepresentationCode = _ActiveAddressRepresentation.nation
  association [0..1] to tsadvc_clidep               as _ClientDependentAddrRep      on $projection.AddressRepresentationCode = _ClientDependentAddrRep.nation
  association [0..*] to I_AddressRepresentationText as _Text                        on $projection.AddressRepresentationCode = _Text.AddressRepresentationCode
{
  key AddressRepresentationCode
}
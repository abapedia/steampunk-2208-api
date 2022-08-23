@AbapCatalog.sqlViewName: 'IADCOMMMETHOD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Communication Method'
@ObjectModel.representativeKey: 'CommunicationMediumType'
@ObjectModel.sapObjectNodeType.name: 'CommunicationMediumType'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@VDM.viewType: #BASIC
define view I_AddressCommunicationMethod 
  as select from tsac 
  association [0..*] to I_AddrCommunicationMethodText as _Text on $projection.CommunicationMediumType = _Text.CommunicationMediumType {
  key CommunicationMediumType
}
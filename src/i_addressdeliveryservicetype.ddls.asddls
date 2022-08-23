@AbapCatalog.sqlViewName: 'IADDELIVSRVCTYPE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Delivery Service Types'
@ObjectModel.representativeKey: 'DeliveryServiceTypeCode'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@VDM.viewType: #BASIC
define view I_AddressDeliveryServiceType
  as select from addrc_deli_serv
  association [0..*] to I_AddrDeliveryServiceTypeText as _Text on $projection.DeliveryServiceTypeCode = _Text.DeliveryServiceTypeCode {
  key DeliveryServiceTypeCode,
      DeliveryServiceTypeName
}
@AbapCatalog.sqlViewName: 'IBPPROTADDR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@VDM.viewType: #COMPOSITE
@EndUserText.label: 'Business Partner Protected Addresses'
@ObjectModel.usageType.serviceQuality: #B
@ObjectModel.usageType.sizeCategory: #XL
@ObjectModel.usageType.dataClass: #MASTER
@ClientHandling.algorithm: #SESSION_VARIABLE
@AccessControl.personalData.blocking: #REQUIRED

define view I_BPProtectedAddress
  as select from P_BPProtectedAddrUsageCount  
  association [1] to I_BusinessPartner as _BusinessPartner on $projection.BusinessPartner = _BusinessPartner.BusinessPartner
{
  key BusinessPartner,
  key AddressID,
      BPAddressIsProtected
}
@AbapCatalog.sqlViewName: 'IBPTAXNUMBERADDR'
@AccessControl.authorizationCheck: #CHECK
@ClientHandling.algorithm : #SESSION_VARIABLE
@VDM.viewType: #BASIC
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey:true
@EndUserText.label: 'BP Address Dependent Tax Numbers'
@AccessControl.personalData.blocking: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.supportedCapabilities: #CDS_MODELING_DATA_SOURCE


define view I_BusPartAddrDepdntTaxNmbr 
  as select from dfkkbptaxnum_adr as BusinessPartnerTaxNumberAdr
  association [1..1] to I_BusinessPartner    as _BusinessPartner on $projection.BusinessPartner = _BusinessPartner.BusinessPartner
  association [1..1] to I_BusinessPartnerAddress as _BusinessPartnerAddress on  $projection.BusinessPartner = _BusinessPartnerAddress.BusinessPartner
                                                                            and $projection.BusinessPartnerAddressID = _BusinessPartnerAddress.AddressNumber
  association [0..*] to I_BusPartTaxTypeText as _TaxCategoryText on $projection.BPTaxType = _TaxCategoryText.BPTaxType  
{
  key BusinessPartner,
  key BusinessPartnerAddressID,
  key BPTaxType,
      BPTaxNumber,
      BPTaxLongNumber,
      AuthorizationGroup
}
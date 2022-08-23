@AbapCatalog.sqlViewName: 'IPAYMENTCARD'
@AbapCatalog.compiler.compareFilter: true
@EndUserText.label: 'Core View for Payment Card'
@AccessControl.personalData.blocking: #REQUIRED
@AccessControl.authorizationCheck: #MANDATORY
@VDM.viewType: #BASIC
@ClientHandling.algorithm: #SESSION_VARIABLE
@ObjectModel.usageType.serviceQuality: #B
@ObjectModel.usageType.sizeCategory: #L
@ObjectModel.usageType.dataClass: #MASTER
@AbapCatalog.preserveKey: true
define view I_Paymentcard
  as select from but0cc
  association [1..1] to I_BusinessPartner as _BusinessPartner on  $projection.BusinessPartner = _BusinessPartner.BusinessPartner
  association [1..1] to I_Paymentcardtype as _CardType        on  $projection.PaymentCardType = _CardType.PaymentCardType
                                                              and $projection.CardNumber      = _CardType.PaymentCardNumber
  
{
  key BusinessPartner,
  key PaymentCardID,
  key PaymentCardType,
  key CardNumber,
      IsStandardCard,
      CardDescription,
      CollectionIsAuthorized,
      AuthorizationGroup
}
@AbapCatalog.sqlViewName: 'IPAYCARDLOCK'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View for Payment Card Lock'

@AbapCatalog.preserveKey: true
@VDM.viewType: #BASIC
@ClientHandling.algorithm: #SESSION_VARIABLE
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #L
@ObjectModel.usageType.dataClass: #MASTER

define view I_PaymentCardLock
  as select from tb035
 association [0..*] to I_PaymentCardLockText as _Text on $projection.PaymentCardLock = _Text.PaymentCardLock
{
  key PaymentCardLock
}
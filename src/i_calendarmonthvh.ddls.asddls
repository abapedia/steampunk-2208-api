@AbapCatalog.sqlViewName: 'ICALENDARMONTHVH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Analytics.internalName: #LOCAL
@ClientHandling.algorithm: #SESSION_VARIABLE
@Consumption.ranked: true
@EndUserText.label: 'Value Help CDS for Calendar Month'
@ObjectModel.usageType.serviceQuality: #B
@ObjectModel.usageType.dataClass: #META
@ObjectModel.usageType.sizeCategory: #L
@Search.searchable: true
@VDM.viewType: #COMPOSITE
@ObjectModel.dataCategory: #VALUE_HELP
define view I_CalendarMonthVH
  as select from I_CalendarMonth
{
  key CalendarMonth,
      _Text
}
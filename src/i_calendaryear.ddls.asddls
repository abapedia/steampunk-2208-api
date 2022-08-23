@ClientHandling.algorithm: #SESSION_VARIABLE
@ObjectModel.representativeKey: 'CalendarYear'
@ObjectModel.usageType.dataClass: #MIXED
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #M
@AbapCatalog.sqlViewName: 'ICALENDARYEAR'
@AbapCatalog.preserveKey: true
@EndUserText.label: 'Year'
@Analytics : {dataCategory: #DIMENSION, dataExtraction.enabled : true}
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@Metadata.ignorePropagatedAnnotations:true
@Search.searchable: true

define view I_CalendarYear as select from scal_tt_year
{
  key CalendarYear,
      IsLeapYear,
      NumberOfDays
}
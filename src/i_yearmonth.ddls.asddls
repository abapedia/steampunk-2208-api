@ClientHandling.algorithm: #SESSION_VARIABLE //Inserted by VDM CDS Suite Plugin
@ObjectModel.representativeKey: 'YearMonth'
@ObjectModel.usageType.dataClass: #MIXED
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XL
@AbapCatalog.sqlViewName: 'IYEARMONTH'
@AbapCatalog.preserveKey: true
@EndUserText.label: 'Year Month'
@Analytics : {dataCategory: #DIMENSION, dataExtraction.enabled : true}
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@Metadata.ignorePropagatedAnnotations:true

define view I_YearMonth
  as select from scal_tt_month as month
    inner join   scal_tt_year  as year on month.calendaryear = year.calendaryear
  association [0..1] to I_CalendarMonth   as _CalendarMonth   on $projection.CalendarMonth = _CalendarMonth.CalendarMonth
  association [1..1] to I_CalendarQuarter as _CalendarQuarter on $projection.CalendarQuarter = _CalendarQuarter.CalendarQuarter
{
  key YearMonth,
      CalendarMonth,
      CalendarYear,
      CalendarQuarter,
      IsLeapYear,
      NumberOfDays,
      FirstDayOfMonthDate,
      LastDayOfMonthDate,
      HalfYear
}
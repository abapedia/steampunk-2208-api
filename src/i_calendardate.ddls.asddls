@ClientHandling.algorithm: #SESSION_VARIABLE 
@ObjectModel.representativeKey: 'CalendarDate'
@ObjectModel.usageType.dataClass: #MIXED
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XL 
@AbapCatalog.sqlViewName: 'ICALENDARDATE'
@AbapCatalog.preserveKey: true
@EndUserText.label: 'Date'
@Analytics : {dataCategory: #DIMENSION, dataExtraction.enabled : true}
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@Metadata.ignorePropagatedAnnotations:true
@Search.searchable: true

define view I_CalendarDate as select from scal_tt_date
// inner join I_SAPClient as _SAPClient on sapclient is not null
association [1..1] to I_CalendarMonth as _CalendarMonth
  on _CalendarMonth.CalendarMonth = scal_tt_date.calendarmonth
association [1..1] to I_CalendarQuarter as _CalendarQuarter
  on _CalendarQuarter.CalendarQuarter = scal_tt_date.calendarquarter
association [1..1] to I_CalendarYear as _CalendarYear
on _CalendarYear.CalendarYear = scal_tt_date.calendaryear
association [1..1] to I_WeekDay as _WeekDay
  on _WeekDay.WeekDay = scal_tt_date.weekday
association [1..1] to I_YearMonth as _YearMonth
  on _YearMonth.YearMonth = scal_tt_date.yearmonth

{ 
  key CalendarDate,
      CalendarYear,
      CalendarQuarter,
      CalendarMonth,
      CalendarWeek,
      CalendarDay,
      YearMonth,
      YearQuarter,
      YearWeek,
      WeekDay,
      FirstDayOfWeekDate,
      FirstDayOfMonthDate,
      CalendarDayOfYear,
      YearDay
}
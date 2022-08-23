@AbapCatalog: {
    sqlViewName: 'IFISCALDATE',
    compiler.compareFilter: true,
    preserveKey: true
}
@Metadata: {
    ignorePropagatedAnnotations: true
}
@ObjectModel.usageType: {
    serviceQuality: #D,
    sizeCategory: #L,
    dataClass: #CUSTOMIZING
}
@ClientHandling: {
    algorithm: #SESSION_VARIABLE
}
@AccessControl: {
    authorizationCheck: #NOT_REQUIRED
}
@VDM: {
    viewType: #COMPOSITE
}
@EndUserText: {
    label: 'Shifted Calendar Date'
}
define view I_ShiftedCalendarDate
  with parameters
    P_TimePeriodOffsetDuration : fins_tper_offset_duratn,
    P_TimePeriodOffsetUnit     : fins_tperiod_offset_unit

  as select from I_CalendarDate
{
  key CalendarDate,
      ShiftedCalendarDate
}
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@Analytics:{
    dataCategory: #DIMENSION,
    dataExtraction: {
        enabled: true,
        delta.changeDataCapture: {
        mapping: 
            [ { table: 'finsc_fisc_date', 
                role: #MAIN,
                viewElement: ['FiscalYearVariant', 'CalendarDate'],
                tableElement: ['fiscal_year_variant', 'calendar_date']
              }
            ]
        }
    }
}
@AbapCatalog.sqlViewName: 'IFIFCALENDARDATE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey:true

@ClientHandling.algorithm: #SESSION_VARIABLE
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'Fiscal Calendar Date'
@VDM.viewType: #BASIC

@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #L
@ObjectModel.usageType.dataClass: #CUSTOMIZING

@ObjectModel.representativeKey: 'CalendarDate'
@AccessControl.authorizationCheck: #NOT_REQUIRED

@ObjectModel.modelingPattern: #ANALYTICAL_DIMENSION
@ObjectModel.supportedCapabilities: [#ANALYTICAL_DIMENSION, #CDS_MODELING_ASSOCIATION_TARGET, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE, #EXTRACTION_DATA_SOURCE]

define view I_FiscalCalendarDate as select from P_FiscalCalendarDate 

association [0..1] to I_FiscalYearVariant           as _FiscalYearVariant on  $projection.FiscalYearVariant = _FiscalYearVariant.FiscalYearVariant
association [0..1] to I_CalendarDate                as _CalendarDate      on  $projection.CalendarDate      = _CalendarDate.CalendarDate
association [0..*] to I_FiscalYearPeriodText        as _Text              on  $projection.FiscalYearVariant = _Text.FiscalYearVariant
                                                                          and $projection.FiscalYear        = _Text.FiscalYear
                                                                          and $projection.FiscalPeriod      = _Text.FiscalPeriod
                                                                   
association [0..1] to I_FiscalYear                  as _FiscalYear        on  $projection.FiscalYearVariant = _FiscalYear.FiscalYearVariant
                                                                          and $projection.FiscalYear        = _FiscalYear.FiscalYear
association [0..1] to I_FiscalYearPeriod            as _FiscalPeriod      on  $projection.FiscalYearVariant = _FiscalPeriod.FiscalYearVariant
                                                                          and $projection.FiscalYear        = _FiscalPeriod.FiscalYear
                                                                          and $projection.FiscalPeriod      = _FiscalPeriod.FiscalPeriod
association [0..1] to I_FiscalYearQuarter           as _FiscalQuarter     on  $projection.FiscalYearVariant = _FiscalQuarter.FiscalYearVariant
                                                                          and $projection.FiscalYear        = _FiscalQuarter.FiscalYear
                                                                          and $projection.FiscalQuarter     = _FiscalQuarter.FiscalQuarter
association [0..1] to I_FiscalWeek                  as _FiscalWeek        on  $projection.FiscalYearVariant = _FiscalWeek.FiscalYearVariant
                                                                          and $projection.FiscalYear        = _FiscalWeek.FiscalYear
                                                                          and $projection.FiscalYearWeek    = _FiscalWeek.FiscalYearWeek                                                                  
                                                                          and $projection.FiscalWeek        = _FiscalWeek.FiscalWeek
association [0..1] to I_FiscalYearPeriodForVariant  as _FiscalYearPeriod  on  $projection.FiscalYearVariant = _FiscalYearPeriod.FiscalYearVariant
                                                                          and $projection.FiscalYearPeriod  = _FiscalYearPeriod.FiscalYearPeriod
                                                                   
association [0..1] to I_FiscalYearQuarterForVariant as _FiscalYearQuarter on  $projection.FiscalYearVariant = _FiscalYearQuarter.FiscalYearVariant
                                                                          and $projection.FiscalYear        = _FiscalYearQuarter.FiscalYear
                                                                          and $projection.FiscalYearQuarter = _FiscalYearQuarter.FiscalYearQuarter
association [0..1] to I_FiscalYearWeek              as _FiscalYearWeek    on  $projection.FiscalYearVariant = _FiscalYearWeek.FiscalYearVariant 
                                                                          and $projection.FiscalYear        = _FiscalYearWeek.FiscalYear
                                                                          and $projection.FiscalYearWeek    = _FiscalYearWeek.FiscalYearWeek                                                                  

{
  key FiscalYearVariant,
  key CalendarDate,
      FiscalYear,
      FiscalYearStartDate,
      FiscalYearEndDate,
      FiscalPeriod,
      FiscalPeriodStartDate,
      FiscalPeriodEndDate,
      FiscalQuarter,
      FiscalQuarterStartDate,
      FiscalQuarterEndDate,
      FiscalWeek,
      FiscalWeekStartDate,
      FiscalWeekEndDate,
      FiscalYearPeriod,
      FiscalYearQuarter,
      FiscalYearWeek,
      FiscalYearConsecutiveNumber,
      FiscalPeriodConsecutiveNumber,
      FiscalQuarterConsecutiveNumber,
      FiscalWeekConsecutiveNumber
}
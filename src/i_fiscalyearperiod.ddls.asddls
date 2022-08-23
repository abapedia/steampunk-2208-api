@AbapCatalog.sqlViewName: 'IFIFYEARPERIOD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey:true

@ClientHandling.algorithm: #SESSION_VARIABLE
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'Fiscal Year Period'
@VDM.viewType: #BASIC

@ObjectModel.usageType.serviceQuality: #B
@ObjectModel.usageType.sizeCategory: #L
@ObjectModel.usageType.dataClass: #CUSTOMIZING
//@ObjectModel.alternativeKey: [{id: 'FiscalYearPeriodKey',
//                               uniqueness: #UNIQUE,
//                               element: ['FiscalYearVariant', 'FiscalYearPeriod'] }]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.representativeKey: 'FiscalPeriod'
//@Analytics: { dataCategory: #DIMENSION, dataExtraction.enabled: true }
@Analytics: { dataCategory: #DIMENSION }

@ObjectModel.modelingPattern: #ANALYTICAL_DIMENSION
@ObjectModel.supportedCapabilities: [#ANALYTICAL_DIMENSION, #CDS_MODELING_ASSOCIATION_TARGET, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE]

define view I_FiscalYearPeriod as select from P_FiscalYearPeriod 

association [0..1] to I_FiscalYearVariant    as _FiscalYearVariant     on  $projection.FiscalYearVariant     = _FiscalYearVariant.FiscalYearVariant
association [0..1] to I_CalendarDate         as _FiscalPeriodStartDate on  $projection.FiscalPeriodStartDate = _FiscalPeriodStartDate.CalendarDate
association [0..1] to I_FiscalYear           as _FiscalYear            on  $projection.FiscalYearVariant     = _FiscalYear.FiscalYearVariant
                                                                       and $projection.FiscalYear            = _FiscalYear.FiscalYear
association [0..*] to I_FiscalYearPeriodText as _Text                  on  $projection.FiscalYearVariant     = _Text.FiscalYearVariant
                                                                       and $projection.FiscalYear            = _Text.FiscalYear
                                                                       and $projection.FiscalPeriod          = _Text.FiscalPeriod
association [0..1] to I_FiscalCalendarDate   as _FiscalCalendarDate    on  $projection.FiscalYearVariant     = _FiscalCalendarDate.FiscalYearVariant
                                                                       and $projection.FiscalYear            = _FiscalCalendarDate.FiscalYear
                                                                       and $projection.FiscalPeriod          = _FiscalCalendarDate.FiscalPeriod
                                                                       and $projection.FiscalYearPeriod      = _FiscalCalendarDate.FiscalYearPeriod
                                                                       and $projection.FiscalPeriodStartDate = _FiscalCalendarDate.CalendarDate

{
  key FiscalYearVariant,
  key FiscalYear,
  key FiscalPeriod,
      FiscalPeriodStartDate,
      FiscalPeriodEndDate,
      IsSpecialPeriod,
      FiscalYearStartDate,
      FiscalYearEndDate,
      FiscalYearPeriod,
      FiscalPeriodConsecutiveNumber,
      NextFiscalPeriod,
      NextFiscalPeriodFiscalYear,
      NextFsclPeriodConsecutiveNmbr
}
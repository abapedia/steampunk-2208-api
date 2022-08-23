@AbapCatalog.sqlViewName: 'IFIFFSCLPERDFYV'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey:true
@EndUserText.label: 'Fiscal Period For Fiscal Year Variant'

@ClientHandling.algorithm: #SESSION_VARIABLE
@Metadata.ignorePropagatedAnnotations: true

@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'FiscalPeriod'
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #L
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@Analytics.dataExtraction.enabled:true

@AccessControl.authorizationCheck: #NOT_REQUIRED

@Analytics: { dataCategory: #DIMENSION }

@ObjectModel.modelingPattern: #ANALYTICAL_DIMENSION
@ObjectModel.supportedCapabilities: [#ANALYTICAL_DIMENSION, #CDS_MODELING_ASSOCIATION_TARGET, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE, #EXTRACTION_DATA_SOURCE]

define view I_FiscalPeriodForVariant as select from P_FiscalYearPeriod 

association [0..1] to I_FiscalYearVariant    as _FiscalYearVariant     on  $projection.FiscalYearVariant     = _FiscalYearVariant.FiscalYearVariant
association [0..1] to I_CalendarDate         as _FiscalPeriodStartDate on  $projection.FiscalPeriodStartDate = _FiscalPeriodStartDate.CalendarDate
association [0..1] to I_FiscalYear           as _FiscalYear            on  $projection.FiscalYearVariant     = _FiscalYear.FiscalYearVariant
                                                                       and $projection.FiscalYear            = _FiscalYear.FiscalYear
association [0..*] to I_FiscalYearPeriodText as _Text                  on  $projection.FiscalYearVariant     = _Text.FiscalYearVariant
                                                                       and $projection.FiscalYear            = _Text.FiscalYear
                                                                       and $projection.FiscalPeriod          = _Text.FiscalPeriod
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
      NextFiscalPeriod,
      NextFiscalPeriodFiscalYear
}
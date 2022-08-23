@AbapCatalog.sqlViewName: 'IFSCLDATEFUNCVAL'
@AbapCatalog.compiler.compareFilter: true
@Metadata.ignorePropagatedAnnotations: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Fiscal Date Function values'
@ObjectModel.representativeKey: 'DateFunction'
@ObjectModel.usageType.dataClass: #META
@ObjectModel.usageType.serviceQuality:  #A
@ObjectModel.usageType.sizeCategory:  #S
@ClientHandling.algorithm: #SESSION_VARIABLE
@Analytics: { dataCategory: #DIMENSION, dataExtraction.enabled: true }
@ObjectModel.modelingPattern: #ANALYTICAL_DIMENSION
@ObjectModel.supportedCapabilities: [#ANALYTICAL_DIMENSION, #CDS_MODELING_ASSOCIATION_TARGET, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE, #EXTRACTION_DATA_SOURCE]
@VDM.viewType: #BASIC
define view I_FiscalDateFunctionValue
  as select from fiscaldatefn_val

  association [1..1] to I_FiscalDateFunction as _DateFunction      on _DateFunction.DateFunction = $projection.DateFunction
  association [1..1] to I_FiscalYearVariant  as _FiscalYearVariant on _FiscalYearVariant.FiscalYearVariant = $projection.FiscalYearVariant
  association [1..1] to I_CalendarDate       as _ValidityDate      on _ValidityDate.CalendarDate = $projection.DateFunctionValidityDate

{
  key DateFunction,
  key FiscalYearVariant,
  key DateFunctionValidityDate,
      DateFunctionStartDate,
      DateFunctionEndDate,
      FiscalWeekStart,
      FiscalYearWeekStart,
      FiscalWeekEnd,
      FiscalYearWeekEnd,
      FiscalPeriodStart,
      FiscalYearPeriodStart,
      FiscalPeriodEnd,
      FiscalYearPeriodEnd,
      FiscalPeriodSingle,
      FiscalYearPeriodSingle,
      FiscalQuarterStart,
      FiscalYearQuarterStart,
      FiscalQuarterEnd,
      FiscalYearQuarterEnd,
      FiscalYearStart,
      FiscalYearEnd
}
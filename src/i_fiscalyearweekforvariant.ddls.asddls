@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@AbapCatalog.preserveKey: true
@AbapCatalog.sqlViewName: 'IFIFYWEEK4VAR'
@AbapCatalog.compiler.compareFilter: true

@ClientHandling.algorithm: #SESSION_VARIABLE
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'Fiscal Year Week with Next Fiscal Year Week'
@VDM.viewType: #BASIC

@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.usageType.dataClass: #CUSTOMIZING

@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.representativeKey: 'FiscalYearWeek'
@Analytics: { dataCategory: #DIMENSION }

@Analytics.internalName: #LOCAL

@ObjectModel.modelingPattern: #ANALYTICAL_DIMENSION
@ObjectModel.supportedCapabilities: [#ANALYTICAL_DIMENSION, #CDS_MODELING_ASSOCIATION_TARGET, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE]

define view I_FiscalYearWeekForVariant as select from P_FiscalYearWeek 

association [0..1] to I_FiscalYear      as _FiscalYear        on  $projection.FiscalYearVariant             = _FiscalYear.FiscalYearVariant
                                                              and $projection.FiscalYear                    = _FiscalYear.FiscalYear
{
  key FiscalYearVariant,
  key FiscalYearWeek,
      FiscalYear,
      FiscalYearStartDate,
      FiscalYearEndDate,
      FiscalWeek,
      FiscalWeekStartDate,
      FiscalWeekEndDate,
      FiscalWeekConsecutiveNumber,
      NextFiscalYearWeek,
      NextFiscalWeek,
      NextFiscalWeekStartDate,
      NextFiscalWeekEndDate,
      NextFsclWeekConsecutiveNmbr,
      _FiscalYearVariant
}
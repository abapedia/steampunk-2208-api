@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@AbapCatalog.preserveKey: true
@AbapCatalog.sqlViewName: 'IFIFISCALWEEK'
@AbapCatalog.compiler.compareFilter: true

@ClientHandling.algorithm: #SESSION_VARIABLE
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'Fiscal Week'
@VDM.viewType: #BASIC

@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.usageType.dataClass: #CUSTOMIZING

@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.representativeKey: 'FiscalWeek'
@Analytics: { dataCategory: #DIMENSION }

@Analytics.internalName: #LOCAL

@ObjectModel.modelingPattern: #ANALYTICAL_DIMENSION
@ObjectModel.supportedCapabilities: [#ANALYTICAL_DIMENSION, #CDS_MODELING_ASSOCIATION_TARGET, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE]

define view I_FiscalWeek as select from P_FiscalYearWeek 

association [0..1] to I_FiscalYear      as _FiscalYear        on  $projection.FiscalYearVariant             = _FiscalYear.FiscalYearVariant
                                                              and $projection.FiscalYear                    = _FiscalYear.FiscalYear
association [0..1] to I_FiscalYearWeek  as _FiscalYearWeek    on  $projection.FiscalYearVariant             = _FiscalYearWeek.FiscalYearVariant 
                                                              and $projection.FiscalYear        = _FiscalYearWeek.FiscalYear
                                                              and $projection.FiscalYearWeek    = _FiscalYearWeek.FiscalYearWeek                                                                  
{
  key FiscalYearVariant,
  key FiscalYear,
  key FiscalYearWeek,
  key FiscalWeek,
      FiscalYearStartDate,
      FiscalYearEndDate,
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
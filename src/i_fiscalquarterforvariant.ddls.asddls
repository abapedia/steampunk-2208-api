@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@AbapCatalog.preserveKey: true
@AbapCatalog.sqlViewName: 'IFIFISCQU4VAR'
@AbapCatalog.compiler.compareFilter: true

@ClientHandling.algorithm: #SESSION_VARIABLE
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'Fiscal Quarter with Next Fiscal Quarter'
@VDM.viewType: #BASIC

@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.usageType.dataClass: #CUSTOMIZING

@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.representativeKey: 'FiscalQuarter'
//@Analytics: { dataCategory: #DIMENSION, dataExtraction.enabled: true }
@Analytics: { dataCategory: #DIMENSION }

@Analytics.internalName: #LOCAL

@ObjectModel.modelingPattern: #ANALYTICAL_DIMENSION
@ObjectModel.supportedCapabilities: [#ANALYTICAL_DIMENSION, #CDS_MODELING_ASSOCIATION_TARGET, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE]

define view I_FiscalQuarterForVariant as select from P_FiscalYearQuarter 

association [0..1] to I_FiscalYear as _FiscalYear on  $projection.FiscalYearVariant     = _FiscalYear.FiscalYearVariant
                                                  and $projection.FiscalYear            = _FiscalYear.FiscalYear
{
  key FiscalYearVariant,
  key FiscalYear,
  key FiscalQuarter,
      FiscalYearStartDate,
      FiscalYearEndDate,
      FiscalQuarterStartDate,
      FiscalQuarterEndDate,
      FiscalYearQuarter,
      FiscalQuarterConsecutiveNumber,
      NextFiscalQuarter,
      NextFiscalYear,
      NextFiscalYearQuarter,
      NextFiscalQuarterStartDate,
      NextFiscalQuarterEndDate,
      NextFsclQuarterConsecutiveNmbr,
      _FiscalYearVariant
}
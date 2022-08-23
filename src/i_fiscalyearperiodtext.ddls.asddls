@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@AbapCatalog.preserveKey: true
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.sqlViewName: 'IFIFYPERTXT'
//@AbapCatalog.compiler.compareFilter: true

@ClientHandling.algorithm: #SESSION_VARIABLE
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'Fiscal Year Period Text'
@VDM.viewType: #BASIC

@ObjectModel.dataCategory: #TEXT 
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.dataClass: #MASTER

@AbapCatalog.buffering.status: #NOT_ALLOWED         
//@AbapCatalog.buffering.type: #FULL
//@AbapCatalog.buffering.numberOfKeyFields: 2

@ObjectModel.representativeKey: 'FiscalPeriod'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Analytics: {dataExtraction.enabled: true}
@Search.searchable: true

@ObjectModel.modelingPattern: #LANGUAGE_DEPENDENT_TEXT
@ObjectModel.supportedCapabilities: [#LANGUAGE_DEPENDENT_TEXT, #CDS_MODELING_ASSOCIATION_TARGET, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE, #EXTRACTION_DATA_SOURCE, #SEARCHABLE_ENTITY]

define view I_FiscalYearPeriodText as select from t009c inner join finsc_period on  periv = finsc_period.fiscal_year_variant
                                                                                and poper = finsc_period.fiscal_period 
                                                                                and (    bdatj = finsc_period.fiscal_year 
                                                                                      or bdatj = '0000')

association [0..1] to I_FiscalYearVariant as _FiscalYearVariant on $projection.FiscalYearVariant = _FiscalYearVariant.FiscalYearVariant
association [0..1] to I_FiscalYear        as _FiscalYear        on $projection.FiscalYearVariant = _FiscalYear.FiscalYearVariant
                                                                and $projection.FiscalYear       = _FiscalYear.FiscalYear
association [0..1] to I_Language          as _Language          on $projection.Language          = _Language.Language

{ 
  key Language,
  key FiscalYearVariant,
  key FiscalYear,
  key FiscalPeriod,
      FiscalPeriodName
}
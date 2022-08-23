@AbapCatalog.sqlViewName: 'IFIFYPERTXTRAW'
@EndUserText.label: 'Fiscal Period Texts Raw Data'

@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true

@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@Metadata.ignorePropagatedAnnotations: true
@ClientHandling.type: #INHERITED
@ClientHandling.algorithm: #SESSION_VARIABLE
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #L
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.dataCategory: #TEXT
@AbapCatalog.buffering.status: #ACTIVE
@AbapCatalog.buffering.type: #FULL

@Analytics.internalName: #LOCAL

@ObjectModel.representativeKey: ['FiscalPeriod']
@Analytics:{
//    dataCategory: #DIMENSION,
    dataExtraction: { enabled: true } }
    
@ObjectModel.modelingPattern: #NONE
@ObjectModel.supportedCapabilities: [#EXTRACTION_DATA_SOURCE]
                                         
define view I_FiscalPeriodTextRawData
  as select from t009c

  association [0..1] to I_FiscalYearVariant as _FiscalYearVariant on $projection.FiscalYearVariant = _FiscalYearVariant.FiscalYearVariant
  //association [0..1] to I_FiscalYear        as _FiscalYear        on $projection.FiscalYearVariant = _FiscalYear.FiscalYearVariant
  //                                                                and $projection.FiscalYear       = _FiscalYear.FiscalYear
  association [0..1] to I_Language          as _Language          on $projection.Language = _Language.Language

{
  key Language,
  key FiscalYearVariant,
  key FiscalPeriod,
  key FiscalYear,
      FiscalPeriodShortName,
      FiscalPeriodName
}
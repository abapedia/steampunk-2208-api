@AbapCatalog.sqlViewName: 'IFYPERRAWDATA'
@EndUserText.label: 'Fiscal Periods Raw Data'

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
@ObjectModel.usageType.dataClass: #CUSTOMIZING 

@AbapCatalog.buffering.status: #ACTIVE        
@AbapCatalog.buffering.type: #FULL
//@AbapCatalog.buffering.numberOfKeyFields: 4
@Analytics.internalName: #LOCAL  

//@ObjectModel.representativeKey: 'FiscalPeriodEndDate' //['FiscalPeriodEndYear', 'FiscalPeriodEndMonth', 'FiscalPeriodEndDay']
@Analytics:{
//    dataCategory: #DIMENSION,
    dataExtraction: { enabled: true } }

@ObjectModel.modelingPattern: #NONE
@ObjectModel.supportedCapabilities: [#EXTRACTION_DATA_SOURCE]
                                     
define view I_FiscalPeriodRawData as select from t009b 
association [0..1] to I_FiscalYearVariant as _FiscalYearVariant on $projection.FiscalYearVariant = _FiscalYearVariant.FiscalYearVariant

{
  key FiscalYearVariant,
  key FiscalPeriodEndYear,
  key FiscalPeriodEndMonth,
  key FiscalPeriodEndDay,
      FiscalPeriod,
      FiscalYearShift
}
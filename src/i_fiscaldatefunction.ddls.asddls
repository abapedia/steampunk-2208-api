@AbapCatalog.sqlViewName: 'IFIDATEFNC'
@AbapCatalog.compiler.compareFilter: true
@Metadata.ignorePropagatedAnnotations: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Fiscal Date Function'
@ObjectModel.representativeKey: 'DateFunction'
@ObjectModel.usageType.dataClass: #META
@ObjectModel.usageType.serviceQuality:  #A
@ObjectModel.usageType.sizeCategory:  #S
@ClientHandling.algorithm: #SESSION_VARIABLE
@Analytics: { dataCategory: #DIMENSION, dataExtraction.enabled: true }
@ObjectModel.modelingPattern: #ANALYTICAL_DIMENSION
@ObjectModel.supportedCapabilities: [#ANALYTICAL_DIMENSION, #CDS_MODELING_ASSOCIATION_TARGET, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE, #EXTRACTION_DATA_SOURCE]
@VDM.viewType: #BASIC 
define view I_FiscalDateFunction as select from I_Datefunction 

  association [0..*] to I_FiscalDateFunctionText as _DateFunctionText on $projection.DateFunction = _DateFunctionText.DateFunction

{
  key DateFunction,
      DateFunctionType,
      DateFunctionGranularity,
      DateFunctionStartPoint,
      DateFunctionStartOffsetValue,
      DateFuncStartRelativeOffset,
      DateFunctionStartOffsetUnit,
      DateFunctionStartRelOffsetUnit,
      DateFunctionStartYearOffset,
      DateFunctionStartFixedDate,
      DateFunctionEndPoint,
      DateFunctionEndOffsetValue,
      DateFunctionEndRelativeOffset,
      DateFunctionEndOffsetUnit,
      DateFunctionEndRelOffsetUnit,
      DateFunctionEndYearOffset,
      DateFunctionEndFixedDate
}
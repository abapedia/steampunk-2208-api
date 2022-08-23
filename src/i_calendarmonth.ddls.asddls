@ClientHandling.algorithm: #SESSION_VARIABLE //Inserted by VDM CDS Suite Plugin
@ObjectModel.representativeKey: 'CalendarMonth'
@ObjectModel.usageType.dataClass: #META
@ObjectModel.usageType.serviceQuality: #B
@ObjectModel.usageType.sizeCategory: #L
@AbapCatalog.sqlViewName: 'ICALENDARMONTH'
@AbapCatalog.preserveKey: true
@EndUserText.label: 'Calendar Month'
@Analytics : {dataCategory: #DIMENSION, dataExtraction.enabled : true}
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@Metadata.ignorePropagatedAnnotations:true
@Search.searchable: true

define view I_CalendarMonth
  as select from dd07l
  association [0..*] to I_CalendarMonthText as _Text on $projection.CalendarMonth = _Text.CalendarMonth
{
  key CalendarMonth,
      DomainValue
}
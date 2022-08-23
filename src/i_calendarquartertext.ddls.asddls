@ClientHandling.algorithm: #SESSION_VARIABLE
@ObjectModel.dataCategory: #TEXT
@ObjectModel.representativeKey: 'CalendarQuarter'
@ObjectModel.usageType.dataClass: #META
@ObjectModel.usageType.serviceQuality: #B
@ObjectModel.usageType.sizeCategory: #L
@AbapCatalog.sqlViewName: 'ICALQUARTERTEXT'
@EndUserText.label: 'Calendar Quarter text'
@Metadata.ignorePropagatedAnnotations:true
@Analytics.dataExtraction.enabled: false
@VDM.viewType: #BASIC

define view I_CalendarQuarterText
  as select from dd07t
  association [0..1] to I_CalendarQuarter as _CalendarQuarter on $projection.CalendarQuarter = _CalendarQuarter.CalendarQuarter
  association [0..1] to I_Language        as _Language        on $projection.Language = _Language.Language
{
  key CalendarQuarter,
  key Language,
      CalendarQuarterName,
      DomainValue
}
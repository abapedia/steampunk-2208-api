@ClientHandling.algorithm: #SESSION_VARIABLE //Inserted by VDM CDS Suite Plugin
@ObjectModel.dataCategory: #TEXT
@ObjectModel.representativeKey: 'WeekDay'
@ObjectModel.usageType.dataClass: #META
@ObjectModel.usageType.serviceQuality: #B
@ObjectModel.usageType.sizeCategory: #L
@AbapCatalog.sqlViewName: 'IWEEKDAYTEXT'
@EndUserText.label: 'Week Day Text'
@Analytics.dataExtraction.enabled: false
@VDM.viewType: #BASIC
@Metadata.ignorePropagatedAnnotations:true

define view I_WeekDayText
  as select from dd07t
  association [0..1] to I_WeekDay  as _WeekDay  on $projection.WeekDay = _WeekDay.WeekDay
  association [0..1] to I_Language as _Language on $projection.Language = _Language.Language
{
  key WeekDay,
  key Language,
      WeekDayName
}
@ClientHandling.algorithm: #SESSION_VARIABLE 

@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AbapCatalog.sqlViewName: 'ITIMEZONERULETXT'

@AccessControl.authorizationCheck: #NOT_REQUIRED

@Analytics : { dataExtraction.enabled : true}

@EndUserText.label: 'Time Zone Rule Text'

@Metadata.ignorePropagatedAnnotations:true

@ObjectModel.dataCategory: #TEXT
@ObjectModel.representativeKey: 'TimeZoneRule'
@ObjectModel.usageType.dataClass: #CUSTOMIZING 
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M

@VDM.viewType: #BASIC 
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API

define view I_TimeZoneRuleText as select from ttzrt 
    association [0..1] to I_TimeZoneRule as _TimeZoneRule
        on $projection.TimeZoneRule = _TimeZoneRule.TimeZoneRule
    association [0..1] to I_Language as _Language
        on $projection.Language = _Language.Language        
{
  key TimeZoneRule,
  key Language,
      TimeZoneRuleText
}
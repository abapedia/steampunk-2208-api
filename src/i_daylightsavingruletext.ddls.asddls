@ClientHandling.algorithm: #SESSION_VARIABLE

@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AbapCatalog.sqlViewName: 'IDSTRULETXT'

@AccessControl.authorizationCheck: #NOT_REQUIRED

@Analytics : {dataExtraction.enabled : true}

@EndUserText.label: 'Daylight Saving Rule Text'

@Metadata.ignorePropagatedAnnotations:true

@ObjectModel.dataCategory: #TEXT
@ObjectModel.representativeKey: 'DaylightSavingRule'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M

@VDM.viewType: #BASIC
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API

define view I_DaylightSavingRuleText as select from  ttzdt
    association [0..1] to I_DaylightSavingRule as _DaylightSavingRule 
        on $projection.DaylightSavingRule = _DaylightSavingRule.DaylightSavingRule
    association [0..1] to I_Language as _Language
        on $projection.Language = _Language.Language
{ 
  key DaylightSavingRule,
  key Language,
      DaylightSavingRuleText
}
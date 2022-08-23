@EndUserText.label: 'System Benutzer'
@VDM.viewType: #BASIC
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@AbapCatalog.preserveKey: true
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.sqlViewName: 'ISYSTEMUSER'
@ClientHandling.algorithm: #SESSION_VARIABLE
@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@Metadata.ignorePropagatedAnnotations: true
@Analytics.dataExtraction.enabled: true
@ObjectModel.supportedCapabilities: [#EXTRACTION_DATA_SOURCE]


// 1. Background information:
// This CDS is be used by CDS based extraction framework. The view selects system users only (USTYP = 'B').
//
// 2. Restrictions:
// Because any kind of user can create or change data in the system,
// fields like "CreatedByUser" or "LastChangedByUser" must refer to this entity by a "[0..1]" association
// to obtain a descriptive text of the user. 
// -> Do not assume that the target of the association exists.
// -> Do not assume that such a user always corresponds to a business partner of type person ('BP person').
//
// This view must not be exposed to end users directly, because it exposes person relevant information.
// Only use this view in the definition of context-specific consumption views as a target for the "CreatedByUser"
// and "LastChangedByUser" associations. That's why, the view definition intentionally does not contain the
// "@ObjectModel.representativeKey", "@ObjectModel.text.element" or "@Analytics..." annotations.

define view I_SystemUser
  as select from usr02 as _usr02
  inner join     usr21 as _usr21   on _usr02.bname = _usr21.bname
  
{
  key UserID,
      UserDescription
}
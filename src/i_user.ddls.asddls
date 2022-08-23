@EndUserText.label: 'User'
@VDM.viewType: #BASIC
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@AbapCatalog.preserveKey: true
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.sqlViewName: 'IUSER'
@ClientHandling.algorithm: #SESSION_VARIABLE
@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@AccessControl.personalData.blocking: #BLOCKED_DATA_EXCLUDED
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.representativeKey: 'UserID'
// 1. Background information:
// Users represent either persons or technical entities.
// Cloud      Environment: Users created for persons, communication and printing are owned by the customer.
//                        All other users are owned by SAP.
// On Premise Environment: All users are owned by the customer.
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
//
// 3. Hints/Remarks:
// For users connected to a BP person, the UserDescrition contains what was formerly known as 'Person Fullname'.
// For users having classical address (on premise only) the UserDescrition is defined by the customer.
//                In this case, it rarely contains 'Person Fullname'.
// For users without address data we differentiate between cloud and on premise environment:
// -> Cloud:      Preset  by SAP.
// -> On Premise: Defined by the customer.
//                Also here, it's quite unusual that UserDescription contains 'Person Fullname', because usually
//                there is no individual person behind it. Usually it contains a description of the purpose of
//                the technical entity.

define view I_User
  as select from usr21

  association [0..1] to I_AddrCurDefaultEmailAddress as _AddrCurDefaultEmailAddress 
                     on  usr21.persnumber = _AddrCurDefaultEmailAddress.AddressPersonID
                     and usr21.addrnumber = _AddrCurDefaultEmailAddress.AddressID   

{
  key UserID,
      UserDescription,
      IsTechnicalUser,
      AddressPersonID,
      AddressID
}
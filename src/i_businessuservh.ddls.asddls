@AbapCatalog.sqlViewName: 'IBUSINESSUSERVH'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Business User - Value Help'
@VDM.viewType: #COMPOSITE
@Consumption.ranked: true
@ObjectModel.dataCategory: #VALUE_HELP
@AccessControl.personalData.blocking: #BLOCKED_DATA_EXCLUDED
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #L
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.representativeKey: 'BusinessPartner'
@UI.presentationVariant:{
    sortOrder: [
        { by: 'LastName', direction: #ASC },
        { by: 'FirstName', direction: #ASC }]
}
@ClientHandling.algorithm: #SESSION_VARIABLE
@Search.searchable: true
define view I_BusinessUserVH
  as select from    I_BusinessUserBasic
    left outer join P_BPUSRPERSONEXTERNALID on P_BPUSRPERSONEXTERNALID.BusinessPartner = I_BusinessUserBasic.BusinessPartner
{
  key BusinessPartner,
      BPIdentificationNumber,
      UserID,
      FirstName,
      LastName,
      DefaultEmailAddress,
      PersonFullName,
      Building,
      RoomNumber,
      Department,
      IsBusinessPurposeCompleted,
      AuthorizationGroup
}
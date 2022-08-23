@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Business User Basic'
@VDM.viewType: #BASIC
@AccessControl.personalData.blocking: #BLOCKED_DATA_EXCLUDED
@AccessControl.privilegedAssociations: ['_User']
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #L
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.representativeKey: 'BusinessPartner'
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE]
//@ObjectModel.alternativeKey: [ { id : 'BusinessPartnerUUID', uniqueness: #UNIQUE, element: ['BusinessPartnerUUID'] }, 
//                               { id : 'UserID', uniqueness: #UNIQUE, element: ['UserID'] } ]
@Metadata.ignorePropagatedAnnotations:true 
define view entity I_BusinessUserBasic as select from but000 as _BusinessPartner
  inner join usr21                                                             on _BusinessPartner.partner_guid = usr21.bpperson 
                                                                               and ( usr21.idadtype = '02' or 
                                                                                     usr21.idadtype = '04' ) 
  association [0..1] to I_User                   as _User                      on $projection.UserID = _User.UserID
  association [0..1] to I_WorkplaceAddress       as _WorkplaceAddress          on $projection.BusinessPartnerUUID = _WorkplaceAddress.BusinessPartnerUUID
  association [0..*] to I_BPUsrRole              as _BusinessPartnerRole       on $projection.BusinessPartner = _BusinessPartnerRole.BusinessPartner
  association [0..*] to I_BPUsrExternalID        as _BusinessPartnerExternalID on $projection.BusinessPartner = _BusinessPartnerExternalID.BusinessPartner
{
  key BusinessPartner,
      BusinessPartnerUUID,
      LastName,
      FirstName,
      PersonFullName,
      FormOfAddress,
      AcademicTitle,
      AcademicSecondTitle,
      CorrespondenceLanguage,
      MiddleName,
      AdditionalLastName,
      BirthName,
      NickName,
      Initials,
      LastNamePrefix,
      LastNameSecondPrefix,
      NameSupplement,
      UserID,
      IsMarkedForArchiving,
      BusinessPartnerIsBlocked,
      CreatedByUser,
      CreationDate,
      CreationTime,
      LastChangedByUser,
      LastChangeDate,
      LastChangeTime,
      IsBusinessPurposeCompleted,
      AuthorizationGroup
}
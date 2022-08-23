@AbapCatalog.sqlViewName: 'IBUSINESSUSER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Business User'
@VDM.viewType: #COMPOSITE
@AccessControl.personalData.blocking: #BLOCKED_DATA_EXCLUDED
@AccessControl.privilegedAssociations: ['_User']
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #L
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.representativeKey: 'BusinessPartner'
//@ObjectModel.alternativeKey: [ { id : 'BusinessPartnerUUID', uniqueness: #UNIQUE, element: ['BusinessPartnerUUID'] }, 
//                               { id : 'UserID', uniqueness: #UNIQUE, element: ['UserID'] } ]
@Metadata.ignorePropagatedAnnotations:true 
@ClientHandling.type: #CLIENT_DEPENDENT
@ClientHandling.algorithm : #SESSION_VARIABLE
@VDM.lifecycle.status: #DEPRECATED
@VDM.lifecycle.successor: 'I_BusinessUserBasic'
define view I_BusinessUser as select from P_BPUsrPerson as _Person
  left outer to one join P_BPUSRPERSONEXTERNALID as _BusinessPartnerExternalID on _Person.BusinessPartner = _BusinessPartnerExternalID.BusinessPartner
  inner join usr21                                                             on _Person.BusinessPartnerUUID = usr21.bpperson 
                                                                               and ( usr21.idadtype = '02' or 
                                                                                     usr21.idadtype = '04' ) 
  association [0..1] to I_User                   as _User                      on $projection.UserID = _User.UserID
  association [0..1] to I_WorkplaceAddress       as _WorkplaceAddress          on $projection.BusinessPartnerUUID = _WorkplaceAddress.BusinessPartnerUUID
  association [0..*] to I_BPUsrRole              as _BusinessPartnerRole       on $projection.BusinessPartner = _BusinessPartnerRole.BusinessPartner
{
  key BusinessPartner,
      BusinessPartnerUUID,
      BPIdentificationNumber,
      LastName,
      FirstName,
      PersonFullName,
      PersonFullNameMaintStatus,
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
      CreationDateTime,
      LastChangedByUser,
      LastChangeDateTime,
      IsBusinessPurposeCompleted,
      AuthorizationGroup
}
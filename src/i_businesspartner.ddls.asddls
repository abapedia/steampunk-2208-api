@AbapCatalog.sqlViewName: 'IBUSINESSPARTNER'
@EndUserText.label: 'Business Partner'
@VDM.viewType: #BASIC
@AccessControl.personalData.blocking: #BLOCKED_DATA_EXCLUDED
@AccessControl.privilegedAssociations:  [ '_BPDataControllerUsage' ]
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #XL
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.representativeKey: 'BusinessPartner'
@ClientHandling.algorithm : #SESSION_VARIABLE
@AccessControl.authorizationCheck:#CHECK
@Analytics: {
  dataCategory: #DIMENSION,
  dataExtraction: {
    enabled: true,
    delta.changeDataCapture: {
      automatic: true
    }
  }
}
@Metadata.allowExtensions: true
@AbapCatalog.preserveKey:true
@Metadata.ignorePropagatedAnnotations: true

define view I_BusinessPartner
  as select from but000
  association [0..1] to I_User                       as _CreatedByUser            on $projection.CreatedByUser = _CreatedByUser.UserID
  association [0..1] to I_User                       as _LastChangedByUser        on $projection.LastChangedByUser = _LastChangedByUser.UserID
  association [0..*] to I_BusinessPartnerDefaultAddr as _DefaultAddress           on $projection.BusinessPartner = _DefaultAddress.BusinessPartner //to be used
  association [0..1] to I_BPCurrentDefaultAddress    as _CurrentDefaultAddress    on $projection.BusinessPartner = _CurrentDefaultAddress.BusinessPartner
  association [0..*] to I_BusinessPartner_to_BP_Role as _BusinessPartnerRole      on $projection.BusinessPartner = _BusinessPartnerRole.BusinessPartner
  association [0..*] to I_Addressindependentemail    as _AddressIndependentEmail  on $projection.IndependentAddressID = _AddressIndependentEmail.AddressID
  association [0..*] to I_Addressindependentfax      as _AddressIndependentFax    on $projection.IndependentAddressID = _AddressIndependentFax.AddressID
  association [0..*] to I_Addressindependentphone    as _AddressIndependentPhone  on $projection.IndependentAddressID = _AddressIndependentPhone.AddressID
  association [0..*] to I_Addressindependentmobile   as _AddressIndependentMobile on $projection.IndependentAddressID = _AddressIndependentMobile.AddressID
  association [0..*] to I_Industries                 as _Industries               on $projection.Industry = _Industries.IndustrySector
  association [0..*] to I_BusinessPartnerIndustry    as _BusinessPartnerIndustry  on $projection.BusinessPartner = _BusinessPartnerIndustry.BusinessPartner
 
//---  Start of FS-BP cds views associations ---//
  association [0..1] to I_BPFinancialServicesExtn    as _BPFinancialServicesExtn  on $projection.BusinessPartner = _BPFinancialServicesExtn.BusinessPartner
  association [0..*] to I_BusinessPartnerRating as _BPRating on $projection.BusinessPartner = _BPRating.BusinessPartner 
  association [0..1] to I_BPCreditWorthiness       as _BPCreditWorthiness on $projection.BusinessPartner = _BPCreditWorthiness.BusinessPartner
  association [0..*] to I_BPEmployment             as _BPEmployment on $projection.BusinessPartner = _BPEmployment.BusinessPartner  
//--- End of FS-BP cds view associations ---//
  

  association [0..1] to E_BP_D                       as _BusinessPartnerExt       on $projection.BusinessPartner = _BusinessPartnerExt.BusinessPartner

  association [0..*] to I_AcademicTitleText          as _AcademicTitleText        on $projection.AcademicTitle = _AcademicTitleText.AcademicTitle

  association [0..1] to I_AcademicTitle              as _AcademicTitleValueHelp   on $projection.AcademicTitle = _AcademicTitleValueHelp.AcademicTitle
  
  association [0..1] to I_BPFinancialServicesExtn    as _BPFinancialServicesExt   on $projection.BusinessPartner = _BPFinancialServicesExt.BusinessPartner

  association [0..*] to I_BuPaIdentification    as _BuPaIdentification  on  $projection.BusinessPartner        = _BuPaIdentification.BusinessPartner
  
  //association [0..*] to I_BPRelationship             as _BPRelationship           on $projection.BusinessPartner = _BPRelationship.BusinessPartner1 
  association [0..*] to I_BPRelationship_2             as _BPRelationship           on $projection.BusinessPartner = _BPRelationship.BusinessPartner1                                                                        
  association [0..*] to I_BPDataControllerUsage as _BPDataControllerUsage on  $projection.BusinessPartner = _BPDataControllerUsage.BusinessPartner
  association [0..1] to I_FormOfAddress         as _FormOfAddress         on $projection.FormOfAddress = _FormOfAddress.FormOfAddress
{
  key BusinessPartner,
      BusinessPartnerCategory,
      AuthorizationGroup,
      BusinessPartnerUUID,
      PersonNumber,
      ETag,
      BusinessPartnerName,
      BusinessPartnerFullName,
      CreatedByUser,
      CreationDate,
      CreationTime,
      LastChangedByUser,
      LastChangeDate,
      LastChangeTime,
      BusinessPartnerIsBlocked,
      IsBusinessPurposeCompleted,
      FirstName,
      LastName,
      PersonFullName,
      OrganizationBPName1,
      OrganizationBPName2,
      OrganizationBPName3,
      OrganizationBPName4,
      InternationalLocationNumber1,
      InternationalLocationNumber2,
      InternationalLocationNumber3,
      LegalForm,
      OrganizationFoundationDate,
      OrganizationLiquidationDate,
      Industry,
      IsNaturalPerson,
      IsFemale,
      IsMale,
      IsSexUnknown,
      FormOfAddress,
      AcademicTitle,
      AcademicTitle2,
      NameFormat,
      NameCountry,
      BusinessPartnerGrouping,
      BusinessPartnerType,
      MiddleName,
      AdditionalLastName,
      GroupBusinessPartnerName1,
      GroupBusinessPartnerName2,
      CorrespondenceLanguage,
      Language,
      SearchTerm1,
      SearchTerm2,
      BPLastNameSearchHelp,
      BPFirstNameSearchHelp,
      BusinessPartnerNicknameLabel,
      IndependentAddressID,
      IsActiveEntity,
      BirthDate,
      IsMarkedForArchiving,
      ContactPermission,
      BusinessPartnerIDByExtSystem,
      LegalEntityOfOrganization,
      BusinessPartnerPrintFormat,
      BusinessPartnerDataOriginType,
      BusinessPartnerIsNotReleased,
      IsNotContractuallyCapable,
      BusinessPartnerOccupation,
      BusPartMaritalStatus,
      BusPartNationality,
      NonResidentCompanyOriginCntry,
      BusinessPartnerSalutation,
      BusinessPartnerBirthName,
      BusinessPartnerSupplementName,
      BusinessPartnerBirthplaceName,
      NaturalPersonEmployerName,
      BusinessPartnerDeathDate,
      BusinessPartnerBirthDateStatus,
      BusinessPartnerGroupType,
      LastNamePrefix,
      LastNameSecondPrefix,
      Initials,
      GenderCodeName
}
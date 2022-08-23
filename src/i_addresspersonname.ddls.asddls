@AbapCatalog.sqlViewName: 'IADDRPERSONNAME'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Person Name'
//@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MIXED
@ObjectModel.representativeKey: 'AddressPersonID'
@VDM: {
  viewType: #BASIC,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}

define view I_AddressPersonName
  as select from adrp
  association [0..1] to I_FormOfAddress    as _FormOfAddress          on $projection.FormOfAddress = _FormOfAddress.FormOfAddress

  association [0..1] to I_NameSupplement   as _NameSupplement         on $projection.PersonNameSupplementCode = _NameSupplement.PersonNameSupplementCode

  association [0..1] to I_FamilyNamePrefix as _FamilyNamePrefix       on $projection.FamilyNamePrefix = _FamilyNamePrefix.FamilyNamePrefix

  association [0..1] to I_FamilyNamePrefix as _FamilyNameSecondPrefix on $projection.FamilyNameSecondPrefix = _FamilyNameSecondPrefix.FamilyNamePrefix

  association [0..1] to I_AcademicTitle    as _AcademicTitle          on $projection.AcademicTitle = _AcademicTitle.AcademicTitle

  association [0..1] to I_AcademicTitle    as _AcademicTitle2         on $projection.AcademicTitle2 = _AcademicTitle2.AcademicTitle
  
  association [0..1] to I_AddressRepresentation        as _AddressRepresentationCode     on  $projection.AddressRepresentationCode = _AddressRepresentationCode.AddressRepresentationCode
  

{
  key AddressPersonID,
  key AddressRepresentationCode,
      FormOfAddress,
      GivenName,
      FamilyName,
      PersonBirthName,
      PersonMiddleName,
      SecondFamilyName,
      AcademicTitle,
      AcademicTitle2,
      FamilyNamePrefix,
      FamilyNameSecondPrefix,
      PersonNameSupplementCode,
      PersonNickname,
      NameInitials,
      PersonFullName,
      CorrespondenceLanguage,
      AddressPersonSearchTerm1,
      AddressPersonSearchTerm2
}
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Business User Logon Details'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #COMPOSITE
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE]
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}

/*+[hideWarning] { "IDS" : [ "CARDINALITY_CHECK" ]  }       UserID is not key of I_BusinessUser*/
define view entity I_IAMBusinessUserLogonDetails
  as select from p_aps_iam_business_user
  association [1..1] to I_BusinessUserBasic as _BusinessUser on _BusinessUser.UserID = $projection.UserID
  association [1..1] to I_Language          as _Language     on _Language.Language = $projection.UserLogonLanguage
  association [1..1] to I_TimeZone          as _TimeZone     on _TimeZone.TimeZoneID = $projection.UserLocalTimeZone
{
  key UserID,
      UserName,
      UserGroup,
      UserValidFrom,
      UserValidTo,
      UserIsLocked,
      UserLockStatus,
      UserLogonLanguage,
      UserDecimalFormat,
      UserDateFormat,
      UserTimeFormat,
      UserLocalTimeZone,
      UserLastLogonDate,
      UserLastLogonTime,
      LastChangedByUser,
      LastChangedDate,
      LastChangedTime
}
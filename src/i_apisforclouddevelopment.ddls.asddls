@AbapCatalog.sqlViewName: 'I_API_CLD_DEV'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'APIs for Use in Cloud Development'
define view I_APIsForCloudDevelopment
  as select from ARS_APIS_RELEASED_FOR_C1_SCP
{
  key ReleasedObjectType,
  key ReleasedObjectName,
  key ObjectDirectoryType,
  key ObjectDirectoryName,
      ReleaseState,
      ReleaseStateDescription
}
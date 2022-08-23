// ***************************************************************************************
// DESCRIPTION
// The view returns objects which were released for system-internal use (contract C1)
// and visibility "Use in SAP Cloud Platform", as specified in the ABAP Development Tools,
// using the API State tab of the Properties view.
// 
// VIEW ELEMENTS
// ReleasedObjectType
//   Object type of the object which is released. In most cases, this object type is
//   identical with the ObjectDirectoryType.
//   Exceptions from this rule are the following:
//   - CDS Entities     (ReleasedObjectType = CDS_STOB, ObjectDirectoryType = DDLS)
//   - BAdI Definitions (ReleasedObjectType = BADI_DEF, ObjectDirectoryType = ENHS)
//   - Function Modules (ReleasedObjectType = FUNC,     ObjectDirectoryType = FUGR)
// ReleasedObjectName
//   Name of the object which is released.
// ObjectDirectoryType
//   Object type of the released object in the object directory (field OBJECT of table
//   TADIR). In most cases, this object type is identical with the ReleasedObjectType.
//   Exceptions from this rule are the following:
//   - Data Definitions  (ObjectDirectoryType = DDLS, ReleasedObjectType = CDS_STOB)
//   - Enhancement Spots (ObjectDirectoryType = ENHS, ReleasedObjectType = BADI_DEF)
//   - Function Groups   (ObjectDirectoryType = FUGR, ReleasedObjectType = FUNC)
// ObjectDirectoryName
//   Name of the released object in the object directory (field OBJ_NAME in table TADIR).
// ReleaseState
//   Release state of the object which is released.
//   Allowed values are:
//   - RELEASED: Object is released for system-internal use.
//   - DEPRECATED: Object was formerly released but is now deprecated. In the ABAP
//     Development Tools, its successor is displayed on the API State tab of the
//     Properties view.
// ReleaseStateDescription
//   Language-dependent description of the release state value.
// ***************************************************************************************
@AbapCatalog.sqlViewName: 'I_API_SCP'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'APIs for Use in SAP Cloud Platform'
define view I_APIsForSAPCloudPlatform
  as select from ARS_APIS_RELEASED_FOR_C1_SCP
{
  key ReleasedObjectType,
  key ReleasedObjectName,
  key ObjectDirectoryType,
  key ObjectDirectoryName,
      ReleaseState,
      ReleaseStateDescription
}
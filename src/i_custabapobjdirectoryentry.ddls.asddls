/* ---------------------------------------------------------------
This view provides access to the set of customer defined objects
in the object directory. This information is essential for
either gaining an overview of own developments and for
determining transport properties.
A customer object is defined as an object that is assigned to a
customer package, a package assigned to a software component
with component type 'C'.
--------------------------------------------------------------- */
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Customer ABAP Object Directory Entry'
@VDM.viewType: #COMPOSITE
define view entity I_CustABAPObjDirectoryEntry
  as select from I_ABAPObjectDirectoryEntry
    join         I_CustABAPPackage on I_CustABAPPackage.ABAPPackage = I_ABAPObjectDirectoryEntry.ABAPPackage
  association [0..1] to I_CustABAPPackage as _CustABAPPackage on $projection.ABAPPackage = _CustABAPPackage.ABAPPackage
{
  key ABAPObjectCategory,
  key ABAPObjectType,
  key ABAPObject,
      ABAPObjectResponsibleUser,
      ABAPObjectIsDeleted,
      ABAPPackage,
      ABAPSoftwareComponent
}
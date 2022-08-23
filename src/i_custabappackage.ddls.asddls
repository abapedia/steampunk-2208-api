/* ---------------------------------------------------------------
This view provides access to the set of customer defined packages
for software structuring and delivery. Customer packages are
defined by the fact that they are assigned to a software component
with component type 'B' (add-on), 'J' (local) or 'K' (customer)
--------------------------------------------------------------- */
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Customer ABAP Package'
@VDM.viewType: #COMPOSITE
@ObjectModel.compositionRoot: true
@ObjectModel.representativeKey: 'ABAPPackage'
define view entity I_CustABAPPackage
  as select from I_ABAPPackage
    join         I_ABAPSoftwareComponent on I_ABAPSoftwareComponent.ABAPSoftwareComponent = I_ABAPPackage.ABAPSoftwareComponent
{
  key ABAPPackage,
      ABAPPackageResponsibleUser,
      ABAPSoftwareComponent,
      ABAPNamespace,
      CreatedByUser,
      CreationDate,
      LastChangedByUser,
      LastChangeDate
}
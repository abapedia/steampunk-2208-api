CLASS cl_xco_bdef_implementatn_typ_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      managed                  TYPE REF TO cl_xco_bdef_implementation_typ READ-ONLY,
      unmanaged                TYPE REF TO cl_xco_bdef_implementation_typ READ-ONLY,
      abstract                 TYPE REF TO cl_xco_bdef_implementation_typ READ-ONLY,
      projection               TYPE REF TO cl_xco_bdef_implementation_typ READ-ONLY,
      interface                TYPE REF TO cl_xco_bdef_implementation_typ READ-ONLY,
      extension                TYPE REF TO cl_xco_bdef_implementation_typ READ-ONLY,
      extension_for_projection TYPE REF TO cl_xco_bdef_implementation_typ READ-ONLY.

ENDCLASS.

CLASS cl_xco_bdef_implementatn_typ_f IMPLEMENTATION.
ENDCLASS.
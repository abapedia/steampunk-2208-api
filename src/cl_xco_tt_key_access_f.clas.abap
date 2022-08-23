CLASS cl_xco_tt_key_access_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      unique_hashed     TYPE REF TO cl_xco_tt_key_access READ-ONLY,
      unique_sorted     TYPE REF TO cl_xco_tt_key_access READ-ONLY,
      non_unique_sorted TYPE REF TO cl_xco_tt_key_access READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_accessmode        TYPE cl_xco_tt_key_access=>tv_accessmode
          iv_unique            TYPE cl_xco_tt_key_access=>tv_unique
        RETURNING
          VALUE(ro_key_access) TYPE REF TO cl_xco_tt_key_access.

ENDCLASS.

CLASS cl_xco_tt_key_access_f IMPLEMENTATION.
ENDCLASS.
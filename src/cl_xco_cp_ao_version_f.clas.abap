CLASS cl_xco_cp_ao_version_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      list     TYPE cl_xco_ao_version=>list READ-ONLY,
      active   TYPE REF TO cl_xco_ao_version READ-ONLY,
      inactive TYPE REF TO cl_xco_ao_version READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value          TYPE cl_xco_ao_version=>tv_value
        RETURNING
          VALUE(ro_version) TYPE REF TO cl_xco_ao_version.

ENDCLASS.

CLASS cl_xco_cp_ao_version_f IMPLEMENTATION.
ENDCLASS.
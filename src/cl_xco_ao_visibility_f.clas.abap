CLASS cl_xco_ao_visibility_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      list      TYPE cl_xco_ao_visibility=>list READ-ONLY,
      public    TYPE REF TO cl_xco_ao_visibility READ-ONLY,
      protected TYPE REF TO cl_xco_ao_visibility READ-ONLY,
      private   TYPE REF TO cl_xco_ao_visibility READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value             TYPE cl_xco_ao_visibility=>tv_value
        RETURNING
          VALUE(ro_visibility) TYPE REF TO cl_xco_ao_visibility.

ENDCLASS.

CLASS cl_xco_ao_visibility_f IMPLEMENTATION.
ENDCLASS.
CLASS cl_xco_ao_parameter_kind_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      importing TYPE REF TO cl_xco_ao_parameter_kind READ-ONLY,
      exporting TYPE REF TO cl_xco_ao_parameter_kind READ-ONLY,
      changing  TYPE REF TO cl_xco_ao_parameter_kind READ-ONLY,
      returning TYPE REF TO cl_xco_ao_parameter_kind READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value       TYPE cl_xco_ao_parameter_kind=>tv_value
        RETURNING
          VALUE(ro_kind) TYPE REF TO cl_xco_ao_parameter_kind.

ENDCLASS.

CLASS cl_xco_ao_parameter_kind_f IMPLEMENTATION.
ENDCLASS.
CLASS cl_cds_test_data_for_unit_conv DEFINITION
  PUBLIC
  FINAL
  CREATE PROTECTED
  FOR TESTING.

  PUBLIC SECTION.

    DATA: BEGIN OF unit_data,
      quantity TYPE p LENGTH 31 DECIMALS 14,
      source_unit TYPE c LENGTH 3,
      target_unit TYPE c LENGTH 3,
      client TYPE c LENGTH 3,
      error_handling TYPE c LENGTH 20,
      retval TYPE p LENGTH 31 DECIMALS 14,
      END OF unit_data.

    TYPES:
      cdsutf_err_handling TYPE c LENGTH 20,
      cdsutf_quan         TYPE p LENGTH 16 DECIMALS 14,
      cdsutf_unit         TYPE c LENGTH 3.

    METHODS:

      constructor,
      for_parameters
        IMPORTING
          quantity         TYPE cdsutf_quan
          source_unit      TYPE cdsutf_unit
          target_unit      TYPE cdsutf_unit
          client           TYPE sy-mandt DEFAULT sy-mandt
          error_handling   TYPE cdsutf_err_handling DEFAULT 'FAIL_ON_ERROR'

        RETURNING
          VALUE(test_data) TYPE REF TO if_cds_test_data.

ENDCLASS.

CLASS cl_cds_test_data_for_unit_conv IMPLEMENTATION.
ENDCLASS.
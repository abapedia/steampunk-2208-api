CLASS cl_cds_test_data_for_curr_conv DEFINITION
  PUBLIC
  FINAL
  CREATE PROTECTED
  FOR TESTING.

  PUBLIC SECTION.

    TYPES:
          cdsutf_bool         TYPE c LENGTH 1,
          cdsutf_date         TYPE d,
          cdsutf_err_handling TYPE c LENGTH 20,
          cdsutf_rate_type    TYPE c LENGTH 4,
          cdsutf_cuky         TYPE c LENGTH 5,
          cdsutf_amount       TYPE p LENGTH 16 DECIMALS 14.

    METHODS:

      constructor,
      for_parameters
        IMPORTING
          amount             TYPE cdsutf_amount
          source_currency    TYPE cdsutf_cuky
          target_currency    TYPE cdsutf_cuky
          exchange_rate_date TYPE cdsutf_date
          exchange_rate_type TYPE cdsutf_rate_type DEFAULT 'M'
          client             TYPE sy-mandt DEFAULT sy-mandt
          round              TYPE cdsutf_bool  DEFAULT 'X'
          decimal_shift      TYPE cdsutf_bool DEFAULT 'X'
          decimal_shift_back TYPE cdsutf_bool DEFAULT 'X'
          error_handling     TYPE cdsutf_err_handling DEFAULT 'FAIL_ON_ERROR'

        RETURNING
          VALUE(test_data)           TYPE REF TO if_cds_test_data.

ENDCLASS.

CLASS cl_cds_test_data_for_curr_conv IMPLEMENTATION.
ENDCLASS.
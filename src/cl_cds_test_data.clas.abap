CLASS cl_cds_test_data DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE
  FOR TESTING.

  PUBLIC SECTION.

    TYPES:
      cdsutf_amount TYPE p LENGTH 16 DECIMALS 14.
    TYPES:
      cdsutf_quan   TYPE p LENGTH 16 DECIMALS 14.
    CLASS-METHODS create
      IMPORTING
        !i_data       TYPE ANY TABLE
      RETURNING
        VALUE(r_data) TYPE REF TO if_cds_test_data.
    CLASS-METHODS create_currency_conv_data
      IMPORTING
        !output                    TYPE cdsutf_amount
      RETURNING
        VALUE(curr_conv_test_data) TYPE REF TO cl_cds_test_data_for_curr_conv.
    CLASS-METHODS create_unit_conv_data
      IMPORTING
        !output                    TYPE cdsutf_quan
      RETURNING
        VALUE(unit_conv_test_data) TYPE REF TO cl_cds_test_data_for_unit_conv.
    CLASS-METHODS create_null_values_config
      IMPORTING
        !i_elems_with_null_vals TYPE if_cds_null_values_config=>ty_element_names OPTIONAL
      RETURNING
        VALUE(r_config)         TYPE REF TO if_cds_null_values_config.
    CLASS-METHODS create_parameter_values_config
      IMPORTING
        !i_parm_vals    TYPE if_cds_parameter_values_config=>ty_parameter_value_pairs OPTIONAL
      RETURNING
        VALUE(r_config) TYPE REF TO if_cds_parameter_values_config.
    CLASS-METHODS create_access_control_data
      IMPORTING
        !i_role_authorizations TYPE role_authorizations
      RETURNING
        VALUE(r_instance)      TYPE REF TO if_cds_access_control_data.

ENDCLASS.

CLASS cl_cds_test_data IMPLEMENTATION.
ENDCLASS.
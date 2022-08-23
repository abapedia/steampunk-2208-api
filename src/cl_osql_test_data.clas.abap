CLASS cl_osql_test_data DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE
  FOR TESTING.

  PUBLIC SECTION.
    CLASS-METHODS create
      IMPORTING
        !i_data       TYPE ANY TABLE
      RETURNING
        VALUE(r_data) TYPE REF TO if_osql_test_data.
    CLASS-METHODS create_null_values_config
      IMPORTING
        !i_elems_with_null_vals TYPE if_osql_null_values_config=>ty_element_names OPTIONAL
      RETURNING
        VALUE(r_config)         TYPE REF TO if_osql_null_values_config.
    CLASS-METHODS create_parameter_values_config
      IMPORTING
        !i_parm_vals    TYPE if_osql_param_values_config=>ty_parameter_value_pairs OPTIONAL
      RETURNING
        VALUE(r_config) TYPE REF TO if_osql_param_values_config.
    CLASS-METHODS create_access_control_data
      IMPORTING
      !i_role_authorizations TYPE role_authorizations
      RETURNING
      VALUE(r_instance) TYPE REF TO if_cds_access_control_data.

ENDCLASS.

CLASS cl_osql_test_data IMPLEMENTATION.
ENDCLASS.
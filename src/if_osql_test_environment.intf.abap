INTERFACE if_osql_test_environment
  PUBLIC.

  CONSTANTS:
              duration_short  TYPE string VALUE 'SHORT',
              duration_meduim TYPE string VALUE 'MEDIUM',
              duration_long   TYPE string VALUE 'LONG'.

  TYPES:
    BEGIN OF ty_qlast_double,
      name TYPE c LENGTH 40,
      type TYPE string,
    END OF ty_qlast_double.
  TYPES:
    ty_qlast_doubles TYPE STANDARD TABLE OF ty_qlast_double.

  TYPES:
    ty_s_sobjname  TYPE c LENGTH 30,
    ty_t_sobjnames TYPE STANDARD TABLE OF ty_s_sobjname WITH DEFAULT KEY.

  TYPES:                                   " Type to hold the tdc data for the dependency parameters
    BEGIN OF ty_double_dependency_info,
      tdc_name                   TYPE c LENGTH 30,  " TDC Name
      tdc_rfcdest                TYPE rfcdest,     " RFC destination from the current system where the TDC is present
      tdc_version                TYPE n LENGTH 8,   " TDC version, default will be 1
      tdc_variant                TYPE c LENGTH 30,    " TDC Variant Name
      tdc_parameter              TYPE c LENGTH 30,    " TDC Parameter Name
      dependency_parameter_name  TYPE string,      " Dependency parameter name
      dependency_parameter_value TYPE string,      " Dependency parameter value
    END OF ty_double_dependency_info.
  TYPES:
     tty_double_dependency_info TYPE STANDARD TABLE OF ty_double_dependency_info WITH EMPTY KEY.
  TYPES:                                                   " Type to hold the tdc data for the dependency
    BEGIN OF ty_double_tdc_info,
      tdc_name          TYPE c LENGTH 30,                      " TDC Name
      tdc_rfcdest       TYPE rfcdest,                         " RFC destination from the current system where the TDC is present
      tdc_version       TYPE n LENGTH 8,                       " TDC version, default will be 1
      tdc_variant       TYPE c LENGTH 30,                        " TDC Variant Name
      tdc_parameter     TYPE c LENGTH 30,                        " TDC Parameter Name
      dependency_name   TYPE string,                          " Name of the dependency for which the double data is getting setup
      dependency_params TYPE tty_double_dependency_info,      " Table containing the list of parameters and their value either as references to TDC variant-parameter or value directly
    END OF ty_double_tdc_info.
  TYPES:
     tty_double_tdc_info TYPE STANDARD TABLE OF ty_double_tdc_info WITH EMPTY KEY.  "Table type to hold the tdc data for the dependency
  METHODS insert_from_tdc
      IMPORTING
        !it_double_tdc_data TYPE tty_double_tdc_info.
  METHODS destroy.
  METHODS clear_doubles.
  METHODS get_double
    IMPORTING
      VALUE(i_name) TYPE csequence
    RETURNING
      VALUE(r_result) TYPE REF TO if_osql_stub.
  METHODS enable_double_redirection.
  METHODS disable_double_redirection.
  METHODS insert_test_data
    IMPORTING
              !i_data                 TYPE ANY TABLE
              !i_parameter_values     TYPE if_osql_param_values_config=>ty_parameter_value_pairs OPTIONAL
              !i_null_values          TYPE if_osql_null_values_config=>ty_element_names OPTIONAL
              !i_client               TYPE mandt OPTIONAL
    RETURNING VALUE(r_result)         TYPE REF TO if_osql_stub.
  METHODS get_access_control_double
    RETURNING
      VALUE(rv_access_control_double) TYPE REF TO if_cds_access_control_double.

ENDINTERFACE.
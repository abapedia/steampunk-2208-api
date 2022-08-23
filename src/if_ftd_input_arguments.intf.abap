INTERFACE if_ftd_input_arguments
  PUBLIC.
  METHODS
    get_importing_parameter
      IMPORTING
        name TYPE abap_parmname
      RETURNING
        VALUE(result) TYPE REF TO data
    RAISING
      cx_ftd_parameter_not_found.
  METHODS
    is_importing_param_supplied
      IMPORTING
        name TYPE abap_parmname
      RETURNING
        VALUE(result) TYPE abap_bool
    RAISING
      cx_ftd_parameter_not_found.
  METHODS
    get_changing_parameter
      IMPORTING
        name TYPE abap_parmname
      RETURNING
        VALUE(result) TYPE REF TO data
    RAISING
      cx_ftd_parameter_not_found.
  METHODS
    is_changing_param_supplied
      IMPORTING
        name TYPE abap_parmname
      RETURNING
        VALUE(result) TYPE abap_bool
    RAISING
      cx_ftd_parameter_not_found.
  METHODS
    get_table_parameter
      IMPORTING
        name TYPE abap_parmname
      RETURNING
        VALUE(result) TYPE REF TO data
    RAISING
      cx_ftd_parameter_not_found.
  METHODS
    is_table_param_supplied
      IMPORTING
        name TYPE abap_parmname
      RETURNING
        VALUE(result) TYPE abap_bool
    RAISING
      cx_ftd_parameter_not_found.
  METHODS get_iterator
    RETURNING
      VALUE(result) TYPE REF TO if_ftd_arguments_iterator.

ENDINTERFACE.
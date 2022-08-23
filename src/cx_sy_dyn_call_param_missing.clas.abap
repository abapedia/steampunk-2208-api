CLASS cx_sy_dyn_call_param_missing DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_dyn_call_parameter_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_dyn_call_param_missing TYPE c LENGTH 32 VALUE 'B4D6C63BEACF517BE10000000A11447B' ##NO_TEXT.
    CONSTANTS function_param_missing TYPE c LENGTH 32 VALUE 'C2D6C63BEACF517BE10000000A11447B' ##NO_TEXT.
    CONSTANTS perform_param_missing TYPE c LENGTH 32 VALUE 'A0B5223D6CB0B01FE10000000A11447B' ##NO_TEXT.
    CONSTANTS parameter_type_not_released TYPE c LENGTH 32 VALUE 'FA163ED8056B1EECB38BD93254FC44EE' ##NO_TEXT.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      VALUE(classname) TYPE string OPTIONAL
      VALUE(methodname) TYPE string OPTIONAL
      VALUE(function) TYPE string OPTIONAL
      VALUE(form) TYPE string OPTIONAL
      VALUE(progname) TYPE string OPTIONAL
      VALUE(parameter) TYPE string OPTIONAL
      VALUE(param_number) TYPE int4 OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_dyn_call_param_missing IMPLEMENTATION.
ENDCLASS.
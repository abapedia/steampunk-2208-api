CLASS cx_sy_dyn_call_excp_not_found DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_dyn_call_parameter_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_dyn_call_excp_not_found TYPE c LENGTH 32
 VALUE 'AA09B8396F051547E10000000A11447B'. "#EC NOTEXT

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

CLASS cx_sy_dyn_call_excp_not_found IMPLEMENTATION.
ENDCLASS.
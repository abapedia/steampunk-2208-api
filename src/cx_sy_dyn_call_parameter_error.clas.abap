CLASS cx_sy_dyn_call_parameter_error DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_dyn_call_error
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_dyn_call_parameter_error TYPE c LENGTH 32
 VALUE '9A1E6C3CA8FB1211E10000000A11447B'. "#EC NOTEXT
    DATA parameter TYPE string READ-ONLY.
    DATA param_number TYPE int4 READ-ONLY.

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

CLASS cx_sy_dyn_call_parameter_error IMPLEMENTATION.
ENDCLASS.
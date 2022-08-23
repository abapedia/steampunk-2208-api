CLASS cx_sy_dyn_call_error DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_dyn_call_error TYPE c LENGTH 32
 VALUE '94D2C63BEACF517BE10000000A11447B'. "#EC NOTEXT
    DATA classname TYPE string READ-ONLY.
    DATA methodname TYPE string READ-ONLY.
    DATA function TYPE string READ-ONLY.
    DATA form TYPE string READ-ONLY.
    DATA progname TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      VALUE(classname) TYPE string OPTIONAL
      VALUE(methodname) TYPE string OPTIONAL
      VALUE(function) TYPE string OPTIONAL
      VALUE(form) TYPE string OPTIONAL
      VALUE(progname) TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_dyn_call_error IMPLEMENTATION.
ENDCLASS.
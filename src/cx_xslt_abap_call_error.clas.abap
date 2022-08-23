CLASS cx_xslt_abap_call_error DEFINITION
  PUBLIC
  INHERITING FROM cx_xslt_system_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_xslt_abap_call_error TYPE c LENGTH 32
 VALUE '3BE6BEC3BDC03A34E10000000A1148F9'.
    CONSTANTS cx_xslt_abap_call_method_error TYPE c LENGTH 32
 VALUE '3BE6BEDABDC03A34E10000000A1148F9'.
    CONSTANTS cx_xslt_abap_call_post_error TYPE c LENGTH 32
 VALUE '3BE6BED4BDC03A34E10000000A1148F9'.
    CONSTANTS cx_xslt_abap_call_pre_error TYPE c LENGTH 32
 VALUE '3BE6BECEBDC03A34E10000000A1148F9'.
    DATA methodname TYPE string READ-ONLY.
    DATA classname TYPE string READ-ONLY.
    DATA exception TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      VALUE(methodname) TYPE string OPTIONAL
      VALUE(classname) TYPE string OPTIONAL
      VALUE(exception) TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_xslt_abap_call_error IMPLEMENTATION.
ENDCLASS.
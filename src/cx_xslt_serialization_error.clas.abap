CLASS cx_xslt_serialization_error DEFINITION
  PUBLIC
  INHERITING FROM cx_xslt_system_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_xslt_serialization_error TYPE c LENGTH 32 VALUE '3BE6BF6CBDC03A34E10000000A1148F9'. "#EC NOTEXT
    DATA abap_position TYPE string.
    DATA classname TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      VALUE(abap_position) TYPE string OPTIONAL
      VALUE(classname) TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_xslt_serialization_error IMPLEMENTATION.
ENDCLASS.
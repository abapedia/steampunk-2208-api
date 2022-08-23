CLASS cx_xslt_deserialization_error DEFINITION
  PUBLIC
  INHERITING FROM cx_xslt_system_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_xslt_deserialization_error TYPE c LENGTH 32
 VALUE '3BE6BF7BBDC03A34E10000000A1148F9'.
    DATA tree_position TYPE string.
    DATA classname TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      VALUE(tree_position) TYPE string OPTIONAL
      VALUE(classname) TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_xslt_deserialization_error IMPLEMENTATION.
ENDCLASS.
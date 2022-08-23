CLASS cx_xsdany_parse_error DEFINITION
  PUBLIC
  INHERITING FROM cx_xsdany_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_xsdany_parse_error TYPE c LENGTH 32 VALUE '001CC41212C202DC999FDAC55A544FC2'. "#EC NOTEXT
    DATA error_text TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !error_text TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_xsdany_parse_error IMPLEMENTATION.
ENDCLASS.
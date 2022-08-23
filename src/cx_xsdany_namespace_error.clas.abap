CLASS cx_xsdany_namespace_error DEFINITION
  PUBLIC
  INHERITING FROM cx_xsdany_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS in TYPE c LENGTH 32 VALUE '8003BA89FA551DDE80B96317C22F4373'. "#EC NOTEXT
    CONSTANTS cx_xsdany_namespace_error TYPE c LENGTH 32 VALUE '8003BA89FA551DDE80B9662664EF83FB'. "#EC NOTEXT
    CONSTANTS ex TYPE c LENGTH 32 VALUE '001560AA0E0802DCB0C9916779AF81FA'. "#EC NOTEXT
    DATA namespace TYPE string.
    DATA namespace_in TYPE string.
    DATA namespace_ex TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !namespace TYPE string
      !namespace_in TYPE string
      !namespace_ex TYPE string.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_xsdany_namespace_error IMPLEMENTATION.
ENDCLASS.
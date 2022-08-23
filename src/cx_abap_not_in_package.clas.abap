CLASS cx_abap_not_in_package DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_abap_not_in_package TYPE c LENGTH 32 VALUE '468B32C54B041EE6BDA15A0F4A378D7F' ##NO_TEXT.
    CONSTANTS error_in_called_method TYPE c LENGTH 32 VALUE '0050568E52B002EE91D363B5D53C814E' ##NO_TEXT.
    DATA table TYPE string.
    DATA method TYPE string.
    DATA exception TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !table TYPE string OPTIONAL
      !method TYPE string OPTIONAL
      !exception TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_abap_not_in_package IMPLEMENTATION.
ENDCLASS.
CLASS cx_conversion_no_duration DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_conversion_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_conversion_no_duration TYPE c LENGTH 32 VALUE '8F8487432306D16DE10000000A15523C'. "#EC NOTEXT
    CONSTANTS wrong_xml_value TYPE c LENGTH 32 VALUE '908487432306D16DE10000000A15523C'. "#EC NOTEXT
    CONSTANTS wrong_abap_value TYPE c LENGTH 32 VALUE '978487432306D16DE10000000A15523C'. "#EC NOTEXT
    DATA xmlvalue TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !xmlvalue TYPE string OPTIONAL.
    METHODS get_abapvalue
    RETURNING
      VALUE(abapvalue) TYPE sxsdduration.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_conversion_no_duration IMPLEMENTATION.
ENDCLASS.
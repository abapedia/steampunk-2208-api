CLASS cx_st_match_element DEFINITION
  PUBLIC
  INHERITING FROM cx_st_match_named
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_st_match_element TYPE c LENGTH 32 VALUE '3EC1332089174849A01E1E80EFFB7FEF'. "#EC NOTEXT
    CONSTANTS cx_st_match_element_close TYPE c LENGTH 32 VALUE '96858A09342E26429DA8F92F365C765A'. "#EC NOTEXT
    CONSTANTS cx_st_match_element_close_ns TYPE c LENGTH 32 VALUE 'D79846DB5F914A4DA0C78A5F26310A11'. "#EC NOTEXT
    CONSTANTS cx_st_match_element_open TYPE c LENGTH 32 VALUE 'C950A00F95B0E448B4D2AC2483BE13FC'. "#EC NOTEXT
    CONSTANTS cx_st_match_element_open_ns TYPE c LENGTH 32 VALUE '544FAE4641562346A1372144E7396586'. "#EC NOTEXT

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !st_progname TYPE string OPTIONAL
      !xml_offset TYPE i OPTIONAL
      !xml_path TYPE string OPTIONAL
      !st_ic TYPE i OPTIONAL
      !st_timestamp TYPE scx_st_tstamp OPTIONAL
      !actual_token_type TYPE c OPTIONAL
      !actual_name TYPE string OPTIONAL
      !actual_namespace TYPE string OPTIONAL
      !actual_value TYPE string OPTIONAL
      !expected_name TYPE string OPTIONAL
      !expected_namespace TYPE string OPTIONAL
      !expected_open TYPE abap_bool OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_st_match_element IMPLEMENTATION.
ENDCLASS.
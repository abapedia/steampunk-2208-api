CLASS cx_st_match_named DEFINITION
  PUBLIC
  INHERITING FROM cx_st_match
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_st_match_named TYPE c LENGTH 32 VALUE 'C0BAF002C0CB574281D2A6949932FAB5'. "#EC NOTEXT
    DATA expected_name TYPE string.
    DATA expected_namespace TYPE string.

    DATA expected_open TYPE abap_bool.

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

CLASS cx_st_match_named IMPLEMENTATION.
ENDCLASS.
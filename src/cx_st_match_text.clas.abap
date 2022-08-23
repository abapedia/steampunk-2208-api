CLASS cx_st_match_text DEFINITION
  PUBLIC
  INHERITING FROM cx_st_match
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_st_match_text TYPE c LENGTH 32 VALUE '4F82A2E465D62E4CB8B831BACB1ECA09'. "#EC NOTEXT
    DATA expected_value TYPE string.

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
      !expected_value TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_st_match_text IMPLEMENTATION.
ENDCLASS.
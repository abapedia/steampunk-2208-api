CLASS cx_st_match_attribute DEFINITION
  PUBLIC
  INHERITING FROM cx_st_match_named
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_st_match_attribute TYPE c LENGTH 32 VALUE '934B27410EF73349A59405F1603F9B47' ##NO_TEXT.
    CONSTANTS cx_st_match_attribute_close_ns TYPE c LENGTH 32 VALUE '09D2E7F1E30D4A448E362C23276105ED' ##NO_TEXT.
    CONSTANTS cx_st_match_attribute_open_ns TYPE c LENGTH 32 VALUE '880130829BDE05499DBC61C77C39E46D' ##NO_TEXT.
    CONSTANTS cx_st_match_attribute_open TYPE c LENGTH 32 VALUE '179826F08F784742846EFABA7DC69DEB' ##NO_TEXT.
    CONSTANTS cx_st_match_attribute_close TYPE c LENGTH 32 VALUE '4DC5015E03505B40964B1B880322E845' ##NO_TEXT.
    CONSTANTS cx_st_match_attribute_value TYPE c LENGTH 32 VALUE '005056AA0E031EDAB6E0BE7E85BC615D' ##NO_TEXT.

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

CLASS cx_st_match_attribute IMPLEMENTATION.
ENDCLASS.
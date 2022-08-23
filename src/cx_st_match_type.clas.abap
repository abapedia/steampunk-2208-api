CLASS cx_st_match_type DEFINITION
  PUBLIC
  INHERITING FROM cx_st_match
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_st_match_type TYPE c LENGTH 32 VALUE '1955EE08594EDD42BD8EB884F018D63E' ##NO_TEXT.
    CONSTANTS cx_st_match_type_value TYPE c LENGTH 32 VALUE '82F418071EA1B249982DCEDD1B9F6702' ##NO_TEXT.
    DATA expected_type TYPE c LENGTH 1.

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
      !expected_type TYPE c OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_st_match_type IMPLEMENTATION.
ENDCLASS.
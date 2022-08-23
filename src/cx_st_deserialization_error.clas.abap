CLASS cx_st_deserialization_error DEFINITION
  PUBLIC
  INHERITING FROM cx_st_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_st_deserialization_error TYPE c LENGTH 32 VALUE 'FB5F8F3F36CEC173E10000000A114BF5' ##NO_TEXT.
    DATA tree_position TYPE string.
    DATA classname TYPE string.
    DATA ref_name TYPE string.
    DATA result_ref_for_resume TYPE REF TO data.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !st_progname TYPE string OPTIONAL
      !xml_offset TYPE i OPTIONAL
      !xml_path TYPE string OPTIONAL
      !st_ic TYPE i OPTIONAL
      !st_timestamp TYPE scx_st_tstamp OPTIONAL
      !tree_position TYPE string OPTIONAL
      !classname TYPE string OPTIONAL
      !ref_name TYPE string OPTIONAL
      !result_ref_for_resume TYPE REF TO data OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_st_deserialization_error IMPLEMENTATION.
ENDCLASS.
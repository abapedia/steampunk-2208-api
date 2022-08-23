CLASS cx_st_group_missing_case DEFINITION
  PUBLIC
  INHERITING FROM cx_st_condition
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_st_group_missing_case_e TYPE c LENGTH 32 VALUE '33EA5640A4D89D0FE10000000A114BF5' ##NO_TEXT.
    CONSTANTS cx_st_group_missing_case_e_ns TYPE c LENGTH 32 VALUE '40EA5640A4D89D0FE10000000A114BF5' ##NO_TEXT.
    CONSTANTS cx_st_group_missing_case_a TYPE c LENGTH 32 VALUE '5BEA5640A4D89D0FE10000000A114BF5' ##NO_TEXT.
    CONSTANTS cx_st_group_missing_case_a_ns TYPE c LENGTH 32 VALUE '60EA5640A4D89D0FE10000000A114BF5' ##NO_TEXT.
    CONSTANTS cx_st_group_missing_case TYPE c LENGTH 32 VALUE '8CEA5640A4D89D0FE10000000A114BF5' ##NO_TEXT.
    CONSTANTS cx_st_group_missing_case_t TYPE c LENGTH 32 VALUE '91EA5640A4D89D0FE10000000A114BF5' ##NO_TEXT.
    CONSTANTS cx_st_group_missing_case_av TYPE c LENGTH 32 VALUE '005056AA0E031EDAB6DFCCC31765415D' ##NO_TEXT.
    CONSTANTS nt_element TYPE c VALUE 'E' ##NO_TEXT.
    CONSTANTS nt_attribute TYPE c VALUE 'A' ##NO_TEXT.
    CONSTANTS nt_text TYPE c VALUE 'T' ##NO_TEXT.
    DATA missing_type TYPE c.
    DATA missing_name TYPE string.
    DATA missing_namespace TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !st_progname TYPE string OPTIONAL
      !xml_offset TYPE i OPTIONAL
      !xml_path TYPE string OPTIONAL
      !st_ic TYPE i OPTIONAL
      !st_timestamp TYPE scx_st_tstamp OPTIONAL
      !missing_type TYPE c OPTIONAL
      !missing_name TYPE string OPTIONAL
      !missing_namespace TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_st_group_missing_case IMPLEMENTATION.
ENDCLASS.
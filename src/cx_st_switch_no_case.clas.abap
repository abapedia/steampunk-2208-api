CLASS cx_st_switch_no_case DEFINITION
  PUBLIC
  INHERITING FROM cx_st_condition
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_st_switch_no_case TYPE c LENGTH 32 VALUE 'B2BC5A40FAB7211DE10000000A114BF5'. "#EC NOTEXT

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !st_progname TYPE string OPTIONAL
      !xml_offset TYPE i OPTIONAL
      !xml_path TYPE string OPTIONAL
      !st_ic TYPE i OPTIONAL
      !st_timestamp TYPE scx_st_tstamp OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_st_switch_no_case IMPLEMENTATION.
ENDCLASS.
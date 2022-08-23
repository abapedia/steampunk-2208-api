CLASS cx_st_error DEFINITION
  PUBLIC
  INHERITING FROM cx_transformation_error
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_st_error TYPE c LENGTH 32 VALUE '5C0D1540CC03132FE10000000A114BF5'. "#EC NOTEXT
    DATA st_progname TYPE string.
    DATA xml_offset TYPE i.
    DATA xml_path TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !st_progname TYPE string OPTIONAL
      !xml_offset TYPE i OPTIONAL
      !xml_path TYPE string OPTIONAL
      !st_ic TYPE i OPTIONAL
      !st_timestamp TYPE scx_st_tstamp OPTIONAL.

    METHODS get_st_source_position
    EXPORTING
      !main_name TYPE string
      !prog_name TYPE string
      !line TYPE i
      !valid TYPE abap_bool.
  PROTECTED SECTION.

    DATA st_ic TYPE i.
    DATA:
    st_timestamp TYPE scx_st_tstamp.
ENDCLASS.

CLASS cx_st_error IMPLEMENTATION.
ENDCLASS.
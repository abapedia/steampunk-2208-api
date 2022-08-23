CLASS cx_st_condition DEFINITION
  PUBLIC
  INHERITING FROM cx_st_error
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_st_condition TYPE c LENGTH 32 VALUE '930D1540CC03132FE10000000A114BF5'. "#EC NOTEXT

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

CLASS cx_st_condition IMPLEMENTATION.
ENDCLASS.
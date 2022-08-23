CLASS cx_st_call_error DEFINITION
  PUBLIC
  INHERITING FROM cx_st_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_st_call_error TYPE c LENGTH 32 VALUE '3E761640B0576959E10000000A114BF5'. "#EC NOTEXT
    CONSTANTS load_error TYPE c LENGTH 32 VALUE '7E761640B0576959E10000000A114BF5'. "#EC NOTEXT
    DATA called_st_progname TYPE string.
    DATA classname TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !st_progname TYPE string OPTIONAL
      !xml_offset TYPE i OPTIONAL
      !xml_path TYPE string OPTIONAL
      !st_ic TYPE i OPTIONAL
      !st_timestamp TYPE scx_st_tstamp OPTIONAL
      !called_st_progname TYPE string OPTIONAL
      !classname TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_st_call_error IMPLEMENTATION.
ENDCLASS.
CLASS cx_st_format_error DEFINITION
  PUBLIC
  INHERITING FROM cx_st_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_st_format_error TYPE c LENGTH 32 VALUE '1D92B33F9D778754E10000000A114BF5'. "#EC NOTEXT
    DATA node_type TYPE string.
    DATA uri TYPE string.
    DATA local_name TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !st_progname TYPE string OPTIONAL
      !xml_offset TYPE i OPTIONAL
      !xml_path TYPE string OPTIONAL
      !st_ic TYPE i OPTIONAL
      !st_timestamp TYPE scx_st_tstamp OPTIONAL
      !node_type TYPE string OPTIONAL
      !uri TYPE string OPTIONAL
      !local_name TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_st_format_error IMPLEMENTATION.
ENDCLASS.
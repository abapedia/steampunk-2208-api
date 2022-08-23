CLASS cx_st_serialization_error DEFINITION
  PUBLIC
  INHERITING FROM cx_st_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_st_serialization_error TYPE c LENGTH 32 VALUE 'D5DD8E3F56CDFB4FE10000000A114BF5'. "#EC NOTEXT
    DATA abap_position TYPE string.
    DATA classname TYPE string.
    DATA ref_name TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !st_progname TYPE string OPTIONAL
      !xml_offset TYPE i OPTIONAL
      !xml_path TYPE string OPTIONAL
      !st_ic TYPE i OPTIONAL
      !st_timestamp TYPE scx_st_tstamp OPTIONAL
      !abap_position TYPE string OPTIONAL
      !classname TYPE string OPTIONAL
      !ref_name TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_st_serialization_error IMPLEMENTATION.
ENDCLASS.
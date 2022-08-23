CLASS cx_st_cond_check_fail DEFINITION
  PUBLIC
  INHERITING FROM cx_st_condition
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_st_cond_check_fail TYPE c LENGTH 32 VALUE '5A22ED4F7AD3984F9FDA7D0DA32FC22A'. "#EC NOTEXT

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

CLASS cx_st_cond_check_fail IMPLEMENTATION.
ENDCLASS.
CLASS cx_st_invalid_xml DEFINITION
  PUBLIC
  INHERITING FROM cx_st_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS open TYPE c LENGTH 32 VALUE '001560AA0E0802DCB0CA9C0A28BF429F' ##NO_TEXT.
    CONSTANTS cx_st_invalid_xml TYPE c LENGTH 32 VALUE 'C85B766C78201EEA9285E82461EE85ED' ##NO_TEXT.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !st_progname TYPE string OPTIONAL
      !xml_offset TYPE i OPTIONAL
      !xml_path TYPE string OPTIONAL
      !st_ic TYPE i OPTIONAL
      !st_timestamp TYPE scx_st_tstamp OPTIONAL
      !operation TYPE string OPTIONAL
      !error TYPE string OPTIONAL.
  PROTECTED SECTION.

    DATA operation TYPE string.
    DATA error TYPE string.
ENDCLASS.

CLASS cx_st_invalid_xml IMPLEMENTATION.
ENDCLASS.
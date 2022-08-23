CLASS cx_st_constraint_error DEFINITION
  PUBLIC
  INHERITING FROM cx_st_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_st_constraint_error TYPE c LENGTH 32 VALUE '001560AA0E081DEB9CFD65E0AE6ED64F' ##NO_TEXT.
    CONSTANTS max_length TYPE c LENGTH 32 VALUE '005056A207C81EE494D8C072288659DB' ##NO_TEXT.
    DATA constraint_value TYPE string.
    DATA value TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !st_progname TYPE string OPTIONAL
      !xml_offset TYPE i OPTIONAL
      !xml_path TYPE string OPTIONAL
      !st_ic TYPE i OPTIONAL
      !st_timestamp TYPE scx_st_tstamp OPTIONAL
      !constraint_value TYPE string OPTIONAL
      !value TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_st_constraint_error IMPLEMENTATION.
ENDCLASS.
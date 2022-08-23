CLASS cx_st_runtime_error DEFINITION
  PUBLIC
  INHERITING FROM cx_st_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS incompatible_types TYPE c LENGTH 32 VALUE '001560AA0E0802DC81FDEBE2F6AB918B'. "#EC NOTEXT
    CONSTANTS cx_st_runtime_error TYPE c LENGTH 32 VALUE '0050568E52B002DDBAE9E0F3FAA604E5'. "#EC NOTEXT
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
      !classname TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_st_runtime_error IMPLEMENTATION.
ENDCLASS.
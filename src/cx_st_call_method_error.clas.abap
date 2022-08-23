CLASS cx_st_call_method_error DEFINITION
  PUBLIC
  INHERITING FROM cx_st_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_st_call_method_error TYPE c LENGTH 32 VALUE '67F36D4454F06729E10000000A42425B'. "#EC NOTEXT
    DATA exception_name TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !st_progname TYPE string OPTIONAL
      !xml_offset TYPE i OPTIONAL
      !xml_path TYPE string OPTIONAL
      !st_ic TYPE i OPTIONAL
      !st_timestamp TYPE scx_st_tstamp OPTIONAL
      !exception_name TYPE string OPTIONAL
      !includename TYPE string OPTIONAL
      !line TYPE i OPTIONAL.

    METHODS if_message~get_longtext
    REDEFINITION.
    METHODS if_message~get_text
    REDEFINITION.
  PROTECTED SECTION.

    DATA includename TYPE string.
    DATA line TYPE i.
ENDCLASS.

CLASS cx_st_call_method_error IMPLEMENTATION.
ENDCLASS.
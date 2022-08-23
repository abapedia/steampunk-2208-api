CLASS cx_st_match DEFINITION
  PUBLIC
  INHERITING FROM cx_st_error
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_st_match TYPE c LENGTH 32 VALUE 'BA9EC6949576B9468588D2E966B10B91'. "#EC NOTEXT
    CONSTANTS cx_st_match_node TYPE c LENGTH 32 VALUE '9B937DC65C4A8D44B86C7A5078348C6F'. "#EC NOTEXT
    CONSTANTS tt_element_start TYPE c VALUE 'S'. "#EC NOTEXT
    CONSTANTS tt_element_end TYPE c VALUE 'E'. "#EC NOTEXT
    CONSTANTS tt_text TYPE c VALUE 'T'. "#EC NOTEXT
    CONSTANTS tt_document_end TYPE c VALUE 'Z'. "#EC NOTEXT
    CONSTANTS tt_invalid TYPE c VALUE 'I'. "#EC NOTEXT
    DATA actual_token_type TYPE c.
    DATA actual_name TYPE string.
    DATA actual_namespace TYPE string.
    DATA actual_value TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !st_progname TYPE string OPTIONAL
      !xml_offset TYPE i OPTIONAL
      !xml_path TYPE string OPTIONAL
      !st_ic TYPE i OPTIONAL
      !st_timestamp TYPE scx_st_tstamp OPTIONAL
      !actual_token_type TYPE c OPTIONAL
      !actual_name TYPE string OPTIONAL
      !actual_namespace TYPE string OPTIONAL
      !actual_value TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_st_match IMPLEMENTATION.
ENDCLASS.
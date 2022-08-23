CLASS cx_sy_dyn_table_ill_line_type DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_dyn_table_error
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_dyn_table_ill_line_type TYPE c LENGTH 32 VALUE '41D1514C4DED0045000000000A1551B1'. "#EC NOTEXT
    DATA comp_number TYPE i.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !tabname TYPE string OPTIONAL
      !comp_number TYPE i OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_dyn_table_ill_line_type IMPLEMENTATION.
ENDCLASS.
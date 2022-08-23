CLASS cx_sy_dyn_table_ill_comp_val DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_dyn_table_error
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_dyn_table_ill_comp_val TYPE c LENGTH 32 VALUE '41D151244DED0045000000000A1551B1'. "#EC NOTEXT
    DATA line TYPE i.
    DATA compname TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !tabname TYPE string OPTIONAL
      !line TYPE i OPTIONAL
      !compname TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_dyn_table_ill_comp_val IMPLEMENTATION.
ENDCLASS.
CLASS cx_sy_dyn_table_error DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_dyn_table_error TYPE c LENGTH 32 VALUE '41D25C3A592F0040000000000A1551B1'. "#EC NOTEXT
    DATA tabname TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !tabname TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_dyn_table_error IMPLEMENTATION.
ENDCLASS.
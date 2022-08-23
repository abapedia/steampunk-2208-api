CLASS cl_abap_itab_c_reader DEFINITION
  PUBLIC
  INHERITING FROM cl_abap_memory_c_reader
  CREATE PUBLIC.

  PUBLIC SECTION.

    METHODS constructor
      IMPORTING
      !itab TYPE STANDARD TABLE
      RAISING
      cx_parameter_invalid_type.

    METHODS if_abap_reader~delete_mark
      REDEFINITION.
    METHODS if_abap_reader~is_mark_supported
      REDEFINITION.
    METHODS if_abap_reader~is_reset_supported
      REDEFINITION.
    METHODS if_abap_reader~reset
      REDEFINITION.
    METHODS if_abap_reader~reset_to_mark
      REDEFINITION.
    METHODS if_abap_reader~set_mark
      REDEFINITION.
  PROTECTED SECTION.
ENDCLASS.

CLASS cl_abap_itab_c_reader IMPLEMENTATION.
ENDCLASS.
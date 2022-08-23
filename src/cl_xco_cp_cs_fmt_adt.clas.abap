CLASS cl_xco_cp_cs_fmt_adt DEFINITION PUBLIC FINAL INHERITING FROM cl_xco_cs_format CREATE PRIVATE.
  PUBLIC SECTION.
    METHODS:
      with_line_number_flavor
        IMPORTING
          io_line_number_flavor TYPE REF TO if_xco_cs_line_number_flavor
        RETURNING
          VALUE(ro_me)          TYPE REF TO cl_xco_cp_cs_fmt_adt.

ENDCLASS.

CLASS cl_xco_cp_cs_fmt_adt IMPLEMENTATION.
ENDCLASS.
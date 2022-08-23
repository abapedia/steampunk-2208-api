CLASS xco_cp_call_stack DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      format             TYPE REF TO if_xco_cp_cs_format_factory READ-ONLY,
      line_pattern       TYPE REF TO if_xco_cp_cs_line_pattern_fct READ-ONLY,
      line_number_flavor TYPE REF TO if_xco_cp_cs_line_nmbr_flv_fct READ-ONLY.

ENDCLASS.

CLASS xco_cp_call_stack IMPLEMENTATION.
ENDCLASS.
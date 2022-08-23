INTERFACE if_xco_xlsx_slc_pattern_bldr PUBLIC.
  METHODS:
    get_pattern
      RETURNING
        VALUE(ro_pattern) TYPE REF TO if_xco_xlsx_slc_pattern.
ENDINTERFACE.
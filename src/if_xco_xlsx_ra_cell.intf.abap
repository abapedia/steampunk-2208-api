INTERFACE if_xco_xlsx_ra_cell PUBLIC.
  METHODS:
    has_value
      RETURNING
        VALUE(rv_has_value) TYPE abap_bool,
    get_value
      RETURNING
        VALUE(ro_value) TYPE REF TO if_xco_xlsx_ra_cell_value.
ENDINTERFACE.
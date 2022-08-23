INTERFACE if_xco_xlsx_ra_vt_cell_value PUBLIC.
  METHODS:
    get_implementation
      RETURNING
        VALUE(ro_implementation) TYPE REF TO object.
ENDINTERFACE.
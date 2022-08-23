INTERFACE if_xco_xlsx_ra_cell_value PUBLIC.
  METHODS:
    set_transformation
      IMPORTING
        io_transformation TYPE REF TO if_xco_xlsx_ra_vt_cell_value
      RETURNING
        VALUE(ro_me)      TYPE REF TO if_xco_xlsx_ra_cell_value,
    write_to
      IMPORTING
        iv_field TYPE REF TO data.
ENDINTERFACE.
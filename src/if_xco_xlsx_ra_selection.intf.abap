INTERFACE if_xco_xlsx_ra_selection PUBLIC.
  METHODS:
    cell_stream
      RETURNING
        VALUE(ro_cell_stream) TYPE REF TO if_xco_xlsx_ra_cell_stream,
    row_stream
      RETURNING
        VALUE(ro_row_stream) TYPE REF TO if_xco_xlsx_ra_row_stream.
ENDINTERFACE.
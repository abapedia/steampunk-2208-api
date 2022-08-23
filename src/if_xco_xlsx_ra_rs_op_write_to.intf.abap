INTERFACE if_xco_xlsx_ra_rs_op_write_to PUBLIC.
  INTERFACES:
    if_xco_xlsx_ra_operation.

  ALIASES:
    get_action FOR if_xco_xlsx_ra_operation~get_action,
    execute FOR if_xco_xlsx_ra_operation~execute.

  METHODS:
    set_value_transformation
      IMPORTING
        io_value_transformation TYPE REF TO if_xco_xlsx_ra_vt_row_value
      RETURNING
        VALUE(ro_me)            TYPE REF TO if_xco_xlsx_ra_rs_op_write_to.
ENDINTERFACE.
INTERFACE if_xco_xlsx_ra_cs_op_visit PUBLIC.
  INTERFACES:
    if_xco_xlsx_ra_operation.

  ALIASES:
    get_action FOR if_xco_xlsx_ra_operation~get_action,
    execute FOR if_xco_xlsx_ra_operation~execute.
ENDINTERFACE.
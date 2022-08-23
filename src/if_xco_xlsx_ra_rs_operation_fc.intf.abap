INTERFACE if_xco_xlsx_ra_rs_operation_fc PUBLIC.
  METHODS:
    write_to
      IMPORTING
        it_internal_table   TYPE REF TO data
      RETURNING
        VALUE(ro_operation) TYPE REF TO if_xco_xlsx_ra_rs_op_write_to.
ENDINTERFACE.
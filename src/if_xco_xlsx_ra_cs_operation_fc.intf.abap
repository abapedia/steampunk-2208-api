INTERFACE if_xco_xlsx_ra_cs_operation_fc PUBLIC.
  METHODS:
    visit
      IMPORTING
        io_visitor          TYPE REF TO if_xco_xlsx_ra_cs_visitor
      RETURNING
        VALUE(ro_operation) TYPE REF TO if_xco_xlsx_ra_cs_op_visit.
ENDINTERFACE.
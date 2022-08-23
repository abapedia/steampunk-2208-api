INTERFACE if_xco_cp_xlsx_slc_pb_factory PUBLIC.
  METHODS:
    simple_from_to
      RETURNING
        VALUE(ro_simple_from_to) TYPE REF TO if_xco_xlsx_slc_pb_spl_from_to.
ENDINTERFACE.
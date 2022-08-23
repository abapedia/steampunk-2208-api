INTERFACE if_xco_cp_cts_change_scnr_fct PUBLIC.
  METHODS:
    transported
      IMPORTING
        iv_transport          TYPE sxco_transport
      RETURNING
        VALUE(ro_transported) TYPE REF TO if_xco_cts_change_scenario.
ENDINTERFACE.
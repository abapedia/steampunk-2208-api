INTERFACE if_xco_gen_srvb_s_fo_srv_versn PUBLIC.
  DATA:
    version TYPE sxco_srvb_service_version READ-ONLY.

  METHODS:
    set_service_definition
      IMPORTING
        iv_service_definition TYPE sxco_srvd_object_name
      RETURNING
        VALUE(ro_me)          TYPE REF TO if_xco_gen_srvb_s_fo_srv_versn.
ENDINTERFACE.
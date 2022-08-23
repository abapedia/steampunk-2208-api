INTERFACE if_xco_gen_srvb_s_fo_service PUBLIC.
  DATA:
    name TYPE sxco_srvb_service_name READ-ONLY.

  METHODS:
    add_version
      IMPORTING
        iv_version        TYPE sxco_srvb_service_version
      RETURNING
        VALUE(ro_version) TYPE REF TO if_xco_gen_srvb_s_fo_srv_versn,

    get_version
      IMPORTING
        iv_version        TYPE sxco_srvb_service_version
      RETURNING
        VALUE(ro_version) TYPE REF TO if_xco_gen_srvb_s_fo_srv_versn,

    remove_version
      IMPORTING
        iv_version TYPE sxco_srvb_service_version.
ENDINTERFACE.
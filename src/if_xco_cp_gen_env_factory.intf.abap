INTERFACE if_xco_cp_gen_env_factory PUBLIC.
  METHODS:
    dev_system
      IMPORTING
        iv_transport          TYPE sxco_transport
      RETURNING
        VALUE(ro_environment) TYPE REF TO if_xco_cp_gen_env_dev_system.
ENDINTERFACE.
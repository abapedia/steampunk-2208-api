INTERFACE if_bcfg_cd_transport_service
  PUBLIC.

  METHODS is_transport_allowed
    RETURNING
      VALUE(rv_is_allowed) TYPE abap_bool.
  METHODS get_transport_recorder
    RETURNING
      VALUE(ro_transport_recorder) TYPE REF TO if_bcfg_cd_transport_recorder.
  METHODS get_transport_request
    RETURNING
      VALUE(ro_transport_request) TYPE REF TO if_bcfg_cd_transport_manager.
ENDINTERFACE.
INTERFACE if_bcfg_cd_transport_recorder
  PUBLIC.
  METHODS add_tabu_content
    IMPORTING
      !iv_is_simulation TYPE abap_bool DEFAULT abap_false
      !it_entries_to_be_recorded TYPE STANDARD TABLE
    EXPORTING
      !eo_messages TYPE REF TO if_xco_messages
    RAISING
      cx_bcfg_transport_recorder.
ENDINTERFACE.
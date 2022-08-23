INTERFACE if_botd_mockeml_outbldr_mod
  PUBLIC.
  METHODS build_output_for_eml
    RETURNING
      VALUE(result) TYPE REF TO if_botd_mockeml_out_cfg_mod.

ENDINTERFACE.
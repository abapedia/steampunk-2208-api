INTERFACE if_xco_cds_custom_entity_cont PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      short_description TYPE sxco_ar_short_description,
      root_indicator    TYPE abap_bool,
    END OF ts_content.

  DATA:
    custom_entity TYPE REF TO if_xco_cds_custom_entity READ-ONLY,

    read_state    TYPE REF TO cl_xco_ddef_object_read_state READ-ONLY.

  METHODS:
    get_short_description
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,

    get_root_indicator
      RETURNING
        VALUE(rv_root_indicator) TYPE abap_bool,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
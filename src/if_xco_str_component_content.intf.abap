INTERFACE if_xco_str_component_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      type               TYPE REF TO if_xco_str_component_type,
      language_indicator TYPE abap_bool,
      currency_quantity  TYPE if_xco_tab_field_content=>ts_currency_quantity,
    END OF ts_content.

  DATA:
    component  TYPE REF TO if_xco_str_component READ-ONLY,

    read_state TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

  METHODS:
    get_type
      RETURNING
        VALUE(ro_type) TYPE REF TO if_xco_str_component_type,

    get_language_indicator
      RETURNING
        VALUE(rv_language_indicator) TYPE abap_bool,

    get_currency_quantity
      RETURNING
        VALUE(rs_currency_quantity) TYPE if_xco_tab_field_content=>ts_currency_quantity,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
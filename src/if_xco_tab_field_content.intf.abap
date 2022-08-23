INTERFACE if_xco_tab_field_content PUBLIC.
  TYPES:
    tv_reference_table TYPE c LENGTH 30,
    tv_reference_field TYPE c LENGTH 30,

    BEGIN OF ts_currency_quantity,
      reference_table TYPE tv_reference_table,
      reference_field TYPE tv_reference_field,
    END OF ts_currency_quantity.

  DATA:
    field      TYPE REF TO if_xco_tab_field READ-ONLY,

    read_state TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

  METHODS:
    get_language_indicator
      RETURNING
        VALUE(rv_language_indicator) TYPE abap_bool,

    get_currency_quantity
      RETURNING
        VALUE(rs_currency_quantity) TYPE ts_currency_quantity.
ENDINTERFACE.
INTERFACE if_xco_i18n_tt_target_record PUBLIC.

  TYPES:
    BEGIN OF ts_master_key_field,
      name  TYPE sxco_ad_field_name,
      value TYPE REF TO if_xco_payload,
    END OF ts_master_key_field,
    tt_master_key_field TYPE HASHED TABLE OF ts_master_key_field WITH UNIQUE KEY name,
    BEGIN OF ts_text,
      attribute TYPE sxco_ad_field_name,
      value     TYPE REF TO if_xco_text,
    END OF ts_text,
    tt_text TYPE HASHED TABLE OF ts_text WITH UNIQUE KEY attribute.

  DATA:
    database_table          TYPE REF TO if_xco_database_table READ-ONLY,
    master_key_fields       TYPE tt_master_key_field READ-ONLY,
    language_key_field_name TYPE sxco_ad_field_name READ-ONLY.

  METHODS:
    get_translations
      IMPORTING
        it_text_attributes     TYPE sxco_t_ad_field_names
      RETURNING
        VALUE(rt_translations) TYPE sxco_t_i18n_translations,
    get_translation
      IMPORTING
        io_language           TYPE REF TO if_xco_language
        it_text_attributes    TYPE sxco_t_ad_field_names
      RETURNING
        VALUE(ro_translation) TYPE REF TO if_xco_i18n_translation,
    set_translation
      IMPORTING
        it_texts           TYPE tt_text
        io_language        TYPE REF TO if_xco_language
        io_change_scenario TYPE REF TO if_xco_cts_change_scenario,
    has_translation
      IMPORTING
        io_language               TYPE REF TO if_xco_language
        iv_text_attribute         TYPE sxco_ad_field_name
      RETURNING
        VALUE(rv_has_translation) TYPE abap_bool.
ENDINTERFACE.
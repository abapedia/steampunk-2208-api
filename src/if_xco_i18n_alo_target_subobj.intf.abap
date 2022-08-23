INTERFACE if_xco_i18n_alo_target_subobj PUBLIC.

  DATA:
    application_log_subobject TYPE REF TO if_xco_aplo_subobject READ-ONLY.

  METHODS:
    get_translations
      IMPORTING
        it_text_attributes     TYPE sxco_t_aplo_subobj_txt_attrbts
      RETURNING
        VALUE(rt_translations) TYPE sxco_t_i18n_translations,
    get_translation
      IMPORTING
        io_language           TYPE REF TO if_xco_language
        it_text_attributes    TYPE sxco_t_aplo_subobj_txt_attrbts
      RETURNING
        VALUE(ro_translation) TYPE REF TO if_xco_i18n_translation,
    set_translation
      IMPORTING
        it_texts           TYPE sxco_t_aplo_subobj_texts
        io_language        TYPE REF TO if_xco_language
        io_change_scenario TYPE REF TO if_xco_cts_change_scenario,
    has_translation
      IMPORTING
        io_language               TYPE REF TO if_xco_language
        io_text_attribute         TYPE REF TO cl_xco_aplo_subobj_text_attrbt
      RETURNING
        VALUE(rv_has_translation) TYPE abap_bool.
ENDINTERFACE.
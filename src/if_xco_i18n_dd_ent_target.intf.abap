INTERFACE if_xco_i18n_dd_ent_target PUBLIC.

  DATA:
    entity TYPE REF TO if_xco_cds_entity READ-ONLY.

  METHODS:
    get_translations
      IMPORTING
        it_text_attributes     TYPE sxco_t_ddef_ent_text_attributs
      RETURNING
        VALUE(rt_translations) TYPE sxco_t_i18n_translations,
    get_translation
      IMPORTING
        io_language           TYPE REF TO if_xco_language
        it_text_attributes    TYPE sxco_t_ddef_ent_text_attributs
      RETURNING
        VALUE(ro_translation) TYPE REF TO if_xco_i18n_translation,
    set_translation
      IMPORTING
        io_language        TYPE REF TO if_xco_language
        it_texts           TYPE sxco_t_ddef_ent_texts
        io_change_scenario TYPE REF TO if_xco_cts_change_scenario,
    has_translation
      IMPORTING
        io_language               TYPE REF TO if_xco_language
        io_text_attribute         TYPE REF TO cl_xco_ddef_ent_text_attribute
      RETURNING
        VALUE(rv_has_translation) TYPE abap_bool.
ENDINTERFACE.
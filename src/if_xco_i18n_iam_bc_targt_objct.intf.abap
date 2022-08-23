INTERFACE if_xco_i18n_iam_bc_targt_objct PUBLIC.

  DATA:
    iam_business_catalog TYPE REF TO if_xco_iam_business_catalog READ-ONLY.

  METHODS:
    get_translations
      IMPORTING
        it_text_attributes     TYPE sxco_t_iam_bc_text_attributes
      RETURNING
        VALUE(rt_translations) TYPE sxco_t_i18n_translations,

    get_translation
      IMPORTING
        io_language           TYPE REF TO if_xco_language
        it_text_attributes    TYPE sxco_t_iam_bc_text_attributes
      RETURNING
        VALUE(ro_translation) TYPE REF TO if_xco_i18n_translation,

    set_translation
      IMPORTING
        it_texts           TYPE sxco_t_iam_bc_texts
        io_language        TYPE REF TO if_xco_language
        io_change_scenario TYPE REF TO if_xco_cts_change_scenario,

    has_translation
      IMPORTING
        io_language               TYPE REF TO if_xco_language
        io_text_attribute         TYPE REF TO cl_xco_iam_bc_text_attribute
      RETURNING
        VALUE(rv_has_translation) TYPE abap_bool.
ENDINTERFACE.
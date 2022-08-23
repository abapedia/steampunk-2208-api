INTERFACE if_xco_gen_tabl_str_s_fo_cmpnt PUBLIC.
  INTERFACES:
    if_xco_gen_tabl_s_fo_field.

  TYPES:
     tv_language_indicator TYPE c.

  ALIASES:
    name FOR if_xco_gen_tabl_s_fo_field~name,

    currency_quantity FOR if_xco_gen_tabl_s_fo_field~currency_quantity,

    create_foreign_key FOR if_xco_gen_tabl_s_fo_field~create_foreign_key,
    get_foreign_key FOR if_xco_gen_tabl_s_fo_field~get_foreign_key,
    delete_foreign_key FOR if_xco_gen_tabl_s_fo_field~delete_foreign_key,

    create_search_help FOR if_xco_gen_tabl_s_fo_field~create_search_help,
    get_search_help FOR if_xco_gen_tabl_s_fo_field~get_search_help,
    delete_search_help FOR if_xco_gen_tabl_s_fo_field~delete_search_help.

  METHODS:
    set_type
      IMPORTING
        io_type      TYPE REF TO if_xco_gen_tabl_field_type_str
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_tabl_str_s_fo_cmpnt,

    set_language_indicator
      IMPORTING
        iv_language_indicator TYPE tv_language_indicator DEFAULT abap_true
      RETURNING
        VALUE(ro_me)          TYPE REF TO if_xco_gen_tabl_str_s_fo_cmpnt.
ENDINTERFACE.
INTERFACE if_xco_cp_i18n_tp_target_fctry PUBLIC.
  TYPES:
    tv_text_symbol_id TYPE c LENGTH 3.

  METHODS:
    class_text_symbol
      IMPORTING
        iv_class_name               TYPE sxco_ao_object_name
        iv_text_symbol_id           TYPE tv_text_symbol_id
      RETURNING
        VALUE(ro_class_text_symbol) TYPE REF TO if_xco_i18n_tp_target_txt_elem,

    function_group_text_symbol
      IMPORTING
        iv_function_group_name               TYPE sxco_fg_object_name
        iv_text_symbol_id                    TYPE tv_text_symbol_id
      RETURNING
        VALUE(ro_function_group_text_symbol) TYPE REF TO if_xco_i18n_tp_target_txt_elem.
ENDINTERFACE.
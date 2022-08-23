INTERFACE if_xco_cp_gen_tabl_str_s_form PUBLIC.
  TYPES:
    tv_short_description TYPE c LENGTH 60.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE tv_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_tabl_str_s_form,

    add_component
      IMPORTING
        iv_name             TYPE sxco_ad_field_name
      RETURNING
        VALUE(ro_component) TYPE REF TO if_xco_gen_tabl_str_s_fo_cmpnt,

    get_component
      IMPORTING
        iv_name             TYPE sxco_ad_field_name
      RETURNING
        VALUE(ro_component) TYPE REF TO if_xco_gen_tabl_str_s_fo_cmpnt,

    remove_component
      IMPORTING
        iv_name TYPE sxco_ad_field_name,

    add_include
      RETURNING
        VALUE(ro_include) TYPE REF TO if_xco_gen_tabl_str_s_fo_incl.
ENDINTERFACE.
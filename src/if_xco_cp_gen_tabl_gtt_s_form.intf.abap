INTERFACE if_xco_cp_gen_tabl_gtt_s_form PUBLIC.
  TYPES:
    tv_short_description TYPE c LENGTH 60.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE tv_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_tabl_gtt_s_form,

    set_data_maintenance
      IMPORTING
        io_data_maintenance TYPE REF TO cl_xco_dbt_data_maintenance
      RETURNING
        VALUE(ro_me)        TYPE REF TO if_xco_cp_gen_tabl_gtt_s_form,

    add_field
      IMPORTING
        iv_field_name   TYPE sxco_ad_field_name
      RETURNING
        VALUE(ro_field) TYPE REF TO if_xco_gen_tabl_gtt_s_fo_field,

    get_field
      IMPORTING
        iv_field_name   TYPE sxco_ad_field_name
      RETURNING
        VALUE(ro_field) TYPE REF TO if_xco_gen_tabl_gtt_s_fo_field,

    remove_field
      IMPORTING
        iv_field_name TYPE sxco_ad_field_name.
ENDINTERFACE.
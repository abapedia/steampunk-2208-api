INTERFACE if_xco_cp_gen_ddlx_s_form PUBLIC.
  INTERFACES:
    if_xco_gen_cds_s_fo_ann_target.

  TYPES:
    tv_short_description TYPE c LENGTH 60.

  ALIASES:
    add_annotation FOR if_xco_gen_cds_s_fo_ann_target~add_annotation,

    remove_annotation FOR if_xco_gen_cds_s_fo_ann_target~remove_annotation.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE tv_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_ddlx_s_form,

    set_layer
      IMPORTING
        io_layer     TYPE REF TO cl_xco_me_layer
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_ddlx_s_form,

    set_view
      IMPORTING
        iv_name      TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_ddlx_s_form,

    add_parameter
      IMPORTING
        iv_name             TYPE sxco_cds_parameter_name
      RETURNING
        VALUE(ro_parameter) TYPE REF TO if_xco_gen_ddlx_s_fo_parameter,

    get_parameter
      IMPORTING
        iv_name             TYPE sxco_cds_parameter_name
      RETURNING
        VALUE(ro_parameter) TYPE REF TO if_xco_gen_ddlx_s_fo_parameter,

    remove_parameter
      IMPORTING
        iv_name TYPE sxco_cds_parameter_name,

    add_field
      IMPORTING
        iv_name         TYPE sxco_cds_field_name
      RETURNING
        VALUE(ro_field) TYPE REF TO if_xco_gen_ddlx_s_fo_field,

    get_field
      IMPORTING
        iv_name         TYPE sxco_cds_field_name
      RETURNING
        VALUE(ro_field) TYPE REF TO if_xco_gen_ddlx_s_fo_field,

    remove_field
      IMPORTING
        iv_name TYPE sxco_cds_field_name.
ENDINTERFACE.
INTERFACE if_xco_gen_ddls_s_fo_field PUBLIC.
  INTERFACES:
    if_xco_gen_cds_s_fo_ann_target.

  ALIASES:
    add_annotation FOR if_xco_gen_cds_s_fo_ann_target~add_annotation,

    remove_annotation FOR if_xco_gen_cds_s_fo_ann_target~remove_annotation.

  DATA:
    expression TYPE REF TO if_xco_gen_ddls_ddl_expression READ-ONLY.

  METHODS:
    set_alias
      IMPORTING
        iv_alias     TYPE sxco_ddef_alias_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ddls_s_fo_field,

    set_key
      IMPORTING
        iv_key       TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ddls_s_fo_field,

    set_localized
      IMPORTING
        iv_localized TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ddls_s_fo_field,

    set_virtual
      IMPORTING
        iv_virtual   TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ddls_s_fo_field,

    set_redirected_to
      IMPORTING
        iv_projection_view TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_me)       TYPE REF TO if_xco_gen_ddls_s_fo_field,

    set_redirected_to_parent
      IMPORTING
        iv_projection_view TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_me)       TYPE REF TO if_xco_gen_ddls_s_fo_field,

    set_redirected_to_compos_child
      IMPORTING
        iv_projection_view TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_me)       TYPE REF TO if_xco_gen_ddls_s_fo_field,

    set_type
      IMPORTING
        io_type      TYPE REF TO if_xco_gen_ddls_field_type
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_ddls_s_fo_field,

    create_association
      IMPORTING
        iv_target             TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_association) TYPE REF TO if_xco_gen_ddls_s_fo_assoc,

    get_association
      IMPORTING
        iv_target             TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_association) TYPE REF TO if_xco_gen_ddls_s_fo_assoc,

    delete_association
      IMPORTING
        iv_target TYPE sxco_cds_object_name,

    create_composition
      IMPORTING
        iv_target             TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_composition) TYPE REF TO if_xco_gen_ddls_s_fo_compos,

    get_composition
      IMPORTING
        iv_target             TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_composition) TYPE REF TO if_xco_gen_ddls_s_fo_compos,

    delete_composition
      IMPORTING
        iv_target TYPE sxco_cds_object_name.
ENDINTERFACE.
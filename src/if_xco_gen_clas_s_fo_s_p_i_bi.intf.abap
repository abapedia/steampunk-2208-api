INTERFACE if_xco_gen_clas_s_fo_s_p_i_bi PUBLIC.
  METHODS:
    set_request
      IMPORTING
        iv_request   TYPE clike
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_clas_s_fo_s_p_i_bi,

    set_for
      IMPORTING
        iv_for       TYPE clike
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_clas_s_fo_s_p_i_bi,

    set_for_create
      IMPORTING
        iv_entity_name TYPE sxco_cds_object_name
        iv_association TYPE sxco_cds_association_name OPTIONAL
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_clas_s_fo_s_p_i_bi,

    set_for_update
      IMPORTING
        iv_entity_name TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_clas_s_fo_s_p_i_bi,

    set_for_delete
      IMPORTING
        iv_entity_name TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_clas_s_fo_s_p_i_bi,

    set_for_action
      IMPORTING
        iv_entity_name TYPE sxco_cds_object_name
        iv_action_name TYPE sxco_bdef_action_name
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_clas_s_fo_s_p_i_bi,

    set_for_read
      IMPORTING
        iv_entity_name TYPE sxco_cds_object_name
        iv_association TYPE sxco_cds_association_name OPTIONAL
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_clas_s_fo_s_p_i_bi,

    set_for_lock
      IMPORTING
        iv_entity_name TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_clas_s_fo_s_p_i_bi.
ENDINTERFACE.
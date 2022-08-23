INTERFACE if_xco_gen_clas_s_fo_d_c_m_bi PUBLIC.
  METHODS:
    set_for_determine_on_save
      IMPORTING
        iv_for_determine_on_save TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)             TYPE REF TO if_xco_gen_clas_s_fo_d_c_m_bi,
    set_for_determine_on_modify
      IMPORTING
        iv_for_determine_on_modify TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)               TYPE REF TO if_xco_gen_clas_s_fo_d_c_m_bi,
    set_for_global_authorization
      IMPORTING
        iv_for_global_authorization TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)                TYPE REF TO if_xco_gen_clas_s_fo_d_c_m_bi,
    set_for_instance_authorization
      IMPORTING
        iv_for_instance_authorization TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)                  TYPE REF TO if_xco_gen_clas_s_fo_d_c_m_bi,
    set_for_features
      IMPORTING
        iv_for_features TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)    TYPE REF TO if_xco_gen_clas_s_fo_d_c_m_bi,
    set_for_instance_features
      IMPORTING
        iv_for_instance_features TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)             TYPE REF TO if_xco_gen_clas_s_fo_d_c_m_bi,
    set_for_global_features
      IMPORTING
        iv_for_global_features TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)           TYPE REF TO if_xco_gen_clas_s_fo_d_c_m_bi,
    set_for_lock
      IMPORTING
        iv_for_lock  TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_clas_s_fo_d_c_m_bi,
    set_for_modify
      IMPORTING
        iv_for_modify TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_clas_s_fo_d_c_m_bi,
    set_for_read
      IMPORTING
        iv_for_read  TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_clas_s_fo_d_c_m_bi,
    set_for_validate_on_save
      IMPORTING
        iv_for_validate_on_save TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)            TYPE REF TO if_xco_gen_clas_s_fo_d_c_m_bi,

    set_full
      IMPORTING
        iv_full      TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_clas_s_fo_d_c_m_bi,

    set_result
      IMPORTING
        iv_result    TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_clas_s_fo_d_c_m_bi,

    set_link
      IMPORTING
        iv_link      TYPE sxco_ao_subcomponent_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_clas_s_fo_d_c_m_bi,

    set_for_determination
      IMPORTING
        iv_entity_name        TYPE sxco_cds_object_name
        iv_determination_name TYPE sxco_bdef_evaluation_name
      RETURNING
        VALUE(ro_me)          TYPE REF TO if_xco_gen_clas_s_fo_d_c_m_bi,

    set_for_validation
      IMPORTING
        iv_entity_name     TYPE sxco_cds_object_name
        iv_validation_name TYPE sxco_bdef_evaluation_name
      RETURNING
        VALUE(ro_me)       TYPE REF TO if_xco_gen_clas_s_fo_d_c_m_bi.
ENDINTERFACE.
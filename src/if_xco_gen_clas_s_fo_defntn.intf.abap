INTERFACE if_xco_gen_clas_s_fo_defntn PUBLIC.
  TYPES:
    BEGIN OF ts_section,
      " The PUBLIC section.
      public    TYPE REF TO if_xco_gen_clas_s_fo_d_section,

      " The PROTECTED section.
      protected TYPE REF TO if_xco_gen_clas_s_fo_d_section,

      " The PRIVATE section.
      private   TYPE REF TO if_xco_gen_clas_s_fo_d_section,
    END OF ts_section.

  DATA:
    " Access to the different sections of the class definition.
    section TYPE ts_section READ-ONLY.

  METHODS:
    set_final
      IMPORTING
        iv_final     TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_clas_s_fo_defntn,
    set_abstract
      IMPORTING
        iv_abstract  TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_clas_s_fo_defntn,
    set_superclass
      IMPORTING
        iv_superclass TYPE sxco_ao_object_name
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_clas_s_fo_defntn,
    set_create_visibility
      IMPORTING
        io_visibility TYPE REF TO cl_xco_ao_visibility
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_clas_s_fo_defntn,
    set_global_friends
      IMPORTING
        it_global_friends TYPE sxco_t_ao_object_names
      RETURNING
        VALUE(ro_me)      TYPE REF TO if_xco_gen_clas_s_fo_defntn,
    set_for_behavior_of
      IMPORTING
        iv_entity_name TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_clas_s_fo_defntn,
    add_interface
      IMPORTING
        iv_name             TYPE sxco_ao_object_name
      RETURNING
        VALUE(ro_interface) TYPE REF TO if_xco_gen_clas_s_fo_d_intrfce,
    get_interface
      IMPORTING
        iv_name             TYPE sxco_ao_object_name
      RETURNING
        VALUE(ro_interface) TYPE REF TO if_xco_gen_clas_s_fo_d_intrfce,
    remove_interface
      IMPORTING
        iv_name TYPE sxco_ao_object_name.
ENDINTERFACE.
INTERFACE if_xco_gen_bdef_s_fo_b_auth PUBLIC.
  TYPES:
    BEGIN OF ts_property_mapping,
      property_dependent TYPE sxco_cds_field_name,
      property_master    TYPE sxco_cds_field_name,
    END OF ts_property_mapping,

    tt_property_mapping TYPE HASHED TABLE OF ts_property_mapping WITH UNIQUE KEY property_dependent property_master.

  METHODS:
    set_master_global
      IMPORTING
        iv_master_global TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)     TYPE REF TO if_xco_gen_bdef_s_fo_b_auth,
    set_master_instance
      IMPORTING
        iv_master_instance TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)       TYPE REF TO if_xco_gen_bdef_s_fo_b_auth,
    set_dependent_by
      IMPORTING
        iv_association_name TYPE sxco_cds_association_name
      RETURNING
        VALUE(ro_me)        TYPE REF TO if_xco_gen_bdef_s_fo_b_auth,

    set_dependent
      IMPORTING
        it_property_mappings TYPE tt_property_mapping
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_bdef_s_fo_b_auth.
ENDINTERFACE.
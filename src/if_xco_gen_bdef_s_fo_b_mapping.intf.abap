INTERFACE if_xco_gen_bdef_s_fo_b_mapping PUBLIC.
  TYPES:
    BEGIN OF ts_field_mapping,
      cds_view_field TYPE sxco_cds_field_name,
      dbtable_field  TYPE sxco_cds_field_name,
    END OF ts_field_mapping,

    tt_field_mapping TYPE HASHED TABLE OF ts_field_mapping WITH UNIQUE KEY cds_view_field dbtable_field.

  DATA:
    database_table TYPE sxco_dbt_object_name READ-ONLY,

    object_name TYPE sxco_ad_object_name READ-ONLY.

  METHODS:
    set_corresponding
      IMPORTING
        iv_corresponding TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)     TYPE REF TO if_xco_gen_bdef_s_fo_b_mapping,

    set_field_mapping
      IMPORTING
        it_field_mappings TYPE tt_field_mapping
      RETURNING
        VALUE(ro_me)      TYPE REF TO if_xco_gen_bdef_s_fo_b_mapping,

    set_control
      IMPORTING
        iv_control   TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_mapping.
ENDINTERFACE.
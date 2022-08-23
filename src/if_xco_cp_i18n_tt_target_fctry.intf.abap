INTERFACE if_xco_cp_i18n_tt_target_fctry PUBLIC.
  METHODS:
    record
      IMPORTING
        iv_database_table_name     TYPE sxco_dbt_object_name
        it_master_key_fields       TYPE if_xco_i18n_tt_target_record=>tt_master_key_field
        iv_language_key_field_name TYPE sxco_ad_field_name
      RETURNING
        VALUE(ro_record)           TYPE REF TO if_xco_i18n_tt_target_record.
ENDINTERFACE.
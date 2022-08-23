INTERFACE if_xco_dbt_field_prp_fkfa PUBLIC.
  DATA:
    field       TYPE REF TO if_xco_dbt_field READ-ONLY,
    read_state  TYPE REF TO cl_xco_ad_object_read_state READ-ONLY,
    check_table TYPE sxco_dbt_object_name READ-ONLY.

  METHODS:
    calculate
      RETURNING
        VALUE(ro_result) TYPE REF TO if_xco_dbt_field_prp_fkfa_rslt.
ENDINTERFACE.
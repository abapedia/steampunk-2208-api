INTERFACE if_xco_str_component_pr_fkfa PUBLIC.
  DATA:
    component   TYPE REF TO if_xco_str_component READ-ONLY,
    read_state  TYPE REF TO cl_xco_ad_object_read_state READ-ONLY,
    check_table TYPE sxco_dbt_object_name READ-ONLY.

  METHODS:
    calculate
      RETURNING
        VALUE(ro_result) TYPE REF TO if_xco_str_component_pr_fkfa_r.
ENDINTERFACE.
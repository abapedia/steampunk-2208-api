INTERFACE if_xco_str_component_pr_fctry PUBLIC.
  DATA:
    component  TYPE REF TO if_xco_str_component READ-ONLY,
    read_state TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

  METHODS:
    foreign_key_field_assignments
      IMPORTING
        iv_check_table                        TYPE sxco_dbt_object_name
      RETURNING
        VALUE(ro_foreign_key_field_assgnmnts) TYPE REF TO if_xco_str_component_pr_fkfa.
ENDINTERFACE.
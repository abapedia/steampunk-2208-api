INTERFACE if_xco_dbt_field_proposal_fct PUBLIC.
  DATA:
    field      TYPE REF TO if_xco_dbt_field READ-ONLY,
    read_state TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

  METHODS:
    foreign_key_field_assignments
      IMPORTING
        iv_check_table                        TYPE sxco_dbt_object_name
      RETURNING
        VALUE(ro_foreign_key_field_assgnmnts) TYPE REF TO if_xco_dbt_field_prp_fkfa.
ENDINTERFACE.
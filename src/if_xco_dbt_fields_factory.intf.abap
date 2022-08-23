INTERFACE if_xco_dbt_fields_factory PUBLIC.
  DATA:
    all      TYPE REF TO if_xco_dbt_fields READ-ONLY,
    key      TYPE REF TO if_xco_dbt_fields READ-ONLY,
    included TYPE REF TO if_xco_dbt_fields READ-ONLY,
    appended TYPE REF TO if_xco_dbt_fields READ-ONLY.
ENDINTERFACE.
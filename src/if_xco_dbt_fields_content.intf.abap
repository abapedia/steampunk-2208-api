INTERFACE if_xco_dbt_fields_content PUBLIC.
  TYPES:
    BEGIN OF ts_underlying_built_in_type,
      field                    TYPE REF TO if_xco_dbt_field,
      underlying_built_in_type TYPE REF TO cl_xco_ad_built_in_type,
    END OF ts_underlying_built_in_type,

    tt_underlying_built_in_type TYPE STANDARD TABLE OF ts_underlying_built_in_type WITH EMPTY KEY.

  DATA:
    read_state TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

  METHODS:
    get_underlying_built_in_types
      RETURNING
        VALUE(rt_underlying_built_in_types) TYPE tt_underlying_built_in_type.
ENDINTERFACE.
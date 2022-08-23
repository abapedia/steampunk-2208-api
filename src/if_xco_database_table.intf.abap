INTERFACE if_xco_database_table PUBLIC.
  INTERFACES:
    if_xco_ad_object,

    if_xco_gen_clas_amdp_db_entity.

  TYPES:
    list TYPE STANDARD TABLE OF REF TO if_xco_database_table WITH DEFAULT KEY.

  ALIASES:
    name FOR if_xco_ad_object~name,

    get_state FOR if_xco_ad_object~get_state,
    check_syntax FOR if_xco_ad_object~check_syntax.

  DATA:
    fields TYPE REF TO if_xco_dbt_fields_factory READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_read_state    TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
        io_origin        TYPE REF TO cl_xco_dbt_origin OPTIONAL
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    set_api_state
      IMPORTING
        io_release_contract TYPE REF TO cl_xco_ars_release_contract OPTIONAL
        io_change_scenario  TYPE REF TO if_xco_cts_change_scenario
        io_api_state        TYPE REF TO cl_xco_ars_api_state,
    get_api_state
      IMPORTING
        io_release_contract TYPE REF TO cl_xco_ars_release_contract OPTIONAL
      RETURNING
        VALUE(ro_api_state) TYPE REF TO cl_xco_ars_api_state,
    content
      IMPORTING
        io_read_state     TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_dbt_content,
    field
      IMPORTING
        iv_name         TYPE sxco_ad_field_name
      RETURNING
        VALUE(ro_field) TYPE REF TO if_xco_dbt_field.
ENDINTERFACE.
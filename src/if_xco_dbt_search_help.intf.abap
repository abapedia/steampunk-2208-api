INTERFACE if_xco_dbt_search_help PUBLIC.
  DATA:
    field TYPE REF TO if_xco_dbt_field READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_read_state    TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
        io_origin        TYPE REF TO cl_xco_dbt_origin OPTIONAL
          PREFERRED PARAMETER io_read_state
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    content
      IMPORTING
        io_read_state     TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_dbt_search_help_content.
ENDINTERFACE.
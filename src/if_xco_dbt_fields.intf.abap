INTERFACE if_xco_dbt_fields PUBLIC.
  METHODS:
    get_names
      IMPORTING
        io_read_state   TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
        io_origin       TYPE REF TO cl_xco_dbt_origin OPTIONAL
          PREFERRED PARAMETER io_read_state
      RETURNING
        VALUE(rt_names) TYPE sxco_t_ad_field_names,

    get
      IMPORTING
        io_read_state    TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
        io_origin        TYPE REF TO cl_xco_dbt_origin OPTIONAL
          PREFERRED PARAMETER io_read_state
      RETURNING
        VALUE(rt_fields) TYPE sxco_t_dbt_fields,

    content
      IMPORTING
        io_read_state     TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_dbt_fields_content.
ENDINTERFACE.
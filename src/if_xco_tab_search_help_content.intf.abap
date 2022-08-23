INTERFACE if_xco_tab_search_help_content PUBLIC.
  TYPES:
    BEGIN OF ts_field_assignment,
      parameter  TYPE c LENGTH 30,
      table_name TYPE tabname,
      field_name TYPE c LENGTH 30,
    END OF ts_field_assignment,

    tt_field_assignment TYPE HASHED TABLE OF ts_field_assignment WITH UNIQUE KEY parameter,

    BEGIN OF ts_content,
      search_help_name  TYPE sxco_ad_object_name,
      field_assignments TYPE tt_field_assignment,
    END OF ts_content.

  DATA:
    search_help TYPE REF TO if_xco_tab_search_help READ-ONLY,

    read_state  TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

  METHODS:
    get_search_help_name
      RETURNING
        VALUE(rv_search_help_name) TYPE sxco_ad_object_name,

    get_field_assignments
      RETURNING
        VALUE(rt_field_assignments) TYPE tt_field_assignment,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
INTERFACE if_xco_gtt_search_help_content PUBLIC.
  DATA:
    search_help TYPE REF TO if_xco_gtt_search_help READ-ONLY,

    read_state  TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

  METHODS:
    get_search_help_name
      RETURNING
        VALUE(rv_search_help_name) TYPE sxco_ad_object_name,

    get_field_assignments
      RETURNING
        VALUE(rt_field_assignments) TYPE if_xco_tab_search_help_content=>tt_field_assignment,

    get
      RETURNING
        VALUE(rs_content) TYPE if_xco_tab_search_help_content=>ts_content.
ENDINTERFACE.
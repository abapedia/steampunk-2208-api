INTERFACE if_xco_aps_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      short_description    TYPE sxco_ar_short_description,
      enhancement_category TYPE REF TO cl_xco_tab_enhancement_ctgry,
      appended_table       TYPE REF TO if_xco_ad_table,
    END OF ts_content.

  DATA:
    append_structure TYPE REF TO if_xco_append_structure READ-ONLY,

    read_state       TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

  METHODS:
    get_short_description
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,

    get_enhancement_category
      RETURNING
        VALUE(ro_enhancement_category) TYPE REF TO cl_xco_tab_enhancement_ctgry,

    get_appended_table
      RETURNING
        VALUE(ro_appended_table) TYPE REF TO if_xco_ad_table,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
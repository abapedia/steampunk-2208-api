INTERFACE if_xco_str_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      short_description    TYPE sxco_ar_short_description,
      enhancement_category TYPE REF TO cl_xco_tab_enhancement_ctgry,
      includes             TYPE sxco_t_tab_include,
    END OF ts_content.

  DATA:
    structure  TYPE REF TO if_xco_ad_structure READ-ONLY,

    read_state TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

  METHODS:
    get_short_description
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,

    get_enhancement_category
      RETURNING
        VALUE(ro_enhancement_category) TYPE REF TO cl_xco_tab_enhancement_ctgry,

    get_includes
      RETURNING
        VALUE(rt_includes) TYPE sxco_t_tab_include,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
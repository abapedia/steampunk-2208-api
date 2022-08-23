INTERFACE if_xco_ttyp_content PUBLIC.
  TYPES:
    tv_secondary_key_shrt_dscrptn TYPE c LENGTH 80,

    BEGIN OF ts_secondary_key,
      short_description TYPE tv_secondary_key_shrt_dscrptn,
      object            TYPE REF TO if_xco_tt_secondary_key,
    END OF ts_secondary_key,

    tt_secondary_key TYPE STANDARD TABLE OF ts_secondary_key WITH EMPTY KEY,

    BEGIN OF ts_content,
      short_description      TYPE sxco_ar_short_description,
      row_type               TYPE REF TO if_xco_ttyp_row_type,
      initial_number_of_rows TYPE i,
      access                 TYPE REF TO cl_xco_tt_access,
      primary_key            TYPE REF TO if_xco_tt_primary_key,
      secondary_keys         TYPE tt_secondary_key,
    END OF ts_content.

  DATA:
    table_type TYPE REF TO if_xco_ad_table_type READ-ONLY,

    read_state TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

  METHODS:
    get_short_description
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,

    get_row_type
      RETURNING
        VALUE(ro_row_type) TYPE REF TO if_xco_ttyp_row_type,

    get_initial_number_of_rows
      RETURNING
        VALUE(rv_initial_number_of_rows) TYPE i,

    get_access
      RETURNING
        VALUE(ro_access) TYPE REF TO cl_xco_tt_access,

    get_primary_key
      RETURNING
        VALUE(ro_primary_key) TYPE REF TO if_xco_tt_primary_key,

    get_secondary_keys
      RETURNING
        VALUE(rt_secondary_keys) TYPE tt_secondary_key,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
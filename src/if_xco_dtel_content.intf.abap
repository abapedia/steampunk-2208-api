INTERFACE if_xco_dtel_content PUBLIC.
  TYPES:
    tv_field_label_text   TYPE c LENGTH 60,
    tv_field_label_length TYPE numc2,
    BEGIN OF ts_field_label,
      text   TYPE tv_field_label_text,
      length TYPE tv_field_label_length,
    END OF ts_field_label,
    BEGIN OF ts_content,
      short_description   TYPE sxco_ar_short_description,
      data_type           TYPE REF TO if_xco_dtel_data_type,
      short_field_label   TYPE ts_field_label,
      medium_field_label  TYPE ts_field_label,
      long_field_label    TYPE ts_field_label,
      heading_field_label TYPE ts_field_label,
    END OF ts_content.

  DATA:
    data_element TYPE REF TO if_xco_ad_data_element READ-ONLY,
    read_state   TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

  METHODS:
    get_short_description
      IMPORTING
        io_origin                   TYPE REF TO cl_xco_dtel_origin OPTIONAL
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,
    get_data_type
      IMPORTING
        io_origin           TYPE REF TO cl_xco_dtel_origin OPTIONAL
      RETURNING
        VALUE(ro_data_type) TYPE REF TO if_xco_dtel_data_type,

    has_underlying_built_in_type
      IMPORTING
        io_origin                             TYPE REF TO cl_xco_dtel_origin OPTIONAL
      RETURNING
        VALUE(rv_has_undrlying_built_in_type) TYPE abap_bool,

    get_underlying_built_in_type
      IMPORTING
        io_origin                          TYPE REF TO cl_xco_dtel_origin OPTIONAL
      RETURNING
        VALUE(ro_underlying_built_in_type) TYPE REF TO cl_xco_ad_built_in_type,
    get_short_field_label
      IMPORTING
        io_origin                   TYPE REF TO cl_xco_dtel_origin OPTIONAL
      RETURNING
        VALUE(rs_short_field_label) TYPE ts_field_label,
    get_medium_field_label
      IMPORTING
        io_origin                    TYPE REF TO cl_xco_dtel_origin OPTIONAL
      RETURNING
        VALUE(rs_medium_field_label) TYPE ts_field_label,
    get_long_field_label
      IMPORTING
        io_origin                  TYPE REF TO cl_xco_dtel_origin OPTIONAL
      RETURNING
        VALUE(rs_long_field_label) TYPE ts_field_label,
    get_heading_field_label
      IMPORTING
        io_origin                     TYPE REF TO cl_xco_dtel_origin OPTIONAL
      RETURNING
        VALUE(rs_heading_field_label) TYPE ts_field_label,
    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_dtel_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
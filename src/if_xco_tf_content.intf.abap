INTERFACE if_xco_tf_content PUBLIC.
  TYPES:
    tv_short_description TYPE c LENGTH 60,

    BEGIN OF ts_content,
      short_description TYPE tv_short_description,
      source_code       TYPE REF TO if_xco_tf_source_code,
    END OF ts_content.

  DATA:
    transformation TYPE REF TO if_xco_transformation READ-ONLY,
    state          TYPE REF TO cl_xco_tf_state READ-ONLY.

  METHODS:
    get_short_description
      IMPORTING
        io_origin                   TYPE REF TO cl_xco_tf_content_origin OPTIONAL
      RETURNING
        VALUE(rv_short_description) TYPE tv_short_description,
    get_source_code
      IMPORTING
        io_origin             TYPE REF TO cl_xco_tf_content_origin OPTIONAL
      RETURNING
        VALUE(ro_source_code) TYPE REF TO if_xco_tf_source_code,
    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_tf_content_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
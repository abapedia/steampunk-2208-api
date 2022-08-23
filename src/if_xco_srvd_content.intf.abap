INTERFACE if_xco_srvd_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      short_description TYPE sxco_ar_short_description,
    END OF ts_content.

  DATA:
    service_definition TYPE REF TO if_xco_service_definition READ-ONLY,
    version            TYPE REF TO cl_xco_srvd_version READ-ONLY.

  METHODS:
    get_short_description
      IMPORTING
        io_origin                   TYPE REF TO cl_xco_srvd_origin OPTIONAL
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,
    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_srvd_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE if_xco_srvd_content=>ts_content.
ENDINTERFACE.
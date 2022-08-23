INTERFACE if_xco_service_binding_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      short_description TYPE sxco_ar_short_description,
      binding_type      TYPE REF TO cl_xco_srvb_binding_type,
    END OF ts_content.

  DATA:
    service_binding TYPE REF TO if_xco_service_binding READ-ONLY.

  METHODS:
    get_short_description
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,

    get_binding_type
      RETURNING
        VALUE(ro_binding_type) TYPE REF TO cl_xco_srvb_binding_type,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
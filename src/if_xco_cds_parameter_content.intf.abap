INTERFACE if_xco_cds_parameter_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      original_name TYPE sxco_cds_parameter_name,
      data_type     TYPE REF TO if_xco_cds_parameter_data_type,
    END OF ts_content.

  DATA:
    parameter  TYPE REF TO if_xco_cds_parameter READ-ONLY,

    read_state TYPE REF TO cl_xco_ddef_object_read_state READ-ONLY.

  METHODS:
    get_original_name
      RETURNING
        VALUE(rv_original_name) TYPE sxco_cds_parameter_name,

    get_data_type
      RETURNING
        VALUE(ro_data_type) TYPE REF TO if_xco_cds_parameter_data_type,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
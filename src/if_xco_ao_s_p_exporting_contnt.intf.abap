INTERFACE if_xco_ao_s_p_exporting_contnt PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      short_description       TYPE sxco_ar_short_description,
      pass_by_value_indicator TYPE abap_bool,
      typing_method           TYPE REF TO cl_xco_ao_typing_method,
      typing_definition       TYPE REF TO if_xco_ao_typing_definition,
    END OF ts_content.

  DATA:
    exporting_parameter TYPE REF TO if_xco_ao_s_p_exporting READ-ONLY,
    version             TYPE REF TO cl_xco_ao_version READ-ONLY.

  METHODS:
    get_short_description
      IMPORTING
        io_origin                   TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,
    get_pass_by_value_indicator
      IMPORTING
        io_origin                         TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rv_pass_by_value_indicator) TYPE abap_bool,
    get_typing_method
      IMPORTING
        io_origin               TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(ro_typing_method) TYPE REF TO cl_xco_ao_typing_method,
    get_typing_definition
      IMPORTING
        io_origin                   TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(ro_typing_definition) TYPE REF TO if_xco_ao_typing_definition,
    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
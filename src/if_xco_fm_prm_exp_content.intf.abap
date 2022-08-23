INTERFACE if_xco_fm_prm_exp_content PUBLIC.
  TYPES:
    " Type for the short text of an exporting parameter.
    tv_short_text TYPE c LENGTH 79,

    " Type for the complete content of an exporting parameter.
    BEGIN OF ts_content,
      " The short text of the importing parameter.
      short_text              TYPE tv_short_text,

      " The pass by value indicator of the exporting parameter.
      pass_by_value_indicator TYPE abap_bool,

      " The type of the exporting parameter.
      type                    TYPE REF TO if_xco_fm_prm_exp_type,
    END OF ts_content.

  DATA:
    exporting_parameter TYPE REF TO if_xco_fm_prm_exporting READ-ONLY,
    state               TYPE REF TO cl_xco_fm_state READ-ONLY.

  METHODS:
    get_short_text
      IMPORTING
        io_origin            TYPE REF TO cl_xco_fm_origin OPTIONAL
      RETURNING
        VALUE(rv_short_text) TYPE tv_short_text,
    get_pass_by_value_indicator
      IMPORTING
        io_origin                         TYPE REF TO cl_xco_fm_origin OPTIONAL
      RETURNING
        VALUE(rv_pass_by_value_indicator) TYPE abap_bool,
    get_type
      IMPORTING
        io_origin      TYPE REF TO cl_xco_fm_origin OPTIONAL
      RETURNING
        VALUE(ro_type) TYPE REF TO if_xco_fm_prm_exp_type,
    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_fm_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
INTERFACE if_xco_fm_prm_cha_content PUBLIC.
  TYPES:
    " Type for the short text of a changing parameter.
    tv_short_text    TYPE c LENGTH 79,

    " Type for the default value of a changing parameter.
    tv_default_value TYPE c LENGTH 21,

    " Type for the complete content of a changing parameter.
    BEGIN OF ts_content,
      " The short text of the changing parameter.
      short_text              TYPE tv_short_text,

      " The pass by value indicator of the changing parameter.
      pass_by_value_indicator TYPE abap_bool,

      " The type of the changing parameter.
      type                    TYPE REF TO if_xco_fm_prm_cha_type,

      " The optional indicator the changing parameter.
      optional_indicator      TYPE abap_bool,

      " The default value the changing parameter.
      default_value           TYPE tv_default_value,
    END OF ts_content.

  DATA:
    changing_parameter TYPE REF TO if_xco_fm_prm_changing READ-ONLY,
    state              TYPE REF TO cl_xco_fm_state READ-ONLY.

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
        VALUE(ro_type) TYPE REF TO if_xco_fm_prm_cha_type,
    get_optional_indicator
      IMPORTING
        io_origin                    TYPE REF TO cl_xco_fm_origin OPTIONAL
      RETURNING
        VALUE(rv_optional_indicator) TYPE abap_bool,
    get_default_value
      IMPORTING
        io_origin               TYPE REF TO cl_xco_fm_origin OPTIONAL
      RETURNING
        VALUE(rv_default_value) TYPE tv_default_value,
    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_fm_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
INTERFACE if_xco_ao_s_exception_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      short_description   TYPE sxco_ar_short_description,
      resuamble_indicator TYPE abap_bool,
    END OF ts_content.

  DATA:
    exception TYPE REF TO if_xco_ao_s_exception READ-ONLY,
    version   TYPE REF TO cl_xco_ao_version READ-ONLY.

  METHODS:
    get_short_description
      IMPORTING
        io_origin                   TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,

    get_resuamble_indicator
      IMPORTING
        io_origin                     TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rv_resuamble_indicator) TYPE abap_bool,

    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
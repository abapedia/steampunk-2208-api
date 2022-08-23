INTERFACE if_xco_fm_exception_content PUBLIC.
  TYPES:
    " Type for the short text of a (class-based) exception.
    tv_short_text TYPE c LENGTH 79,

    " Type for the complete content of a (class-based) exception.
    BEGIN OF ts_content,
      " The short text of the (class-based) exception.
      short_text          TYPE tv_short_text,

      " The resumable indicator of the (class-based) exception.
      resumable_indicator TYPE abap_bool,
    END OF ts_content.

  DATA:
    exception TYPE REF TO if_xco_fm_exception READ-ONLY,
    state     TYPE REF TO cl_xco_fm_state READ-ONLY.

  METHODS:
    get_short_text
      IMPORTING
        io_origin            TYPE REF TO cl_xco_fm_origin OPTIONAL
      RETURNING
        VALUE(rv_short_text) TYPE tv_short_text,
    get_resumable_indicator
      IMPORTING
        io_origin                     TYPE REF TO cl_xco_fm_origin OPTIONAL
      RETURNING
        VALUE(rv_resumable_indicator) TYPE abap_bool,
    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_fm_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
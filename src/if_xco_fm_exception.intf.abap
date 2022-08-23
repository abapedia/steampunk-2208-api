INTERFACE if_xco_fm_exception PUBLIC.
  INTERFACES:
    if_xco_printable.

  DATA:
    name            TYPE sxco_fm_exception_name READ-ONLY,
    function_module TYPE REF TO if_xco_function_module READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_state         TYPE REF TO cl_xco_fm_state OPTIONAL
        io_origin        TYPE REF TO cl_xco_fm_origin OPTIONAL
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    content
      IMPORTING
        io_state          TYPE REF TO cl_xco_fm_state OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_fm_exception_content.
ENDINTERFACE.
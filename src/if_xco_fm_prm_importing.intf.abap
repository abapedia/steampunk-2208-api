INTERFACE if_xco_fm_prm_importing PUBLIC.
  INTERFACES:
    if_xco_fm_parameter.

  TYPES:
    list TYPE STANDARD TABLE OF REF TO if_xco_fm_prm_importing WITH DEFAULT KEY.

  ALIASES:
    name FOR if_xco_fm_parameter~name,
    function_module FOR if_xco_fm_parameter~function_module,

    exists FOR if_xco_fm_parameter~exists.

  METHODS:
    content
      IMPORTING
        io_state          TYPE REF TO cl_xco_fm_state OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_fm_prm_imp_content.
ENDINTERFACE.
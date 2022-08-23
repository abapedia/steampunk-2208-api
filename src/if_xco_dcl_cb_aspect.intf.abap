INTERFACE if_xco_dcl_cb_aspect PUBLIC.
  INTERFACES:
    if_xco_dcl_condition_builder.

  ALIASES:
    get_condition FOR if_xco_dcl_condition_builder~get_condition.

  DATA:
    operator TYPE REF TO if_xco_dcl_cb_aspect_operator READ-ONLY.

  METHODS:
    set_aspect
      IMPORTING
        iv_aspect    TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_aspect,

    add_field
      IMPORTING
        io_field TYPE REF TO if_xco_dcl_expression.
ENDINTERFACE.
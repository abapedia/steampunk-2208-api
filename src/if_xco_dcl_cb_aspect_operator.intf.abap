INTERFACE if_xco_dcl_cb_aspect_operator PUBLIC.
  METHODS:
    set_equal
      IMPORTING
        iv_equal     TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_dcl_cb_aspect_operator.
ENDINTERFACE.
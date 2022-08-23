INTERFACE if_xco_dcl_cond_aspect_f PUBLIC.
  METHODS:
    builder
      RETURNING
        VALUE(ro_aspect_cond_builder) TYPE REF TO if_xco_dcl_cb_aspect.
ENDINTERFACE.
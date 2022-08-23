INTERFACE if_xco_dcl_cond_user_f PUBLIC.
  METHODS:
    builder
      RETURNING
        VALUE(ro_user_cond_builder) TYPE REF TO if_xco_dcl_cb_user.
ENDINTERFACE.
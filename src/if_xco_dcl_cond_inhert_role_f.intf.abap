INTERFACE if_xco_dcl_cond_inhert_role_f PUBLIC.
  METHODS:
    builder
      RETURNING
        VALUE(ro_inherit_role_cond_builder) TYPE REF TO if_xco_dcl_cb_inherit_role.
ENDINTERFACE.
INTERFACE if_xco_dcl_cond_inhert_entty_f PUBLIC.
  METHODS:
    builder
      RETURNING
        VALUE(ro_inherit_entity_cond_builder) TYPE REF TO if_xco_dcl_cb_inherit_entity.
ENDINTERFACE.
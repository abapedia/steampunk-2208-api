INTERFACE if_xco_gen_tabl_fkey_cardnalty PUBLIC.
  METHODS:
    get_blueprint
      RETURNING
        VALUE(ro_blueprint) TYPE REF TO cl_xco_gen_tabl_bp_fkey_card.
ENDINTERFACE.
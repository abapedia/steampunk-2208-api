INTERFACE if_xco_cp_gen_dcls_s_form PUBLIC.
  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE sxco_ar_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_dcls_s_form,

    add_role
      RETURNING
        VALUE(ro_role) TYPE REF TO if_xco_gen_dcls_s_fo_role,

    get_role
      RETURNING
        VALUE(ro_role) TYPE REF TO if_xco_gen_dcls_s_fo_role,

    remove_role.
ENDINTERFACE.
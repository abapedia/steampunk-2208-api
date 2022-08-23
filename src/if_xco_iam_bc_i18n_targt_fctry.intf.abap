INTERFACE if_xco_iam_bc_i18n_targt_fctry PUBLIC.
  METHODS:
    object
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_i18n_iam_bc_targt_objct.
ENDINTERFACE.
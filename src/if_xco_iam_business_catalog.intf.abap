INTERFACE if_xco_iam_business_catalog PUBLIC.
  INTERFACES:
    if_xco_ar_object.

  ALIASES:
    exists FOR if_xco_ar_object~exists.

  DATA:
    name        TYPE sxco_iam_bc_object_name,

    i18n_target TYPE REF TO if_xco_iam_bc_i18n_targt_fctry READ-ONLY.

  METHODS:
    content
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_iam_bc_content.
ENDINTERFACE.
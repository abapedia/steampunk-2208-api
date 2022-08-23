INTERFACE if_xco_dcl_cond_factory PUBLIC.
  DATA:
    pfcg                TYPE REF TO if_xco_dcl_cond_pfcg_f READ-ONLY,

    aspect              TYPE REF TO if_xco_dcl_cond_aspect_f READ-ONLY,

    user                TYPE REF TO if_xco_dcl_cond_user_f READ-ONLY,

    inherit_from_role   TYPE REF TO if_xco_dcl_cond_inhert_role_f READ-ONLY,
    inherit_from_entity TYPE REF TO if_xco_dcl_cond_inhert_entty_f READ-ONLY,
    inherit_from_super  TYPE REF TO if_xco_dcl_cond_inhert_super_f READ-ONLY,

    true                TYPE REF TO if_xco_dcl_expr_condition READ-ONLY,

    false               TYPE REF TO if_xco_dcl_expr_condition READ-ONLY,

    void                TYPE REF TO if_xco_dcl_expr_condition READ-ONLY.

  METHODS:
    for
      IMPORTING
        iv_value            TYPE string
      RETURNING
        VALUE(ro_condition) TYPE REF TO if_xco_dcl_expr_condition.
ENDINTERFACE.
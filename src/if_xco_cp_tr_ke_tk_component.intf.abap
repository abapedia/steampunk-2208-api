INTERFACE if_xco_cp_tr_ke_tk_component PUBLIC.
  DATA:
    field_name TYPE sxco_ad_field_name READ-ONLY.

  METHODS:
    get_value
      RETURNING
        VALUE(ro_value) TYPE REF TO if_xco_cp_tr_ke_tk_cpnt_value.
ENDINTERFACE.
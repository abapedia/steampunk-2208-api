INTERFACE if_xco_cp_i18n_bco_targt_fctry PUBLIC.
  METHODS:
    object
      IMPORTING
        iv_name          TYPE sxco_bco_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_i18n_bco_target_object.
ENDINTERFACE.
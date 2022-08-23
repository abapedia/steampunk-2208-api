INTERFACE if_xco_cp_i18n_de_target_fctry PUBLIC.
  METHODS:
    object
      IMPORTING
        iv_name          TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_i18n_de_target_object.
ENDINTERFACE.
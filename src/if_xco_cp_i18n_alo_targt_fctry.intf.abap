INTERFACE if_xco_cp_i18n_alo_targt_fctry PUBLIC.
  METHODS:
    object
      IMPORTING
        iv_name          TYPE sxco_aplo_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_i18n_alo_target_object,

    subobject
      IMPORTING
        iv_object_name      TYPE sxco_aplo_object_name
        iv_subobject_name   TYPE if_xco_aplo_subobject=>tv_name
      RETURNING
        VALUE(ro_subobject) TYPE REF TO if_xco_i18n_alo_target_subobj.
ENDINTERFACE.
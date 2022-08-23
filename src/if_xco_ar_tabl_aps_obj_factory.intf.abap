INTERFACE if_xco_ar_tabl_aps_obj_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name                    TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_append_structure) TYPE REF TO if_xco_append_structure.
ENDINTERFACE.
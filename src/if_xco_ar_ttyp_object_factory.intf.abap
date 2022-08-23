INTERFACE if_xco_ar_ttyp_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name              TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_table_type) TYPE REF TO if_xco_ad_table_type.
ENDINTERFACE.
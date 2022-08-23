INTERFACE if_xco_ar_doma_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name          TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_domain) TYPE REF TO if_xco_domain.
ENDINTERFACE.
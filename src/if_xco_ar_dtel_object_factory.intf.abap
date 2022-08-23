INTERFACE if_xco_ar_dtel_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name          TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_domain) TYPE REF TO if_xco_ad_data_element.
ENDINTERFACE.
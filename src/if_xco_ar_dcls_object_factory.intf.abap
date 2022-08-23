INTERFACE if_xco_ar_dcls_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name                  TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_access_control) TYPE REF TO if_xco_access_control.
ENDINTERFACE.
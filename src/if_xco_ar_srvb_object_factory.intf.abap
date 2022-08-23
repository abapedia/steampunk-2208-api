INTERFACE if_xco_ar_srvb_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name                   TYPE sxco_srvb_object_name
      RETURNING
        VALUE(ro_service_binding) TYPE REF TO if_xco_service_binding.
ENDINTERFACE.
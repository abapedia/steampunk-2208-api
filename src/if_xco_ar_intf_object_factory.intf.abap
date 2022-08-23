INTERFACE if_xco_ar_intf_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name             TYPE sxco_ao_object_name
      RETURNING
        VALUE(ro_interface) TYPE REF TO if_xco_ao_interface.
ENDINTERFACE.
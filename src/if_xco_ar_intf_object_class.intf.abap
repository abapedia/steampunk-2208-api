INTERFACE if_xco_ar_intf_object_class PUBLIC.
  INTERFACES:
    if_xco_ar_object_class.

  METHODS:
    in
      IMPORTING
        io_source            TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_interfaces) TYPE REF TO if_xco_ao_interfaces.
ENDINTERFACE.
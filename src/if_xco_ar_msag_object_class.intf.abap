INTERFACE if_xco_ar_msag_object_class PUBLIC.
  INTERFACES:
    if_xco_ar_object_class.

  METHODS:
    in
      IMPORTING
        io_source                 TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_message_classes) TYPE REF TO if_xco_message_classes.
ENDINTERFACE.
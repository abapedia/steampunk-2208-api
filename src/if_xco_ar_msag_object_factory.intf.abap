INTERFACE if_xco_ar_msag_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name                 TYPE sxco_mc_object_name
      RETURNING
        VALUE(ro_message_class) TYPE REF TO if_xco_message_class.
ENDINTERFACE.
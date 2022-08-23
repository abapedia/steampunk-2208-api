INTERFACE if_xco_message_classes PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_message_classes) TYPE sxco_t_message_classes.
ENDINTERFACE.
INTERFACE if_xco_transport_target PUBLIC.
  INTERFACES:
    if_xco_printable.

  TYPES:
    tv_value TYPE c LENGTH 10.

  DATA:
    value TYPE tv_value READ-ONLY.
ENDINTERFACE.
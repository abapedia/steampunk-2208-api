INTERFACE if_xco_transport_layer PUBLIC.
  TYPES:
    tv_value TYPE c LENGTH 4.

  DATA:
    value TYPE tv_value READ-ONLY.

  METHODS:
    get_transport_target
      RETURNING
        VALUE(ro_transport_target) TYPE REF TO if_xco_transport_target.
ENDINTERFACE.
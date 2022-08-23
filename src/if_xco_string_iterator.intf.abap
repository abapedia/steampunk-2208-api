INTERFACE if_xco_string_iterator PUBLIC.
  INTERFACES:
    if_xco_iterator.

  ALIASES:
    has_next FOR if_xco_iterator~has_next,

    next FOR if_xco_iterator~next.

  DATA:
    current_string TYPE REF TO if_xco_string READ-ONLY.
ENDINTERFACE.
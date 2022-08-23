INTERFACE if_xco_string_iterable PUBLIC.
  METHODS:
    get_iterator
      RETURNING
        VALUE(ro_iterator) TYPE REF TO if_xco_string_iterator.
ENDINTERFACE.
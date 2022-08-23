INTERFACE if_xco_iterator PUBLIC.
  METHODS:
    has_next
      RETURNING
        VALUE(rv_has_next) TYPE abap_bool,

    " Position the iterator on the next item of the iteration. The first call to next will set the
    " iterator to the first item of the iteration.
    next.
ENDINTERFACE.
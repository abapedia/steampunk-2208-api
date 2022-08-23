INTERFACE if_xco_cp_tr_attribute PUBLIC.
  TYPES:
    list     TYPE STANDARD TABLE OF REF TO if_xco_cp_tr_attribute WITH DEFAULT KEY,
    tv_value TYPE c LENGTH 32.

  METHODS:
    get_attribute
      RETURNING
        VALUE(ro_attribute) TYPE REF TO if_xco_cp_cts_attribute,
    get_value
      RETURNING
        VALUE(rv_value) TYPE tv_value.
ENDINTERFACE.
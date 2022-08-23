INTERFACE if_xco_cp_ten_subaccount_id PUBLIC.
  INTERFACES:
    if_xco_printable.

  METHODS:
    as_string
      RETURNING
        VALUE(rv_string) TYPE string.
ENDINTERFACE.
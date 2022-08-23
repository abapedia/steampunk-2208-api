INTERFACE if_xco_name_choice PUBLIC.
  INTERFACES:
    if_xco_string_iterable.

  METHODS:
    get_description
      RETURNING
        VALUE(rv_description) TYPE string.
ENDINTERFACE.
INTERFACE if_xco_data_object PUBLIC.
  INTERFACES:
    if_xco_payload,

    if_xco_printable.

  METHODS:
    get_reference
      RETURNING
        VALUE(ra_reference) TYPE REF TO data,
    write_to
      IMPORTING
        ia_reference TYPE REF TO data.
ENDINTERFACE.
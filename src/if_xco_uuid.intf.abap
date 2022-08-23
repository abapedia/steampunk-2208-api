INTERFACE if_xco_uuid PUBLIC.
  DATA:
    value TYPE sysuuid_x16 READ-ONLY.

  METHODS:
    as
      IMPORTING
        io_format        TYPE REF TO if_xco_uuid_format
      RETURNING
        VALUE(ro_string) TYPE REF TO if_xco_string.
ENDINTERFACE.
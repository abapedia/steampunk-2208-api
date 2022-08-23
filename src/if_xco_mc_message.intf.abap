INTERFACE if_xco_mc_message PUBLIC.
  INTERFACES:
    if_xco_printable.

  TYPES:
    tv_number TYPE symsgno.

  DATA:
    number TYPE tv_number READ-ONLY,
    class  TYPE REF TO if_xco_message_class READ-ONLY.

  METHODS:
    exists
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,

    content
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_mc_message_content.
ENDINTERFACE.
INTERFACE if_xco_message PUBLIC.
  INTERFACES:
    if_xco_news.

  DATA:
    value TYPE symsg READ-ONLY.

  METHODS:
    get_type
      RETURNING
        VALUE(ro_type) TYPE REF TO cl_xco_message_type,

    overwrite
      IMPORTING
        iv_msgty          TYPE symsgty OPTIONAL
        iv_msgid          TYPE symsgid OPTIONAL
        iv_msgno          TYPE symsgno OPTIONAL
        iv_msgv1          TYPE symsgv OPTIONAL
        iv_msgv2          TYPE symsgv OPTIONAL
        iv_msgv3          TYPE symsgv OPTIONAL
        iv_msgv4          TYPE symsgv OPTIONAL
      RETURNING
        VALUE(ro_message) TYPE REF TO if_xco_message,

    place_string
      IMPORTING
        iv_string         TYPE string
        iv_msgv1          TYPE abap_bool DEFAULT abap_false
        iv_msgv2          TYPE abap_bool DEFAULT abap_false
        iv_msgv3          TYPE abap_bool DEFAULT abap_false
        iv_msgv4          TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(ro_message) TYPE REF TO if_xco_message,

    get_short_text
      RETURNING
        VALUE(ro_short_text) TYPE REF TO if_xco_message_short_text,

    get_text
      RETURNING
        VALUE(rv_text) TYPE string,

    write_to_t100_dyn_msg
      IMPORTING
        io_t100_dyn_msg TYPE REF TO if_t100_dyn_msg.
ENDINTERFACE.
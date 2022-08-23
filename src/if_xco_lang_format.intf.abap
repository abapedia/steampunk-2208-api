INTERFACE if_xco_lang_format PUBLIC.
  METHODS:
    is_applicable_to
      IMPORTING
        iv_string                  TYPE clike
      RETURNING
        VALUE(rv_is_applicable_to) TYPE abap_bool,

    to_language
      IMPORTING
        iv_string          TYPE clike
      RETURNING
        VALUE(ro_language) TYPE REF TO if_xco_language,

    from_language
      IMPORTING
        io_language      TYPE REF TO if_xco_language
      RETURNING
        VALUE(rv_string) TYPE string.
ENDINTERFACE.
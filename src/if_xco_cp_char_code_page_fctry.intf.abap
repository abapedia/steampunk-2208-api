INTERFACE if_xco_cp_char_code_page_fctry PUBLIC.
  DATA:
    utf_8 TYPE REF TO if_xco_char_code_page READ-ONLY.

  METHODS:
    for
      IMPORTING
        iv_value            TYPE string
      RETURNING
        VALUE(ro_code_page) TYPE REF TO if_xco_char_code_page.
ENDINTERFACE.
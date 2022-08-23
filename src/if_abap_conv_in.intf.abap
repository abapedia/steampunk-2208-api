INTERFACE if_abap_conv_in
  PUBLIC.

  DATA sap_cp TYPE cl_abap_conv_codepage=>ty_sap_cp READ-ONLY.
  DATA replacement_char TYPE cl_abap_conv_codepage=>ty_repl_char READ-ONLY.
  METHODS convert
    IMPORTING
      !source TYPE xstring
    RETURNING
      VALUE(result) TYPE string
    RAISING
      cx_sy_conversion_codepage.
ENDINTERFACE.
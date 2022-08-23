
INTERFACE if_abap_ungzip_text_handler
  PUBLIC.

  CLASS-METHODS use_out_buf
    IMPORTING
      !out_buf TYPE csequence
      !out_buf_len TYPE i DEFAULT 0
      !part TYPE i
      !gzip_stream TYPE REF TO cl_abap_ungzip_text_stream.
ENDINTERFACE.
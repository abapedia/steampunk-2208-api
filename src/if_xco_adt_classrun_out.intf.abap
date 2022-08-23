INTERFACE if_xco_adt_classrun_out PUBLIC.
  DATA:
    plain TYPE REF TO if_oo_adt_classrun_out READ-ONLY.

  METHODS:
    write
      IMPORTING
        ia_data TYPE any,

    write_text
      IMPORTING
        io_text TYPE REF TO if_xco_text,

    write_news
      IMPORTING
        io_news TYPE REF TO if_xco_news.
ENDINTERFACE.
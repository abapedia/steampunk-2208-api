INTERFACE if_xco_mc_message_content PUBLIC.
  TYPES:
    tv_short_text TYPE c LENGTH 73,

    BEGIN OF ts_content,
      short_text TYPE tv_short_text,
    END OF ts_content.

  DATA:
    message TYPE REF TO if_xco_mc_message READ-ONLY.

  METHODS:
    get_short_text
      RETURNING
        VALUE(rv_short_text) TYPE tv_short_text,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
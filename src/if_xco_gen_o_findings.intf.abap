INTERFACE if_xco_gen_o_findings PUBLIC.
  INTERFACES:
    if_xco_news.

  DATA:
    for TYPE REF TO if_xco_gen_o_f_section_factory READ-ONLY.

  METHODS:
    get
      RETURNING
        VALUE(rt_findings) TYPE sxco_t_gen_o_findings,

    contain_errors
      RETURNING
        VALUE(rv_contain_errors) TYPE abap_bool,

    contain_warnings
      RETURNING
        VALUE(rv_contain_warnings) TYPE abap_bool.
ENDINTERFACE.
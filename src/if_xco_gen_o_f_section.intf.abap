INTERFACE if_xco_gen_o_f_section PUBLIC.
  INTERFACES:
    if_xco_news.

  METHODS:
    for
      IMPORTING
        iv_name          TYPE clike
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_gen_o_f_object,

    get
      RETURNING
        VALUE(rt_findings) TYPE sxco_t_gen_o_findings.
ENDINTERFACE.
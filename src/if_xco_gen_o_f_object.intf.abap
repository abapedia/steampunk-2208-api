INTERFACE if_xco_gen_o_f_object PUBLIC.
  INTERFACES:
    if_xco_news.

  METHODS:
    get
      RETURNING
        VALUE(rt_findings) TYPE sxco_t_gen_o_findings.
ENDINTERFACE.
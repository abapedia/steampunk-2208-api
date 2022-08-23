INTERFACE if_xco_languages PUBLIC.
  METHODS:
    get
      RETURNING
        VALUE(rt_languages) TYPE sxco_t_languages.
ENDINTERFACE.
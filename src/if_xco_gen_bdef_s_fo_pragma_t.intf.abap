INTERFACE if_xco_gen_bdef_s_fo_pragma_t PUBLIC.
  METHODS:
    add_pragma
      IMPORTING
        iv_value TYPE string,
    remove_pragma
      IMPORTING
        iv_value TYPE string.
ENDINTERFACE.
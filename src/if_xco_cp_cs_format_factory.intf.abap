INTERFACE if_xco_cp_cs_format_factory PUBLIC.
  METHODS:
    adt
      RETURNING
        VALUE(ro_adt) TYPE REF TO cl_xco_cp_cs_fmt_adt.
ENDINTERFACE.
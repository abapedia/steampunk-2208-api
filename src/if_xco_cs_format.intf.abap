INTERFACE if_xco_cs_format PUBLIC.
  METHODS:
    get_implementation
      RETURNING
        VALUE(ro_implementation) TYPE REF TO cl_xco_cs_format.
ENDINTERFACE.
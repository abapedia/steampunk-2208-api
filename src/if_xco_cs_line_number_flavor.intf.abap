INTERFACE if_xco_cs_line_number_flavor PUBLIC.
  METHODS:
    get_implementation
      RETURNING
        VALUE(ro_implementation) TYPE REF TO cl_xco_cs_line_number_flavor.
ENDINTERFACE.
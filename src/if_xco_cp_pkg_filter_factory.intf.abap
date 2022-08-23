INTERFACE if_xco_cp_pkg_filter_factory PUBLIC.
  METHODS:
    superpackage
      IMPORTING
        io_constraint          TYPE REF TO cl_xco_asql_constraint
      RETURNING
        VALUE(ro_superpackage) TYPE REF TO if_xco_pkg_filter.
ENDINTERFACE.
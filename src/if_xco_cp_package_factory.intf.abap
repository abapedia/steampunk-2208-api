INTERFACE if_xco_cp_package_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name           TYPE sxco_package
      RETURNING
        VALUE(ro_package) TYPE REF TO if_xco_package.
ENDINTERFACE.
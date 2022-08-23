INTERFACE if_xco_metadata_extension PUBLIC.
  INTERFACES:
    if_xco_ar_object.

  ALIASES:
    exists FOR if_xco_ar_object~exists.

  DATA:
    name TYPE sxco_cds_object_name READ-ONLY.

  METHODS:
    check_syntax
      RETURNING
        VALUE(ro_check_result) TYPE REF TO if_xco_dp_check_result.
ENDINTERFACE.
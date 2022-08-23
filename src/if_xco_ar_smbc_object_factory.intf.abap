INTERFACE if_xco_ar_smbc_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name                           TYPE sxco_bco_name
      RETURNING
        VALUE(ro_business_cnfgrtn_object) TYPE REF TO if_xco_business_cnfgrtn_objct.
ENDINTERFACE.
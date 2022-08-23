INTERFACE if_xco_ar_smbc_object_class PUBLIC.
  INTERFACES:
    if_xco_ar_object_class.

  METHODS:
    in
      IMPORTING
        io_source                          TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_business_cnfgrtn_objects) TYPE REF TO if_xco_business_cnfgrtn_objcts.
ENDINTERFACE.
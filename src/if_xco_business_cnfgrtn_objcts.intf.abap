INTERFACE if_xco_business_cnfgrtn_objcts PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_business_cnfgrtn_objects) TYPE sxco_t_business_cnfgrtn_objcts.
ENDINTERFACE.
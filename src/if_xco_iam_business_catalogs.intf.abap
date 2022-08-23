INTERFACE if_xco_iam_business_catalogs PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_iam_business_catalogs) TYPE sxco_t_iam_business_catalogs.
ENDINTERFACE.
INTERFACE if_xco_ar_sia1_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name                        TYPE sxco_iam_bc_object_name
      RETURNING
        VALUE(ro_iam_business_catalog) TYPE REF TO if_xco_iam_business_catalog.
ENDINTERFACE.
INTERFACE if_xco_ar_sia1_object_class PUBLIC.
  INTERFACES:
    if_xco_ar_object_class.

  METHODS:
    in
      IMPORTING
        io_source                       TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_iam_business_catalogs) TYPE REF TO if_xco_iam_business_catalogs.
ENDINTERFACE.
INTERFACE if_xco_ar_xslt_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name                  TYPE sxco_tf_object_name
      RETURNING
        VALUE(ro_transformation) TYPE REF TO if_xco_transformation.
ENDINTERFACE.
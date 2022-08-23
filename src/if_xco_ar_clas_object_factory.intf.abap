INTERFACE if_xco_ar_clas_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name         TYPE sxco_ao_object_name
      RETURNING
        VALUE(ro_class) TYPE REF TO if_xco_ao_class.
ENDINTERFACE.
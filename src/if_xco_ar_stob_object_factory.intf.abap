INTERFACE if_xco_ar_stob_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name          TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_entity) TYPE REF TO if_xco_cds_entity.
ENDINTERFACE.
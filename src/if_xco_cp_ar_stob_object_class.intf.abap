INTERFACE if_xco_cp_ar_stob_object_class PUBLIC.

  METHODS:
    in
      IMPORTING
        io_source          TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_entities) TYPE REF TO if_xco_cds_entities.
ENDINTERFACE.
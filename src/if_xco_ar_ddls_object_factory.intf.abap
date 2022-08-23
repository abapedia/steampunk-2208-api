INTERFACE if_xco_ar_ddls_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name                   TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_data_definition) TYPE REF TO if_xco_data_definition.
ENDINTERFACE.
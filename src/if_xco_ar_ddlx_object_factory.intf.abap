INTERFACE if_xco_ar_ddlx_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name                      TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_metadata_extension) TYPE REF TO if_xco_metadata_extension.
ENDINTERFACE.
INTERFACE if_xco_ar_ddlx_object_class PUBLIC.
  INTERFACES:
    if_xco_ar_object_class.

  METHODS:
    in
      IMPORTING
        io_source                     TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_metadata_extensions) TYPE REF TO if_xco_metadata_extensions.
ENDINTERFACE.
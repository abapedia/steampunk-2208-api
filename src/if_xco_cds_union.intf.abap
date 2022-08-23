INTERFACE if_xco_cds_union PUBLIC.
  INTERFACES:
    if_xco_printable.

  DATA:
    entity TYPE REF TO if_xco_cds_entity READ-ONLY.

  METHODS:
    content
      IMPORTING
        io_read_state     TYPE REF TO cl_xco_ddef_object_read_state OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_cds_union_content.
ENDINTERFACE.
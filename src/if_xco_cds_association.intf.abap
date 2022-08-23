INTERFACE if_xco_cds_association PUBLIC.
  INTERFACES:
    if_xco_printable.

  DATA:
    name   TYPE sxco_cds_association_name READ-ONLY,

    entity TYPE REF TO if_xco_cds_entity READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_read_state    TYPE REF TO cl_xco_ddef_object_read_state OPTIONAL
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,

    content
      IMPORTING
        io_read_state     TYPE REF TO cl_xco_ddef_object_read_state OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_cds_association_content.
ENDINTERFACE.
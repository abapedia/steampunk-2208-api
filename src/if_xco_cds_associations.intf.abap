INTERFACE if_xco_cds_associations PUBLIC.
  METHODS:
    get
      IMPORTING
        io_read_state          TYPE REF TO cl_xco_ddef_object_read_state OPTIONAL
      RETURNING
        VALUE(rt_associations) TYPE sxco_t_cds_associations.
ENDINTERFACE.
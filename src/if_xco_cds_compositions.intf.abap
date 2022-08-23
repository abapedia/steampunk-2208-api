INTERFACE if_xco_cds_compositions PUBLIC.
  METHODS:
    get
      IMPORTING
        io_read_state          TYPE REF TO cl_xco_ddef_object_read_state OPTIONAL
      RETURNING
        VALUE(rt_compositions) TYPE sxco_t_cds_compositions.
ENDINTERFACE.
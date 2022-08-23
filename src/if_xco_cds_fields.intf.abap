INTERFACE if_xco_cds_fields PUBLIC.
  METHODS:
    get
      IMPORTING
        io_read_state    TYPE REF TO cl_xco_ddef_object_read_state OPTIONAL
      RETURNING
        VALUE(rt_fields) TYPE sxco_t_cds_fields,

    get_names
      IMPORTING
        io_read_state   TYPE REF TO cl_xco_ddef_object_read_state OPTIONAL
      RETURNING
        VALUE(rt_names) TYPE sxco_t_cds_field_names.
ENDINTERFACE.
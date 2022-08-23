INTERFACE if_xco_gtt_fields PUBLIC.
  METHODS:
    get_names
      IMPORTING
        io_read_state   TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      RETURNING
        VALUE(rt_names) TYPE sxco_t_ad_field_names,

    get
      IMPORTING
        io_read_state    TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      RETURNING
        VALUE(rt_fields) TYPE sxco_t_gtt_fields.
ENDINTERFACE.
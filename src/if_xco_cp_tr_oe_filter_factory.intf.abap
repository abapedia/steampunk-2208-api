INTERFACE if_xco_cp_tr_oe_filter_factory PUBLIC.
  METHODS:
    program_id
      IMPORTING
        io_program_id        TYPE REF TO cl_xco_cts_program_id
      RETURNING
        VALUE(ro_program_id) TYPE REF TO if_xco_tr_entry_filter,
    object_type
      IMPORTING
        io_constraint         TYPE REF TO cl_xco_asql_constraint
      RETURNING
        VALUE(ro_object_type) TYPE REF TO if_xco_tr_entry_filter,
    object_name
      IMPORTING
        io_constraint         TYPE REF TO cl_xco_asql_constraint
      RETURNING
        VALUE(ro_object_name) TYPE REF TO if_xco_tr_entry_filter.
ENDINTERFACE.
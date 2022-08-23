INTERFACE if_xco_gen_bdef_s_fo_b_validtn PUBLIC.
  INTERFACES:

    if_xco_gen_bdef_s_fo_pragma_t.

  ALIASES:
    add_pragma FOR if_xco_gen_bdef_s_fo_pragma_t~add_pragma,
    remove_pragma FOR if_xco_gen_bdef_s_fo_pragma_t~remove_pragma.

  METHODS:
    set_time
      IMPORTING
        io_time      TYPE REF TO cl_xco_bdef_evaluation_time
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_validtn,

    set_trigger_fields
      IMPORTING
        it_trigger_fields TYPE sxco_t_cds_field_names
      RETURNING
        VALUE(ro_me)      TYPE REF TO if_xco_gen_bdef_s_fo_b_validtn,

    set_trigger_operations
      IMPORTING
        it_trigger_operations TYPE sxco_t_bdef_trigger_operations
      RETURNING
        VALUE(ro_me)          TYPE REF TO if_xco_gen_bdef_s_fo_b_validtn.
ENDINTERFACE.
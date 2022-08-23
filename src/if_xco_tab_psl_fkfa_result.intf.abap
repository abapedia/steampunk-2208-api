INTERFACE if_xco_tab_psl_fkfa_result PUBLIC.
  TYPES:
    BEGIN OF ts_field_assignment,
      check_field       TYPE c LENGTH 30,
      foreign_key_table TYPE c LENGTH 30,
      foreign_key_field TYPE c LENGTH 30,
    END OF ts_field_assignment,

    tt_field_assignment TYPE HASHED TABLE OF ts_field_assignment WITH UNIQUE KEY check_field.

  METHODS:
    is_incomplete
      RETURNING
        VALUE(rv_is_incomplete) TYPE abap_bool,
    is_non_unique
      RETURNING
        VALUE(rv_is_non_unique) TYPE abap_bool,
    get_field_assignments
      RETURNING
        VALUE(rt_field_assignments) TYPE tt_field_assignment.
ENDINTERFACE.
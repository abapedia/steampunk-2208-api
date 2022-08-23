INTERFACE if_xco_gen_ao_s_fo_c_type PUBLIC.
  TYPES:
    BEGIN OF ts_component,
      name TYPE sxco_ad_field_name,
      type TYPE REF TO if_xco_gen_ao_type_d_str_cpnt,
    END OF ts_component,

    tt_component TYPE HASHED TABLE OF ts_component WITH UNIQUE KEY name.

  INTERFACES:
    if_xco_gen_ao_s_fo_component.

  ALIASES:
    name FOR if_xco_gen_ao_s_fo_component~name.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE sxco_ao_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_ao_s_fo_c_type,

    for
      IMPORTING
        io_declaration TYPE REF TO if_xco_gen_ao_type_declaration
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_ao_s_fo_c_type,

    for_structure
      IMPORTING
        it_components TYPE tt_component
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_ao_s_fo_c_type,

    for_table_type
      IMPORTING
        io_row_type               TYPE REF TO if_xco_gen_ao_type_d_tab_row
        iv_initial_number_of_rows TYPE i DEFAULT 0
        io_access                 TYPE REF TO cl_xco_tt_access OPTIONAL
        io_primary_key            TYPE REF TO if_xco_tt_primary_key OPTIONAL
        it_secondary_keys         TYPE sxco_t_tt_secondary_keys OPTIONAL
      RETURNING
        VALUE(ro_me)              TYPE REF TO if_xco_gen_ao_s_fo_c_type.
ENDINTERFACE.
INTERFACE if_xco_cp_gen_ttyp_s_form PUBLIC.
  TYPES:
    tv_short_description TYPE c LENGTH 60,

    ts_secondary_key     TYPE not_released,
    tt_secondary_keys    TYPE STANDARD TABLE OF ts_secondary_key WITH DEFAULT KEY.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE tv_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_ttyp_s_form,

    set_row_type
      IMPORTING
        io_row_type  TYPE REF TO if_xco_gen_ttyp_row_type
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_ttyp_s_form,

    set_initial_number_of_rows
      IMPORTING
        iv_initial_number_of_rows TYPE i
      RETURNING
        VALUE(ro_me)              TYPE REF TO if_xco_cp_gen_ttyp_s_form,

    set_access
      IMPORTING
        io_access    TYPE REF TO cl_xco_tt_access
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_ttyp_s_form,

    set_primary_key
      IMPORTING
        io_primary_key TYPE REF TO if_xco_tt_primary_key
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_cp_gen_ttyp_s_form,

    set_secondary_keys
      IMPORTING
        it_secondary_keys TYPE tt_secondary_keys
      RETURNING
        VALUE(ro_me)      TYPE REF TO if_xco_cp_gen_ttyp_s_form.
ENDINTERFACE.
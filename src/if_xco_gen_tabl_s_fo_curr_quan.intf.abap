INTERFACE if_xco_gen_tabl_s_fo_curr_quan PUBLIC.
  TYPES:
    tv_reference_table TYPE c LENGTH 30,
    tv_reference_field TYPE c LENGTH 30.

  METHODS:
    set_reference_table
      IMPORTING
        iv_reference_table TYPE tv_reference_table
      RETURNING
        VALUE(ro_me)       TYPE REF TO if_xco_gen_tabl_s_fo_curr_quan,

    set_reference_field
      IMPORTING
        iv_reference_field TYPE tv_reference_field
      RETURNING
        VALUE(ro_me)       TYPE REF TO if_xco_gen_tabl_s_fo_curr_quan.
ENDINTERFACE.
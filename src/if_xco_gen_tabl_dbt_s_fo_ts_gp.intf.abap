INTERFACE if_xco_gen_tabl_dbt_s_fo_ts_gp PUBLIC.
  METHODS:
    set_data_class
      IMPORTING
        io_data_class                TYPE REF TO cl_xco_dbt_data_class
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_tabl_dbt_s_fo_ts_gp,

    set_size_category
      IMPORTING
        io_size_category             TYPE REF TO cl_xco_dbt_size_category
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_tabl_dbt_s_fo_ts_gp,

    set_buffering
      IMPORTING
        io_buffering                 TYPE REF TO cl_xco_dbt_buffering
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_tabl_dbt_s_fo_ts_gp,

    set_buffering_type
      IMPORTING
        io_buffering_type  TYPE REF TO cl_xco_dbt_buffering_type
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_tabl_dbt_s_fo_ts_gp.
ENDINTERFACE.
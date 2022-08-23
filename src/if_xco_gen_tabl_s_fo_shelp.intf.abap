INTERFACE if_xco_gen_tabl_s_fo_shelp PUBLIC.
  TYPES:
    tv_short_description TYPE c LENGTH 60,

    BEGIN OF ts_field_assignment,
      parameter  TYPE c LENGTH 30,
      table_name TYPE tabname,
      field_name TYPE c LENGTH 30,
    END OF ts_field_assignment,

    tt_field_assignment TYPE HASHED TABLE OF ts_field_assignment WITH UNIQUE KEY parameter.

  DATA:
    field_name TYPE sxco_ad_field_name READ-ONLY.

  METHODS:
    set_search_help_name
      IMPORTING
        iv_table_name TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_tabl_s_fo_shelp,

    set_field_assignments
      IMPORTING
        it_field_assignments TYPE tt_field_assignment
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_tabl_s_fo_shelp.
ENDINTERFACE.
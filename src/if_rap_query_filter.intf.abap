INTERFACE if_rap_query_filter PUBLIC.

  TYPES:
    BEGIN OF ty_range_option,
      sign   TYPE c LENGTH 1,
      option TYPE c LENGTH 2,
      low    TYPE string,
      high   TYPE string,
    END OF ty_range_option,
    tt_range_option TYPE STANDARD TABLE OF ty_range_option WITH EMPTY KEY,

    BEGIN OF ty_name_range_pairs,
      name  TYPE string,
      range TYPE tt_range_option,
    END OF ty_name_range_pairs,
    tt_name_range_pairs TYPE STANDARD TABLE OF ty_name_range_pairs WITH EMPTY KEY.
  METHODS get_as_ranges IMPORTING iv_drop_null_comparisons TYPE abap_bool DEFAULT abap_false
                        RETURNING VALUE(rt_ranges)         TYPE tt_name_range_pairs
                        RAISING   cx_rap_query_filter_no_range.
  METHODS get_as_sql_string RETURNING VALUE(rv_string) TYPE string.
  METHODS get_as_tree RETURNING VALUE(ro_tree) TYPE REF TO if_rap_query_filter_tree.

ENDINTERFACE.
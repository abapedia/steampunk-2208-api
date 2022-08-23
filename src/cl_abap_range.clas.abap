CLASS cl_abap_range DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES range_sign TYPE ddsign.
    TYPES range_option TYPE ddoption.

    CONSTANTS:
      BEGIN OF sign,
        including TYPE range_sign VALUE 'I',
        excluding TYPE range_sign VALUE 'E',
      END OF sign.
    CONSTANTS:
      BEGIN OF option,
        equal             TYPE range_option VALUE 'EQ',
        not_equal         TYPE range_option VALUE 'NE',
        greater           TYPE range_option VALUE 'GT',
        greater_equal     TYPE range_option VALUE 'GE',
        less              TYPE range_option VALUE 'LT',
        less_equal        TYPE range_option VALUE 'LE',
        between           TYPE range_option VALUE 'BT',
        not_between       TYPE range_option VALUE 'NB',
        cover_pattern     TYPE range_option VALUE 'CP',
        not_cover_pattern TYPE range_option VALUE 'NP',
      END   OF option.

    TYPES: BEGIN OF dswhere,
      line TYPE c LENGTH 72,
      END OF dswhere.
    TYPES ds_where_tab TYPE STANDARD TABLE OF dswhere WITH DEFAULT KEY.

    TYPES: BEGIN OF ds_where,
             tablename TYPE c LENGTH 30,
             where_tab TYPE ds_where_tab,
           END OF ds_where.

    TYPES: ds_twhere TYPE STANDARD TABLE OF ds_where WITH DEFAULT KEY.

    TYPES: BEGIN OF dsexpr,
      logop TYPE c LENGTH 3,
      arity TYPE i,
      fieldname TYPE c LENGTH 30,
      option TYPE c LENGTH 2,
      low TYPE c LENGTH 45,
      high TYPE c LENGTH 45,
      END OF dsexpr.
    TYPES: ds_expr_tab TYPE STANDARD TABLE OF dsexpr WITH DEFAULT KEY.

    TYPES: BEGIN OF ds_expr,
             tablename TYPE c LENGTH 30,
             expr_tab  TYPE ds_expr_tab,
           END OF ds_expr.

    TYPES: ds_texpr  TYPE STANDARD TABLE OF ds_expr  WITH DEFAULT KEY.

    TYPES: BEGIN OF dsselopt,
      sign TYPE c LENGTH 1,
      option TYPE c LENGTH 2,
      low TYPE c LENGTH 45,
      high TYPE c LENGTH 45,
      END OF dsselopt.
    TYPES: ds_selopt_t TYPE STANDARD TABLE OF dsselopt WITH DEFAULT KEY.

    TYPES: BEGIN OF ds_frange,
             fieldname TYPE c LENGTH 30,
             selopt_t  TYPE ds_selopt_t,
           END OF ds_frange.

    TYPES: ds_frange_t TYPE STANDARD TABLE OF ds_frange WITH DEFAULT KEY.

    TYPES: BEGIN OF ds_range,
             tablename TYPE c LENGTH 30,
             frange_t  TYPE ds_frange_t,
           END OF ds_range.

    TYPES: ds_trange TYPE STANDARD TABLE OF ds_range WITH DEFAULT KEY.

    TYPES: BEGIN OF ds_type,
             clauses TYPE ds_twhere,
             texpr   TYPE ds_texpr,
             trange  TYPE ds_trange,
           END   OF ds_type.
    CLASS-METHODS ranges_to_where
      IMPORTING
        !ranges        TYPE ds_trange
      EXPORTING
        !where_clauses TYPE ds_twhere.
    CLASS-METHODS ranges_to_expressions
      IMPORTING
        !field_ranges TYPE ds_trange
      EXPORTING
        !expressions  TYPE ds_texpr.
    CLASS-METHODS expressions_to_ranges
      IMPORTING
        !expressions  TYPE ds_texpr
      EXPORTING
        !field_ranges TYPE ds_trange
      RAISING
        cx_abap_range_conv.
    CLASS-METHODS where_to_ranges
      IMPORTING
        !where_clauses TYPE ds_twhere
      EXPORTING
        !field_ranges  TYPE ds_trange
      RAISING
        cx_abap_range_conv.
ENDCLASS.

CLASS cl_abap_range IMPLEMENTATION.
ENDCLASS.
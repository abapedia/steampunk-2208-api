INTERFACE if_ble_dynamic_table PUBLIC.

  TYPES: BEGIN OF s_coldef,
            name     TYPE string,
            type     TYPE string,
            length   TYPE i,
            decimals TYPE i,
          END OF s_coldef.

  TYPES: t_coldef TYPE TABLE OF s_coldef WITH DEFAULT KEY.

  CONSTANTS:
              BEGIN OF co_column_type,
                " character types
                string     TYPE string VALUE 'string',
                xstring    TYPE string VALUE 'xstring', " byte string
                xfield     TYPE string VALUE 'xfield',  " byte array
                char       TYPE string VALUE 'char', " char(n)
                numchar    TYPE string VALUE 'numchar', "numc(n)
                " date and time
                date       TYPE string VALUE 'date',
                time       TYPE string VALUE 'time',
                " numeric types
                int1       TYPE string VALUE 'int1',
                int2       TYPE string VALUE 'int2',
                int4       TYPE string VALUE 'int4',
                int8       TYPE string VALUE 'int8',
                float      TYPE string VALUE 'float',
                fixed      TYPE string VALUE 'fixed_point', " packed(l, d)
                decfloat16 TYPE string VALUE 'decfloat16',
                decfloat34 TYPE string VALUE 'decfloat34',
              END OF co_column_type.
  METHODS add_column
     IMPORTING iv_name     TYPE string
               iv_type     TYPE string
               iv_length   TYPE i OPTIONAL
               iv_decimals TYPE i OPTIONAL
     RAISING   cx_ble_dynamic_table_error.
  METHODS append_row
     RAISING cx_ble_dynamic_table_error.
  METHODS get_columns
     RETURNING VALUE(rt_columns) TYPE t_coldef
     RAISING   cx_ble_dynamic_table_error.
  METHODS get_iterator
     IMPORTING iv_reset_current_iteration TYPE abap_bool DEFAULT abap_false
     RETURNING VALUE(ro_row_iterator)     TYPE REF TO if_ble_dt_row_iterator
     RAISING cx_ble_dynamic_table_error.

ENDINTERFACE.
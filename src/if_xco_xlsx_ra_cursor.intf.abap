INTERFACE if_xco_xlsx_ra_cursor PUBLIC.
  DATA:
    position TYPE REF TO if_xco_xlsx_ra_cursor_position READ-ONLY.

  METHODS:
    has_cell
      RETURNING
        VALUE(rv_has_cell) TYPE abap_bool,
    get_cell
      RETURNING
        VALUE(ro_cell) TYPE REF TO if_xco_xlsx_ra_cell,
    set_column
      IMPORTING
        io_column    TYPE REF TO cl_xco_xlsx_coordinate
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_xlsx_ra_cursor,
    set_row
      IMPORTING
        io_row       TYPE REF TO cl_xco_xlsx_coordinate
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_xlsx_ra_cursor,
    move_up
      IMPORTING
        iv_steps     TYPE i DEFAULT 1
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_xlsx_ra_cursor,
    move_right
      IMPORTING
        iv_steps     TYPE i DEFAULT 1
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_xlsx_ra_cursor,
    move_down
      IMPORTING
        iv_steps     TYPE i DEFAULT 1
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_xlsx_ra_cursor,
    move_left
      IMPORTING
        iv_steps     TYPE i DEFAULT 1
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_xlsx_ra_cursor.
ENDINTERFACE.
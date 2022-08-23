INTERFACE if_xco_xlsx_slc_pb_spl_from_to PUBLIC.
  INTERFACES:
    if_xco_xlsx_slc_pattern_bldr.

  ALIASES:
    get_pattern FOR if_xco_xlsx_slc_pattern_bldr~get_pattern.

  METHODS:
    from_column
      IMPORTING
        io_column    TYPE REF TO cl_xco_xlsx_coordinate
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_xlsx_slc_pb_spl_from_to,
    to_column
      IMPORTING
        io_column    TYPE REF TO cl_xco_xlsx_coordinate
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_xlsx_slc_pb_spl_from_to,
    from_row
      IMPORTING
        io_row       TYPE REF TO cl_xco_xlsx_coordinate
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_xlsx_slc_pb_spl_from_to,
    to_row
      IMPORTING
        io_row       TYPE REF TO cl_xco_xlsx_coordinate
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_xlsx_slc_pb_spl_from_to.
ENDINTERFACE.
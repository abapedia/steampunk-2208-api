INTERFACE if_xco_xlsx_ra_worksheet_fctry PUBLIC.
  METHODS:
    for_name
      IMPORTING
        iv_name             TYPE string
      RETURNING
        VALUE(ro_worksheet) TYPE REF TO if_xco_xlsx_ra_worksheet,
    at_position
      IMPORTING
        iv_position         TYPE i
      RETURNING
        VALUE(ro_worksheet) TYPE REF TO if_xco_xlsx_ra_worksheet.
ENDINTERFACE.
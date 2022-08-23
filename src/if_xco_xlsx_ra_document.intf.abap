INTERFACE if_xco_xlsx_ra_document PUBLIC.
  METHODS:
    get_workbook
      RETURNING
        VALUE(ro_workbook) TYPE REF TO if_xco_xlsx_ra_workbook.
ENDINTERFACE.
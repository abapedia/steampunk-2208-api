INTERFACE if_xco_cp_xlsx_doc_file_contnt PUBLIC.
  METHODS:
    read_access
      RETURNING
        VALUE(ro_read_access) TYPE REF TO if_xco_xlsx_ra_document.
ENDINTERFACE.
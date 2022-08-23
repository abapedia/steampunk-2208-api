INTERFACE if_xco_cp_xlsx_document_fctry PUBLIC.
  METHODS:
    for_file_content
      IMPORTING
        iv_file_content    TYPE xstring
      RETURNING
        VALUE(ro_document) TYPE REF TO if_xco_cp_xlsx_doc_file_contnt.
ENDINTERFACE.
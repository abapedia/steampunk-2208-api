CLASS cl_xco_cp_cds_prvdr_cntrct_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      analytical_query        TYPE REF TO cl_xco_cds_provider_contract READ-ONLY,
      sql_query               TYPE REF TO cl_xco_cds_provider_contract READ-ONLY,
      transactional_interface TYPE REF TO cl_xco_cds_provider_contract READ-ONLY,
      transactional_query     TYPE REF TO cl_xco_cds_provider_contract READ-ONLY.

ENDCLASS.

CLASS cl_xco_cp_cds_prvdr_cntrct_f IMPLEMENTATION.
ENDCLASS.
INTERFACE if_xco_cp_string_dcmp_factory PUBLIC.
  DATA:
    camel_case  TYPE REF TO if_xco_string_decomposition READ-ONLY,
    pascal_case TYPE REF TO if_xco_string_decomposition READ-ONLY.
ENDINTERFACE.
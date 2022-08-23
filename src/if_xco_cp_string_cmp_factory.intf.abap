INTERFACE if_xco_cp_string_cmp_factory PUBLIC.
  DATA:
    camel_case  TYPE REF TO if_xco_string_composition READ-ONLY,
    pascal_case TYPE REF TO if_xco_string_composition READ-ONLY.
ENDINTERFACE.
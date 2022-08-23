INTERFACE if_xco_cp_json_trnsfrmtn_fctry PUBLIC.
  DATA:
    camel_case_to_underscore  TYPE REF TO if_xco_json_transformation READ-ONLY,
    pascal_case_to_underscore TYPE REF TO if_xco_json_transformation READ-ONLY,

    underscore_to_camel_case  TYPE REF TO if_xco_json_transformation READ-ONLY,
    underscore_to_pascal_case TYPE REF TO if_xco_json_transformation READ-ONLY,

    boolean_to_abap_bool      TYPE REF TO if_xco_json_transformation READ-ONLY.

  METHODS:
    name_replacement
      IMPORTING
        it_name_mapping            TYPE sxco_t_json_name_mapping
      RETURNING
        VALUE(ro_name_replacement) TYPE REF TO if_xco_json_transformation.
ENDINTERFACE.
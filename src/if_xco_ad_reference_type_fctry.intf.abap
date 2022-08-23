INTERFACE if_xco_ad_reference_type_fctry PUBLIC.
  METHODS:
    built_in_type
      IMPORTING
        io_built_in_type        TYPE REF TO cl_xco_ad_built_in_type
      RETURNING
        VALUE(ro_built_in_type) TYPE REF TO if_xco_ad_built_in_type_rfrnc,
    data_element
      IMPORTING
        iv_name                TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_data_element) TYPE REF TO if_xco_ad_data_type_reference,
    structure
      IMPORTING
        iv_name             TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_structure) TYPE REF TO if_xco_ad_data_type_reference,
    table_type
      IMPORTING
        iv_name              TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_table_type) TYPE REF TO if_xco_ad_data_type_reference.
ENDINTERFACE.
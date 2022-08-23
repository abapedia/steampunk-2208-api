INTERFACE if_xco_str_component PUBLIC.
  INTERFACES:
    if_xco_printable.

  DATA:
    name        TYPE sxco_ad_field_name READ-ONLY,
    structure   TYPE REF TO if_xco_ad_structure READ-ONLY,

    foreign_key TYPE REF TO if_xco_str_foreign_key READ-ONLY,
    search_help TYPE REF TO if_xco_str_search_help READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_read_state    TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,

    content
      IMPORTING
        io_read_state     TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_str_component_content,
    proposal
      IMPORTING
        io_read_state      TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      RETURNING
        VALUE(ro_proposal) TYPE REF TO if_xco_str_component_pr_fctry,

    get_value_check
      IMPORTING
        ia_value              TYPE data
      RETURNING
        VALUE(ro_value_check) TYPE REF TO if_xco_dp_check.
ENDINTERFACE.
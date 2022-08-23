INTERFACE if_xco_gtt_field PUBLIC.
  INTERFACES:
    if_xco_printable.

  DATA:
    name                   TYPE sxco_ad_field_name READ-ONLY,
    global_temporary_table TYPE REF TO if_xco_global_temporary_table READ-ONLY,

    foreign_key            TYPE REF TO if_xco_gtt_foreign_key READ-ONLY,
    search_help            TYPE REF TO if_xco_gtt_search_help READ-ONLY.

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
        VALUE(ro_content) TYPE REF TO if_xco_gtt_field_content.
ENDINTERFACE.
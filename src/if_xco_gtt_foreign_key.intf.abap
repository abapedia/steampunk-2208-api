INTERFACE if_xco_gtt_foreign_key PUBLIC.
  DATA:
    field TYPE REF TO if_xco_gtt_field READ-ONLY.

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
        VALUE(ro_content) TYPE REF TO if_xco_gtt_foreign_key_content.
ENDINTERFACE.
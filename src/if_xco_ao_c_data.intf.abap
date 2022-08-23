INTERFACE if_xco_ao_c_data PUBLIC.
  INTERFACES:
    if_xco_printable.

  TYPES:
    list TYPE STANDARD TABLE OF REF TO if_xco_ao_c_data WITH DEFAULT KEY.

  DATA:
    name   TYPE sxco_ao_component_name READ-ONLY,
    object TYPE REF TO if_xco_ao_object READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_version       TYPE REF TO cl_xco_ao_version OPTIONAL
        io_origin        TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    content
      IMPORTING
        io_version        TYPE REF TO cl_xco_ao_version OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_ao_c_data_content.
ENDINTERFACE.
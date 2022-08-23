INTERFACE if_xco_ao_s_parameter PUBLIC.
  INTERFACES:
    if_xco_printable.

  DATA:
    name   TYPE sxco_ao_subcomponent_name READ-ONLY,
    method TYPE REF TO if_xco_ao_c_method READ-ONLY.

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
        VALUE(ro_content) TYPE REF TO if_xco_ao_s_parameter_content.
ENDINTERFACE.
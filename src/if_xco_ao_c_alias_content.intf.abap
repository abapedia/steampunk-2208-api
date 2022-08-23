INTERFACE if_xco_ao_c_alias_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      component TYPE sxco_ao_component_name,
      interface TYPE REF TO if_xco_ao_interface,
    END OF ts_content.

  DATA:
    alias   TYPE REF TO if_xco_ao_c_alias READ-ONLY,
    version TYPE REF TO cl_xco_ao_version READ-ONLY.

  METHODS:
    get_component
      IMPORTING
        io_origin           TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rv_component) TYPE sxco_ao_component_name,
    get_interface
      IMPORTING
        io_origin           TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(ro_interface) TYPE REF TO if_xco_ao_interface,
    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
INTERFACE if_xco_intf_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      short_description TYPE sxco_ar_short_description,
      created_on        TYPE d,
      interfaces        TYPE sxco_t_ao_interfaces,
    END OF ts_content.

  DATA:
    interface TYPE REF TO if_xco_ao_interface READ-ONLY,
    version   TYPE REF TO cl_xco_ao_version READ-ONLY.

  METHODS:
    get_short_description
      IMPORTING
        io_origin                   TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,
    get_created_on
      IMPORTING
        io_origin            TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rv_created_on) TYPE d,
    get_interfaces
      IMPORTING
        io_origin            TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rt_interfaces) TYPE sxco_t_ao_interfaces,
    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_ao_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
INTERFACE if_xco_intf_c_method PUBLIC.
  INTERFACES:
    if_xco_ao_c_method.

  DATA:
    interface TYPE REF TO if_xco_ao_interface READ-ONLY.

  ALIASES:
    name FOR if_xco_ao_c_method~name,

    exists FOR if_xco_ao_c_method~exists,

    parameters FOR if_xco_ao_c_method~parameters,

    importing_parameters FOR if_xco_ao_c_method~importing_parameters,
    exporting_parameters FOR if_xco_ao_c_method~exporting_parameters,
    changing_parameters  FOR if_xco_ao_c_method~changing_parameters,
    returning_parameters FOR if_xco_ao_c_method~returning_parameters,

    exceptions FOR if_xco_ao_c_method~exceptions,

    importing_parameter FOR if_xco_ao_c_method~importing_parameter,
    exporting_parameter FOR if_xco_ao_c_method~exporting_parameter,
    changing_parameter FOR if_xco_ao_c_method~changing_parameter,
    returning_parameter FOR if_xco_ao_c_method~returning_parameter,

    exception FOR if_xco_ao_c_method~exception.

  METHODS:
    content
      IMPORTING
        io_version        TYPE REF TO cl_xco_ao_version OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_intf_c_method_content.
ENDINTERFACE.
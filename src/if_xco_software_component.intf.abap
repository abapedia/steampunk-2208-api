INTERFACE if_xco_software_component PUBLIC.
  INTERFACES:
    if_xco_printable.

  TYPES:
    tv_name TYPE c LENGTH 30.

  DATA:
    name TYPE tv_name READ-ONLY.

  METHODS:
    get_changeability
      RETURNING
        VALUE(ro_changeability) TYPE REF TO cl_xco_sc_changeability,
    get_extendability
      RETURNING
        VALUE(ro_extendability) TYPE REF TO cl_xco_sc_extendability,
    is_home_component
      RETURNING
        VALUE(rv_is_home_component) TYPE abap_bool.
ENDINTERFACE.
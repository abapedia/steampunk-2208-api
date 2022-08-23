INTERFACE if_xco_dcl_cb_inherit_role PUBLIC.
  INTERFACES:
    if_xco_dcl_condition_builder,
    if_xco_dcl_cb_inherit.

  ALIASES:
    get_condition FOR if_xco_dcl_condition_builder~get_condition,

    default   FOR if_xco_dcl_cb_inherit~default,
    replacing FOR if_xco_dcl_cb_inherit~replacing.

  METHODS:
    set_parent_role
      IMPORTING
        iv_parent_role TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_dcl_cb_inherit_role,

    set_cds_entity
      IMPORTING
        iv_cds_entity TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_dcl_cb_inherit_role.
ENDINTERFACE.
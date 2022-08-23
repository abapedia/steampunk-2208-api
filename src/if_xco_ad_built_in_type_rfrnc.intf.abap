INTERFACE if_xco_ad_built_in_type_rfrnc PUBLIC.
  INTERFACES:
    if_xco_printable,

    if_xco_dtel_data_type,
    if_xco_str_component_type,
    if_xco_aps_component_type,
    if_xco_ttyp_row_type.

  DATA:
    built_in_type TYPE REF TO cl_xco_ad_built_in_type READ-ONLY.
ENDINTERFACE.
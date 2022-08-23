INTERFACE if_xco_clas_definition_section PUBLIC.
  DATA:
    component  TYPE REF TO if_xco_clas_component_factory READ-ONLY,

    components TYPE REF TO if_xco_clas_components_factory READ-ONLY.
ENDINTERFACE.
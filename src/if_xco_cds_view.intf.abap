INTERFACE if_xco_cds_view PUBLIC.
  INTERFACES:
    if_xco_cds_entity.

  ALIASES:
    name   FOR if_xco_cds_entity~name,
    fields FOR if_xco_cds_entity~fields,

    exists              FOR if_xco_ar_object~exists,
    get_data_definition FOR if_xco_cds_entity~get_data_definition,
    get_api_state       FOR if_xco_cds_entity~get_api_state,
    set_api_state       FOR if_xco_cds_entity~set_api_state,
    field               FOR if_xco_cds_entity~field.

  DATA:
    associations TYPE REF TO if_xco_cds_associations_fctry READ-ONLY,

    compositions TYPE REF TO if_xco_cds_compositions_fctry READ-ONLY,

    parameters   TYPE REF TO if_xco_cds_parameters_fctry READ-ONLY.

  METHODS:
    content
      IMPORTING
        io_read_state     TYPE REF TO cl_xco_ddef_object_read_state OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_cds_view_content,

    parameter
      IMPORTING
        iv_name             TYPE sxco_cds_parameter_name
      RETURNING
        VALUE(ro_parameter) TYPE REF TO if_xco_cds_parameter,

    association
      IMPORTING
        iv_name               TYPE sxco_cds_association_name
      RETURNING
        VALUE(ro_association) TYPE REF TO if_xco_cds_association,

    composition
      IMPORTING
        iv_target             TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_composition) TYPE REF TO if_xco_cds_composition.
ENDINTERFACE.
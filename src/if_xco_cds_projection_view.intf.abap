INTERFACE if_xco_cds_projection_view PUBLIC.
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

  METHODS:
    content
      IMPORTING
        io_read_state     TYPE REF TO cl_xco_ddef_object_read_state OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_cds_projection_view_co.
ENDINTERFACE.
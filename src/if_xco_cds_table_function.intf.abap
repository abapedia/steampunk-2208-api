INTERFACE if_xco_cds_table_function PUBLIC.
  INTERFACES:
    if_xco_cds_entity.

  ALIASES:
    name   FOR if_xco_cds_entity~name,
    fields FOR if_xco_cds_entity~fields,

    exists              FOR if_xco_ar_object~exists,
    get_data_definition FOR if_xco_cds_entity~get_data_definition,
    field               FOR if_xco_cds_entity~field.

  DATA:
    parameters TYPE REF TO if_xco_cds_parameters_fctry READ-ONLY.

  METHODS:
    content
      IMPORTING
        io_read_state     TYPE REF TO cl_xco_ddef_object_read_state OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_cds_table_function_cont,

    parameter
      IMPORTING
        iv_name             TYPE sxco_cds_parameter_name
      RETURNING
        VALUE(ro_parameter) TYPE REF TO if_xco_cds_parameter.
ENDINTERFACE.
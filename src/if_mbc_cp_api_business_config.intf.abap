INTERFACE if_mbc_cp_api_business_config PUBLIC.
  TYPES:
    ty_identifier                 TYPE c LENGTH 20,
    ty_technical_id               TYPE c LENGTH 30,
    ty_namespace                  TYPE c LENGTH 10,
    ty_name                       TYPE c LENGTH 50,
    ty_description                TYPE c LENGTH 50,
    ty_application_component      TYPE c LENGTH 20,
    ty_application_component_long TYPE if_xco_application_component=>tv_name,
    ty_service_binding            TYPE c LENGTH 40,
    ty_service_name               TYPE c LENGTH 40,
    ty_service_version            TYPE n LENGTH 4,
    ty_root_entity_set            TYPE c LENGTH 30,
    ty_transport                  TYPE c LENGTH 20,
    ty_skip_root_entity_list_rep  TYPE c,
    BEGIN OF ts_business_configuration,
      name                       TYPE ty_name,
      description                TYPE ty_description,
      application_component      TYPE ty_application_component,
      service_binding            TYPE ty_service_binding,
      service_name               TYPE ty_service_name,
      service_version            TYPE ty_service_version,
      root_entity_set            TYPE ty_root_entity_set,
      skip_root_entity_list_rep  TYPE ty_skip_root_entity_list_rep,
      application_component_long TYPE ty_application_component_long,
    END OF ts_business_configuration.

  DATA:
    identifier   TYPE ty_identifier READ-ONLY,
    namespace    TYPE ty_namespace READ-ONLY,
    technical_id TYPE ty_technical_id READ-ONLY.

  METHODS:
    exists
      RETURNING
        VALUE(rv_exists) TYPE abap_bool
      RAISING
        cx_mbc_api_exception,
    read
      RETURNING
        VALUE(rs_business_configuration) TYPE ts_business_configuration
      RAISING
        cx_mbc_api_exception,
    read_app_configuration
      RETURNING VALUE(result) TYPE if_mbc_cp_app_configuration=>settings,
    create
      IMPORTING
        iv_name                      TYPE ty_name
        iv_description               TYPE ty_description
        iv_service_binding           TYPE ty_service_binding
        iv_service_name              TYPE ty_service_name
        iv_service_version           TYPE ty_service_version
        iv_root_entity_set           TYPE ty_root_entity_set
        iv_transport                 TYPE ty_transport
        iv_skip_root_entity_list_rep TYPE ty_skip_root_entity_list_rep OPTIONAL
        app_configuration            TYPE if_mbc_cp_app_configuration=>settings OPTIONAL
      RAISING
        cx_mbc_api_exception,
    update_name
      IMPORTING
        iv_name      TYPE ty_name
        iv_transport TYPE ty_transport
      RAISING
        cx_mbc_api_exception,
    update_description
      IMPORTING
        iv_description TYPE ty_description
        iv_transport   TYPE ty_transport
      RAISING
        cx_mbc_api_exception,
    update_app_configuration
      IMPORTING
        app_configuration TYPE if_mbc_cp_app_configuration=>settings
        transport         TYPE ty_transport
      RAISING
        cx_mbc_api_exception,
    update_service_configuration
      IMPORTING
        root_entity_set   TYPE ty_root_entity_set
        service_binding   TYPE ty_service_binding
        service_name      TYPE ty_service_name
        service_version   TYPE ty_service_version
        transport         TYPE ty_transport
      RAISING
        cx_mbc_api_exception,
    delete
      IMPORTING
        iv_transport TYPE ty_transport
      RAISING
        cx_mbc_api_exception.
ENDINTERFACE.
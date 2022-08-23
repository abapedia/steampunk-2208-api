INTERFACE /iwxbe/if_consumer_event

  PUBLIC.

  TYPES:
    ty_e_event_uuid TYPE x LENGTH 16.

  METHODS:
    get_arrival_timestamp
      RETURNING
        VALUE(rv_timestamp) TYPE timestamp
      RAISING
        /iwxbe/cx_exception,
    get_business_data
      EXPORTING
        es_business_data TYPE any
      RAISING
        /iwxbe/cx_exception,
    get_cloud_event_source
      RETURNING
        VALUE(rv_source) TYPE string
      RAISING
        /iwxbe/cx_exception,
    get_cloud_event_type
      RETURNING
        VALUE(rv_type) TYPE string
      RAISING
        /iwxbe/cx_exception,
    get_cloud_event_id
      RETURNING
        VALUE(rv_id) TYPE ty_e_event_uuid
      RAISING
        /iwxbe/cx_exception,
    get_cloud_event_timestamp
      RETURNING
        VALUE(rv_timestamp) TYPE timestamp
      RAISING
        /iwxbe/cx_exception,
    get_custom_ext_attr_value
      IMPORTING
        iv_name                  TYPE /iwxbe/if_description_types=>ty_e_type_name
      EXPORTING
        ev_custom_extension_attr TYPE any
      RAISING
        /iwxbe/cx_exception.

ENDINTERFACE.
INTERFACE if_bali_object_handler
  PUBLIC.

  TYPES ty_object TYPE c LENGTH 20.
  TYPES ty_object_text TYPE c LENGTH 60.
  TYPES ty_package TYPE c LENGTH 30.
  TYPES:
    BEGIN OF ty_str_subobject,
    subobject TYPE c LENGTH 20,
    subobject_text TYPE c LENGTH 60,
    END OF ty_str_subobject.
  TYPES:
    ty_tab_subobject TYPE STANDARD TABLE OF ty_str_subobject WITH KEY subobject.
  TYPES ty_subobject TYPE c LENGTH 20.
  TYPES ty_subobject_text TYPE c LENGTH 60.
  TYPES ty_transport TYPE c LENGTH 20.

  METHODS add_subobject
    IMPORTING
      !iv_object TYPE ty_object
      !iv_subobject TYPE ty_subobject
      !iv_subobject_text TYPE ty_subobject_text
      !iv_transport_request TYPE ty_transport OPTIONAL
    EXPORTING
      !ev_transport_request TYPE ty_transport
    RAISING
      cx_bali_objects.
  METHODS create_object
    IMPORTING
      !iv_object TYPE ty_object
      !iv_object_text TYPE ty_object_text
      !it_subobjects TYPE ty_tab_subobject OPTIONAL
      !iv_package TYPE ty_package OPTIONAL
      !iv_transport_request TYPE ty_transport OPTIONAL
    EXPORTING
      !ev_transport_request TYPE ty_transport
    RAISING
      cx_bali_objects.
  METHODS delete_object
    IMPORTING
      !iv_object TYPE ty_object
      !iv_transport_request TYPE ty_transport OPTIONAL
    EXPORTING
      !ev_transport_request TYPE ty_transport
    RAISING
      cx_bali_objects.
  METHODS delete_subobject
    IMPORTING
      !iv_object TYPE ty_object
      !iv_subobject TYPE ty_subobject
      !iv_transport_request TYPE ty_transport OPTIONAL
    EXPORTING
      !ev_transport_request TYPE ty_transport
    RAISING
      cx_bali_objects.
  METHODS read_object
    IMPORTING
      !iv_object TYPE ty_object
    EXPORTING
      !ev_object_text TYPE ty_object_text
      !et_subobjects TYPE ty_tab_subobject
    RAISING
      cx_bali_objects.
ENDINTERFACE.
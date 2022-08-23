CLASS cl_apj_dt_create_content DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES ty_ret TYPE char1.
    TYPES ty_notif_class_name TYPE c LENGTH 30.
    TYPES ty_abap_language_version TYPE not_released.
    TYPES ty_activity TYPE not_released.
    TYPES ty_object_type TYPE c LENGTH 4.
    TYPES ty_scoping_relevant TYPE c.
    TYPES ty_check_class_name TYPE c LENGTH 30.
    TYPES:
      ty_package TYPE c LENGTH 30.
    TYPES:
      ty_template_name TYPE c LENGTH 40.
    TYPES:
      BEGIN OF ENUM ty_catalog_entry_type,
           class_based,
      END OF ENUM ty_catalog_entry_type.
    TYPES:
      ty_transport_request TYPE c LENGTH 20.
    TYPES:
      ty_text TYPE c LENGTH 40.
    TYPES:
      ty_class_name TYPE c LENGTH 30.
    TYPES:
      ty_catalog_name    TYPE c LENGTH 40.

    CLASS-METHODS get_instance
      RETURNING
      VALUE(ro_instance) TYPE REF TO cl_apj_dt_create_content.
    METHODS create_job_cat_entry
      IMPORTING
      !iv_catalog_name TYPE ty_catalog_name
      !iv_class_name TYPE ty_class_name
      !iv_text TYPE ty_text
      !iv_catalog_entry_type TYPE ty_catalog_entry_type DEFAULT class_based
      !iv_check_class_name TYPE ty_check_class_name OPTIONAL
      !iv_transport_request TYPE ty_transport_request
      !iv_package TYPE ty_package
      RETURNING
      VALUE(rv_successfull) TYPE abap_bool
      RAISING
      cx_apj_dt_content.
    METHODS create_job_template_entry
      IMPORTING
      !iv_template_name TYPE ty_template_name
      !iv_catalog_name TYPE ty_catalog_name
      !iv_text TYPE ty_text
      VALUE(it_parameters) TYPE if_apj_dt_exec_object=>tt_templ_val OPTIONAL
      !iv_transport_request TYPE ty_transport_request
      !iv_package TYPE ty_package
      RETURNING
      VALUE(rv_successfull) TYPE abap_bool
      RAISING
      cx_apj_dt_content.
    METHODS delete_job_cat_entry
      IMPORTING
      !iv_catalog_name TYPE ty_catalog_name
      !iv_transport_request TYPE ty_transport_request
      RETURNING
      VALUE(rv_successfull) TYPE abap_bool
      RAISING
      cx_apj_dt_content.
    METHODS delete_job_template_entry
      IMPORTING
      !iv_template_name TYPE ty_template_name
      !iv_transport_request TYPE ty_transport_request
      RETURNING
      VALUE(rv_successfull) TYPE abap_bool
      RAISING
      cx_apj_dt_content.
    CLASS-METHODS exists_job_cat_entry
      IMPORTING
      !iv_catalog_name TYPE ty_catalog_name
      RETURNING
      VALUE(rv_exists) TYPE ty_ret.
    CLASS-METHODS exists_job_template_entry
      IMPORTING
      !iv_template_name TYPE ty_template_name
      RETURNING
      VALUE(rv_exists) TYPE ty_ret.
ENDCLASS.

CLASS cl_apj_dt_create_content IMPLEMENTATION.
ENDCLASS.
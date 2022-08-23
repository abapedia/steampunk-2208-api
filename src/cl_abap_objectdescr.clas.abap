CLASS cl_abap_objectdescr DEFINITION
  PUBLIC
  INHERITING FROM cl_abap_typedescr
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.
    CONSTANTS public TYPE abap_visibility VALUE 'U' ##NO_TEXT.
    CONSTANTS protected TYPE abap_visibility VALUE 'O' ##NO_TEXT.
    CONSTANTS private TYPE abap_visibility VALUE 'I' ##NO_TEXT.
    CONSTANTS importing TYPE abap_parmkind VALUE 'I' ##NO_TEXT.
    CONSTANTS exporting TYPE abap_parmkind VALUE 'E' ##NO_TEXT.
    CONSTANTS changing TYPE abap_parmkind VALUE 'C' ##NO_TEXT.
    CONSTANTS returning TYPE abap_parmkind VALUE 'R' ##NO_TEXT.
    CONSTANTS receiving TYPE abap_parmkind VALUE 'R' ##NO_TEXT.
    DATA interfaces TYPE abap_intfdescr_tab READ-ONLY.
    DATA types TYPE abap_typedef_tab READ-ONLY.
    DATA attributes TYPE abap_attrdescr_tab READ-ONLY.
    DATA methods TYPE abap_methdescr_tab READ-ONLY.
    DATA events TYPE abap_evntdescr_tab READ-ONLY.
    METHODS get_interface_type
      IMPORTING
      !p_name TYPE any
      RETURNING
      VALUE(p_descr_ref) TYPE REF TO cl_abap_intfdescr
      EXCEPTIONS
      interface_not_found.
    METHODS get_type
      IMPORTING
      !p_name TYPE any
      RETURNING
      VALUE(p_descr_ref) TYPE REF TO cl_abap_typedescr
      EXCEPTIONS
      type_not_found.
    METHODS get_attribute_type
      IMPORTING
      !p_name TYPE any
      RETURNING
      VALUE(p_descr_ref) TYPE REF TO cl_abap_datadescr
      EXCEPTIONS
      attribute_not_found.
    METHODS get_method_parameter_type
      IMPORTING
      !p_method_name TYPE any
      !p_parameter_name TYPE any
      RETURNING
      VALUE(p_descr_ref) TYPE REF TO cl_abap_datadescr
      EXCEPTIONS
      parameter_not_found
      method_not_found.
    METHODS get_event_parameter_type
      IMPORTING
      !p_event_name TYPE any
      !p_parameter_name TYPE any
      RETURNING
      VALUE(p_descr_ref) TYPE REF TO cl_abap_datadescr
      EXCEPTIONS
      parameter_not_found
      event_not_found.
    METHODS applies_to
      IMPORTING
      !p_object_ref TYPE REF TO object
      RETURNING
      VALUE(p_bool) TYPE abap_bool.
    METHODS applies_to_class
      IMPORTING
      !p_classname TYPE any
      RETURNING
      VALUE(p_bool) TYPE abap_bool.
  PROTECTED SECTION.

ENDCLASS.

CLASS cl_abap_objectdescr IMPLEMENTATION.
ENDCLASS.
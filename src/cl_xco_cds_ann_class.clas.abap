CLASS cl_xco_cds_ann_class DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PUBLIC SECTION.
    METHODS:
      of FINAL
        IMPORTING
          io_target             TYPE REF TO if_xco_cds_ann_target
        RETURNING
          VALUE(ro_annotations) TYPE REF TO if_xco_cds_annotations.

  PROTECTED SECTION.
    METHODS:
      constructor
        IMPORTING
          io_property_selection TYPE REF TO not_released,

      read_data_defntn_annotations ABSTRACT
        IMPORTING
          iv_entity_name TYPE tabname
          io_annotation_service TYPE REF TO not_released
        RETURNING
          VALUE(ro_result)      TYPE REF TO not_released,

      read_entity_annotations ABSTRACT
        IMPORTING
          iv_entity_name TYPE tabname
          io_annotation_service TYPE REF TO not_released
        RETURNING
          VALUE(ro_result)      TYPE REF TO not_released,

      read_parameter_annotations ABSTRACT
        IMPORTING
          iv_entity_name TYPE tabname
          iv_parameter_name TYPE tabname
          io_annotation_service TYPE REF TO not_released
        RETURNING
          VALUE(ro_result)      TYPE REF TO not_released,

      read_element_annotations ABSTRACT
        IMPORTING
          iv_entity_name TYPE tabname
          iv_parameter_name TYPE text256
          io_annotation_service TYPE REF TO not_released
        RETURNING
          VALUE(ro_result)      TYPE REF TO not_released.

ENDCLASS.

CLASS cl_xco_cds_ann_class IMPLEMENTATION.
ENDCLASS.
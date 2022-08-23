INTERFACE if_fdt_cp_data_obj_structure
  PUBLIC.
  INTERFACES:
    if_fdt_cp_admin_data,
    if_fdt_cp_data_object.

  CONSTANTS:
    BEGIN OF gcs_cardinality,
      one_to_one  TYPE char10 VALUE '1..1',
      one_to_many TYPE char10 VALUE '1..n',
    END OF gcs_cardinality.

  TYPES:
    BEGIN OF ty_attribute,
      id                 TYPE if_fdt_cp_external_types=>id,
      name               TYPE string,
      description        TYPE if_fdt_cp_external_types=>tt_description,
      label              TYPE if_fdt_cp_external_types=>tt_label,
      annotations        TYPE if_fdt_cp_external_types=>tt_annotations,
      business_data_type TYPE char1,
      value_list         TYPE if_fdt_cp_data_obj_element=>tt_value_list,
      value_service      TYPE if_fdt_cp_data_obj_element=>ty_value_service,
    END OF ty_attribute,
    tt_attribute TYPE TABLE OF ty_attribute WITH KEY name,

    BEGIN OF ty_association_condition,
      source_attribute_id   TYPE if_fdt_cp_external_types=>id,
      target_attribute_id   TYPE if_fdt_cp_external_types=>id,
    END OF ty_association_condition,
    tt_association_condition TYPE TABLE OF ty_association_condition WITH KEY source_attribute_id,

    BEGIN OF ty_association,
      id                    TYPE if_fdt_cp_external_types=>id,
      name                  TYPE string,
      description           TYPE if_fdt_cp_external_types=>tt_description,
      label                 TYPE if_fdt_cp_external_types=>tt_label,
      target_data_object_id TYPE if_fdt_cp_external_types=>id,
      cardinality           TYPE char10,
      condition             TYPE tt_association_condition,
    END OF ty_association,
    tt_association TYPE TABLE OF ty_association WITH KEY name.

  METHODS:
    get_attributes RETURNING VALUE(rt_attributes) TYPE tt_attribute,
    set_attributes IMPORTING VALUE(it_attributes) TYPE tt_attribute,
    add_attribute IMPORTING VALUE(is_attribute) TYPE ty_attribute,
    remove_attibute IMPORTING VALUE(iv_name) TYPE string,
    get_associations RETURNING VALUE(rt_associations) TYPE tt_association,
    set_associations IMPORTING VALUE(it_associations) TYPE tt_association,
    add_association IMPORTING VALUE(is_association) TYPE ty_association,
    remove_association IMPORTING VALUE(iv_name) TYPE string.

ENDINTERFACE.
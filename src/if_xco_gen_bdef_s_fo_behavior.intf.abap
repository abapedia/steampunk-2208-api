INTERFACE if_xco_gen_bdef_s_fo_behavior PUBLIC.
  DATA:
    name            TYPE sxco_cds_object_name READ-ONLY,
    characteristics TYPE REF TO if_xco_gen_bdef_s_fo_b_chara READ-ONLY.

  METHODS:
    add_field
      IMPORTING
        iv_name         TYPE sxco_cds_field_name
      RETURNING
        VALUE(ro_field) TYPE REF TO if_xco_gen_bdef_s_fo_b_field,

    get_field
      IMPORTING
        iv_name         TYPE sxco_cds_field_name
      RETURNING
        VALUE(ro_field) TYPE REF TO if_xco_gen_bdef_s_fo_b_field,

    remove_field
      IMPORTING
        iv_name TYPE sxco_cds_field_name,

    add_standard_operation
      IMPORTING
        io_standard_operation        TYPE REF TO cl_xco_bdef_standard_operation
      RETURNING
        VALUE(ro_standard_operation) TYPE REF TO if_xco_gen_bdef_s_fo_b_std_op,

    get_standard_operation
      IMPORTING
        io_standard_operation        TYPE REF TO cl_xco_bdef_standard_operation
      RETURNING
        VALUE(ro_standard_operation) TYPE REF TO if_xco_gen_bdef_s_fo_b_std_op,

    remove_standard_operation
      IMPORTING
        io_standard_operation TYPE REF TO cl_xco_bdef_standard_operation,

    add_action
      IMPORTING
        iv_name          TYPE sxco_bdef_action_name
      RETURNING
        VALUE(ro_action) TYPE REF TO if_xco_gen_bdef_s_fo_b_action,

    get_action
      IMPORTING
        iv_name          TYPE sxco_bdef_action_name
      RETURNING
        VALUE(ro_action) TYPE REF TO if_xco_gen_bdef_s_fo_b_action,

    remove_action
      IMPORTING
        iv_name TYPE sxco_bdef_action_name,

    add_association
      IMPORTING
        iv_name               TYPE sxco_cds_association_name
      RETURNING
        VALUE(ro_association) TYPE REF TO if_xco_gen_bdef_s_fo_b_assoctn,

    get_association
      IMPORTING
        iv_name               TYPE sxco_cds_association_name
      RETURNING
        VALUE(ro_association) TYPE REF TO if_xco_gen_bdef_s_fo_b_assoctn,

    remove_association
      IMPORTING
        iv_name TYPE sxco_cds_association_name,

    add_mapping_for
      IMPORTING
        iv_database_table TYPE clike
      RETURNING
        VALUE(ro_mapping) TYPE REF TO if_xco_gen_bdef_s_fo_b_mapping,

    get_mapping_for
      IMPORTING
        iv_database_table TYPE clike
      RETURNING
        VALUE(ro_mapping) TYPE REF TO if_xco_gen_bdef_s_fo_b_mapping,

    remove_mapping_for
      IMPORTING
        iv_database_table TYPE clike,

    add_validation
      IMPORTING
        iv_name              TYPE sxco_bdef_evaluation_name
      RETURNING
        VALUE(ro_validation) TYPE REF TO if_xco_gen_bdef_s_fo_b_validtn,

    get_validation
      IMPORTING
        iv_name              TYPE sxco_bdef_evaluation_name
      RETURNING
        VALUE(ro_validation) TYPE REF TO if_xco_gen_bdef_s_fo_b_validtn,

    remove_validation
      IMPORTING
        iv_name TYPE sxco_bdef_evaluation_name,

    add_determination
      IMPORTING
        iv_name                 TYPE sxco_bdef_evaluation_name
      RETURNING
        VALUE(ro_determination) TYPE REF TO if_xco_gen_bdef_s_fo_b_detrmtn,

    get_determination
      IMPORTING
        iv_name                 TYPE sxco_bdef_evaluation_name
      RETURNING
        VALUE(ro_determination) TYPE REF TO if_xco_gen_bdef_s_fo_b_detrmtn,

    remove_determination
      IMPORTING
        iv_name TYPE sxco_bdef_evaluation_name.
ENDINTERFACE.
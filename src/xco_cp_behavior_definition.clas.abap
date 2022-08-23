CLASS xco_cp_behavior_definition DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      implementation_type TYPE REF TO cl_xco_bdef_implementatn_typ_f READ-ONLY,
      standard_operation  TYPE REF TO cl_xco_bdef_standard_operatn_f READ-ONLY,
      evaluation          TYPE REF TO cl_xco_bdef_evaluation_f READ-ONLY.

ENDCLASS.

CLASS xco_cp_behavior_definition IMPLEMENTATION.
ENDCLASS.
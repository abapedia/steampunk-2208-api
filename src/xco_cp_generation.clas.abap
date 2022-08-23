CLASS xco_cp_generation DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      put_operation_option TYPE REF TO if_xco_cp_gen_o_put_option_fct READ-ONLY,
      environment          TYPE REF TO if_xco_cp_gen_env_factory READ-ONLY.

ENDCLASS.

CLASS xco_cp_generation IMPLEMENTATION.
ENDCLASS.
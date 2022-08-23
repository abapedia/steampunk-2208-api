CLASS cl_fdt_cp_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    INTERFACES if_fdt_cp_factory.
    CLASS-METHODS: get_instance
      RETURNING VALUE(ro_factory) TYPE REF TO if_fdt_cp_factory.

ENDCLASS.

CLASS cl_fdt_cp_factory IMPLEMENTATION.
ENDCLASS.
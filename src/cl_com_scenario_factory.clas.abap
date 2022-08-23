CLASS cl_com_scenario_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_com_scenario_factory.

    CLASS-METHODS create_instance
      RETURNING
        VALUE(ro_api_factory) TYPE REF TO if_com_scenario_factory.

ENDCLASS.

CLASS cl_com_scenario_factory IMPLEMENTATION.
ENDCLASS.
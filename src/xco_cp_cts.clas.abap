CLASS xco_cp_cts DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      program_id      TYPE REF TO cl_xco_cts_program_id_f READ-ONLY,

      transport       TYPE REF TO if_xco_cp_transport_factory READ-ONLY,
      transports      TYPE REF TO if_xco_cp_transports_factory READ-ONLY,

      change_scenario TYPE REF TO if_xco_cp_cts_change_scnr_fct READ-ONLY.

ENDCLASS.

CLASS xco_cp_cts IMPLEMENTATION.
ENDCLASS.
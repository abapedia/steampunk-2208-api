CLASS cl_xco_cp_ao_origin_factory DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      default TYPE REF TO cl_xco_ao_origin READ-ONLY.

    METHODS:
      local
        RETURNING
          VALUE(ro_local) TYPE REF TO cl_xco_ao_o_local,
      remote
        IMPORTING
          io_rfc_destination TYPE REF TO if_rfc_dest
        RETURNING
          VALUE(ro_remote)   TYPE REF TO cl_xco_ao_o_remote.

ENDCLASS.

CLASS cl_xco_cp_ao_origin_factory IMPLEMENTATION.
ENDCLASS.
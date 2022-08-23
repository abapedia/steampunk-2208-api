CLASS cl_xco_cp_dtel_origin_factory DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      default TYPE REF TO cl_xco_dtel_origin READ-ONLY.

    METHODS:
      local
        RETURNING
          VALUE(ro_local) TYPE REF TO cl_xco_dtel_o_local.

ENDCLASS.

CLASS cl_xco_cp_dtel_origin_factory IMPLEMENTATION.
ENDCLASS.
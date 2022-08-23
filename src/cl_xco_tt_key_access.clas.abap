CLASS cl_xco_tt_key_access DEFINITION PUBLIC FINAL
     CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      tv_accessmode TYPE c,
      tv_unique     TYPE c.

    DATA:
      accessmode TYPE tv_accessmode READ-ONLY,
      unique     TYPE tv_unique READ-ONLY.

ENDCLASS.

CLASS cl_xco_tt_key_access IMPLEMENTATION.
ENDCLASS.
CLASS cl_xco_ao_version DEFINITION PUBLIC FINAL
     CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      list     TYPE STANDARD TABLE OF REF TO cl_xco_ao_version WITH DEFAULT KEY,
      tv_value TYPE n LENGTH 1.

    DATA:
      value TYPE tv_value READ-ONLY.

ENDCLASS.

CLASS cl_xco_ao_version IMPLEMENTATION.
ENDCLASS.
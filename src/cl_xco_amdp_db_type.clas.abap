CLASS cl_xco_amdp_db_type DEFINITION PUBLIC FINAL
     CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES:
      if_xco_abap_token.

    TYPES:
      list TYPE STANDARD TABLE OF REF TO cl_xco_amdp_db_type WITH DEFAULT KEY.

    DATA:
      marker_interface TYPE sxco_ao_object_name READ-ONLY.

ENDCLASS.

CLASS cl_xco_amdp_db_type IMPLEMENTATION.
ENDCLASS.
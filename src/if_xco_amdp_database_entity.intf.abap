INTERFACE if_xco_amdp_database_entity PUBLIC.
  INTERFACES:
    if_xco_printable,

    if_xco_gen_clas_amdp_db_entity.

  TYPES:
    list TYPE STANDARD TABLE OF REF TO if_xco_amdp_database_entity WITH DEFAULT KEY.
ENDINTERFACE.
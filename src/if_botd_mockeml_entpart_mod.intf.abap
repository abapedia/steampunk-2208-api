INTERFACE if_botd_mockeml_entpart_mod

  PUBLIC.
  METHODS set_instances_for_create
    IMPORTING
      instances  TYPE STANDARD TABLE
    RETURNING VALUE(self) TYPE REF TO if_botd_mockeml_entpart_mod.
  METHODS set_instances_for_create_ba
    IMPORTING
      instances TYPE STANDARD TABLE
    RETURNING VALUE(self) TYPE REF TO if_botd_mockeml_entpart_mod.
  METHODS set_instances_for_update
    IMPORTING
      instances TYPE STANDARD TABLE
    RETURNING VALUE(self) TYPE REF TO if_botd_mockeml_entpart_mod.
  METHODS set_instances_for_delete
    IMPORTING
      instances TYPE STANDARD TABLE
    RETURNING VALUE(self) TYPE REF TO if_botd_mockeml_entpart_mod.
  METHODS set_instances_for_action
    IMPORTING
      instances TYPE STANDARD TABLE
    RETURNING VALUE(self) TYPE REF TO if_botd_mockeml_entpart_mod.

ENDINTERFACE.
INTERFACE if_botd_mockeml_entpart_read

  PUBLIC.
  METHODS set_instances_for_read
    IMPORTING
      instances  TYPE STANDARD TABLE
    RETURNING VALUE(self) TYPE REF TO if_botd_mockeml_entpart_read
    RAISING cx_no_check.
  METHODS set_instances_for_read_ba
    IMPORTING
      instances TYPE STANDARD TABLE
    RETURNING VALUE(self) TYPE REF TO if_botd_mockeml_entpart_read
    RAISING cx_no_check.

ENDINTERFACE.
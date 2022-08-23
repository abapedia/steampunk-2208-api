INTERFACE if_slin_badi_dbtab_access
  PUBLIC.

  INTERFACES if_badi_interface.

  TYPES:
    ty_parameter_names TYPE SORTED TABLE OF string WITH UNIQUE KEY table_line.

  METHODS add_dbtab_access
    IMPORTING
      !ir TYPE REF TO if_slin_gov_dbtab_access.
ENDINTERFACE.
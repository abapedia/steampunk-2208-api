INTERFACE if_slin_gov_dbtab_access
  PUBLIC.

  METHODS add_accepted_dbtab
    IMPORTING
      !dbtab TYPE tabname.
  METHODS add_refused_dbtab
    IMPORTING
      !dbtab TYPE tabname.
  METHODS accept_all_dbtabs.
ENDINTERFACE.
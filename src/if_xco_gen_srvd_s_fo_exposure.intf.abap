INTERFACE if_xco_gen_srvd_s_fo_exposure PUBLIC.
  TYPES:
    tv_alias TYPE c LENGTH 30.

  DATA:
    cds_entity TYPE sxco_cds_object_name READ-ONLY.

  METHODS:
    set_alias
      IMPORTING
        iv_alias     TYPE tv_alias
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_srvd_s_fo_exposure.
ENDINTERFACE.
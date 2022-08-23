INTERFACE if_xco_srvd_exposure_content PUBLIC.
  TYPES:
    " Type for the alias of an exposure.
    tv_alias TYPE c LENGTH 30,

    " Type for the complete content of an exposure.
    BEGIN OF ts_content,
      " This alias of the exposure.
      alias      TYPE tv_alias,
      cds_entity TYPE REF TO if_xco_cds_entity,
    END OF ts_content.

  DATA:
    exposure TYPE REF TO if_xco_srvd_exposure READ-ONLY,
    version  TYPE REF TO cl_xco_srvd_version READ-ONLY.

  METHODS:
    get_alias
      IMPORTING
        io_origin       TYPE REF TO cl_xco_srvd_origin OPTIONAL
      RETURNING
        VALUE(rv_alias) TYPE tv_alias,
    get_cds_entity
      RETURNING
        VALUE(ro_cds_entity) TYPE REF TO if_xco_cds_entity,
    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_srvd_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
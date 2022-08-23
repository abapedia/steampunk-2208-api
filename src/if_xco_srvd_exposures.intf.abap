INTERFACE if_xco_srvd_exposures PUBLIC.
  METHODS:
    get_cds_entities
      IMPORTING
        io_version             TYPE REF TO cl_xco_srvd_version OPTIONAL
        io_origin              TYPE REF TO cl_xco_srvd_origin OPTIONAL
      RETURNING
        VALUE(rt_cds_entities) TYPE sxco_t_cds_object_names,
    get
      IMPORTING
        io_version          TYPE REF TO cl_xco_srvd_version OPTIONAL
        io_origin           TYPE REF TO cl_xco_srvd_origin OPTIONAL
      RETURNING
        VALUE(rt_exposures) TYPE sxco_t_srvd_exposures.
ENDINTERFACE.
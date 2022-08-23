INTERFACE /iwbep/if_cp_filter_factory
  PUBLIC.
  METHODS create_by_range
    IMPORTING
      !iv_property_path     TYPE /iwbep/if_cp_runtime_types=>ty_property_path
      !it_range             TYPE STANDARD TABLE
      !iv_currency_code     TYPE waers_curc OPTIONAL
      !iv_measure_unit_code TYPE msehi OPTIONAL
    RETURNING
      VALUE(ro_filter_node) TYPE REF TO /iwbep/if_cp_filter_node
    RAISING
      /iwbep/cx_gateway.
ENDINTERFACE.
INTERFACE /iwbep/if_cp_data_desc_node_l
  PUBLIC.
  METHODS add_child
    IMPORTING
      !iv_property_path TYPE /iwbep/if_cp_runtime_types=>ty_property_path
    RETURNING
      VALUE(ro_child)   TYPE REF TO /iwbep/if_cp_data_desc_node_l
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.
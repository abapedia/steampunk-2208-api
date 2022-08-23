INTERFACE /iwbep/if_cp_data_desc_node
  PUBLIC.
  METHODS add_child
    IMPORTING
      !iv_property_path TYPE /iwbep/if_cp_runtime_types=>ty_property_path
    RETURNING
      VALUE(ro_child)   TYPE REF TO /iwbep/if_cp_data_desc_node
    RAISING
      /iwbep/cx_gateway.
  METHODS set_properties
    IMPORTING
      !it_property_path               TYPE /iwbep/if_cp_runtime_types=>ty_t_property_path
    RETURNING
      VALUE(ro_data_description_node) TYPE REF TO /iwbep/if_cp_data_desc_node
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.
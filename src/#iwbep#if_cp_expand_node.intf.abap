INTERFACE /iwbep/if_cp_expand_node
  PUBLIC.
  METHODS add_expand
    IMPORTING
      !iv_expand_property_path TYPE /iwbep/if_cp_runtime_types=>ty_property_path
    RETURNING
      VALUE(ro_expand_node)    TYPE REF TO /iwbep/if_cp_expand_node
    RAISING
      /iwbep/cx_gateway.
  METHODS set_select_properties
    IMPORTING
      !it_select_property_path TYPE /iwbep/if_cp_runtime_types=>ty_t_property_path
    RETURNING
      VALUE(ro_expand_node)    TYPE REF TO /iwbep/if_cp_expand_node
    RAISING
      /iwbep/cx_gateway.

ENDINTERFACE.
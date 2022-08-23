INTERFACE if_xco_gen_clas_s_de_d_section PUBLIC.
  METHODS:
    add_constant
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    remove_constant
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    add_alias
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    remove_alias
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    add_class_data
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    remove_class_data
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    add_data
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    remove_data
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    add_class_method
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    remove_class_method
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    add_method
      IMPORTING
        iv_name TYPE sxco_ao_full_component_name,

    remove_method
      IMPORTING
        iv_name TYPE sxco_ao_full_component_name.
ENDINTERFACE.
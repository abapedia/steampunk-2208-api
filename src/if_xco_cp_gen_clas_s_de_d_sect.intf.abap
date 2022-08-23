INTERFACE if_xco_cp_gen_clas_s_de_d_sect PUBLIC.
  METHODS:
    add_data
      IMPORTING
        iv_name TYPE sxco_ao_component_name,

    remove_data
      IMPORTING
        iv_name TYPE sxco_ao_component_name.
ENDINTERFACE.
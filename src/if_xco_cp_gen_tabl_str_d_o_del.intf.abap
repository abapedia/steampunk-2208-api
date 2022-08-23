INTERFACE if_xco_cp_gen_tabl_str_d_o_del PUBLIC.
  INTERFACES:
    if_xco_cp_gen_o_delete.

  ALIASES:
    execute FOR if_xco_cp_gen_o_delete~execute.

  METHODS:
    add_object
      IMPORTING
        iv_name TYPE sxco_ad_object_name,
    remove_object
      IMPORTING
        iv_name TYPE sxco_ad_object_name.
ENDINTERFACE.
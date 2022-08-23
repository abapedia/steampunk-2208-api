INTERFACE if_xco_cp_gen_dcls_d_o_put PUBLIC.
  INTERFACES:
    if_xco_cp_gen_o_put.

  ALIASES:
    execute FOR if_xco_cp_gen_o_put~execute.

  METHODS:
    add_object
      IMPORTING
        iv_name          TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_dcls_d_o_put_obj,

    get_object
      IMPORTING
        iv_name          TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_dcls_d_o_put_obj,

    remove_object
      IMPORTING
        iv_name TYPE sxco_cds_object_name.
ENDINTERFACE.
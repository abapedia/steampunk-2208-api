INTERFACE if_xco_cp_gen_msag_d_o_patch PUBLIC.

  METHODS:
    add_object
      IMPORTING
        iv_name          TYPE sxco_mc_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_msag_d_o_patch_o,

    get_object
      IMPORTING
        iv_name          TYPE sxco_mc_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_msag_d_o_patch_o,

    remove_object
      IMPORTING
        iv_name TYPE sxco_mc_object_name.
ENDINTERFACE.
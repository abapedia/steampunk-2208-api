INTERFACE if_xco_cp_gen_msag_d_o_patch_o PUBLIC.
  TYPES:
    BEGIN OF ts_for,
      insert TYPE REF TO if_xco_cp_gen_msag_s_insert,
      update TYPE REF TO if_xco_cp_gen_msag_s_update,
      modify TYPE REF TO if_xco_cp_gen_msag_s_modify,
      delete TYPE REF TO if_xco_cp_gen_msag_s_delete,
    END OF ts_for.

  DATA:
    name TYPE sxco_mc_object_name READ-ONLY,

    for  TYPE ts_for READ-ONLY.
ENDINTERFACE.
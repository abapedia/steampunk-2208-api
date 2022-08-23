INTERFACE if_xco_cp_gen_fugr_d_o_patch_o PUBLIC.
  TYPES:
    BEGIN OF ts_for,
      delete TYPE REF TO if_xco_cp_gen_fugr_s_delete,
      insert TYPE REF TO if_xco_cp_gen_fugr_s_insert,
      update TYPE REF TO if_xco_cp_gen_fugr_s_update,
    END OF ts_for.

  DATA:
    name TYPE sxco_fg_object_name READ-ONLY,

    for  TYPE ts_for READ-ONLY.
ENDINTERFACE.
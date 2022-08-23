INTERFACE if_xco_cp_gen_intf_d_o_patch_o PUBLIC.
  TYPES:
    BEGIN OF ts_for,
      insert TYPE REF TO if_xco_cp_gen_intf_s_insert,
      delete TYPE REF TO if_xco_cp_gen_intf_s_delete,
      update TYPE REF TO if_xco_cp_gen_intf_s_update,
    END OF ts_for.

  DATA:
    name TYPE sxco_ao_object_name READ-ONLY,

    for  TYPE ts_for READ-ONLY.
ENDINTERFACE.
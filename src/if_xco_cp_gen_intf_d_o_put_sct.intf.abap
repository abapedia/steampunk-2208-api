INTERFACE if_xco_cp_gen_intf_d_o_put_sct PUBLIC.
  METHODS:
    add_object
      IMPORTING
        iv_name          TYPE sxco_ao_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_intf_d_o_put_obj,

    remove_object
      IMPORTING
        iv_name TYPE sxco_ao_object_name,

    get_object
      IMPORTING
        iv_name          TYPE sxco_ao_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_intf_d_o_put_obj.
ENDINTERFACE.
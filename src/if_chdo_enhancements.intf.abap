INTERFACE if_chdo_enhancements
  PUBLIC.

  CLASS-METHODS authority_check DEFAULT IGNORE
    IMPORTING
      !iv_objectclass TYPE if_chdo_object_tools_rel=>ty_cdobjectcl
      !iv_objectid TYPE cl_chdo_read_tools=>tt_r_objectid OPTIONAL
    RETURNING
      VALUE(rv_is_authorized) TYPE abap_bool.
ENDINTERFACE.
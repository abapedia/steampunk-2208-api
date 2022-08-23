CLASS cl_xco_cp_srvb_binding_type_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      odata_v2_ui      TYPE REF TO cl_xco_srvb_binding_type READ-ONLY,
      odata_v2_web_api TYPE REF TO cl_xco_srvb_binding_type READ-ONLY,
      odata_v4_ui      TYPE REF TO cl_xco_srvb_binding_type READ-ONLY,
      odata_v4_web_api TYPE REF TO cl_xco_srvb_binding_type READ-ONLY,
      ina_ui           TYPE REF TO cl_xco_srvb_binding_type READ-ONLY.

    METHODS:
      for
        IMPORTING
          is_value               TYPE cl_xco_srvb_binding_type=>ts_value
        RETURNING
          VALUE(ro_binding_type) TYPE REF TO cl_xco_srvb_binding_type.

ENDCLASS.

CLASS cl_xco_cp_srvb_binding_type_f IMPLEMENTATION.
ENDCLASS.
INTERFACE if_xco_gen_ao_s_fo_product PUBLIC.
  METHODS:
    type
      IMPORTING
        iv_name        TYPE sxco_ao_component_name
      RETURNING
        VALUE(ro_type) TYPE REF TO if_xco_ao_type.
ENDINTERFACE.
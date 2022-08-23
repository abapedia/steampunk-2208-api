INTERFACE if_xco_gen_clas_s_up_impl_mthd PUBLIC.
  TYPES:
    tt_source TYPE string_table.

  DATA:
    method_name TYPE sxco_ao_full_component_name READ-ONLY.

  METHODS:
    set_source
      IMPORTING
        it_source    TYPE tt_source
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_clas_s_up_impl_mthd.
ENDINTERFACE.
INTERFACE if_xco_clas_implementation PUBLIC.
  DATA:
    class   TYPE REF TO if_xco_ao_class READ-ONLY.

  METHODS:
    method
      IMPORTING
        iv_name          TYPE sxco_clas_method_name
      RETURNING
        VALUE(ro_method) TYPE REF TO if_xco_clas_i_method.
ENDINTERFACE.
INTERFACE if_xco_cds_table_function_cont PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      short_description TYPE sxco_ar_short_description,
      amdp_class        TYPE REF TO if_xco_ao_class,
      amdp_method       TYPE REF TO if_xco_clas_c_method,
    END OF ts_content.

  DATA:
    table_function TYPE REF TO if_xco_cds_table_function READ-ONLY,

    read_state     TYPE REF TO cl_xco_ddef_object_read_state READ-ONLY.

  METHODS:
    get_short_description
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,

    get_amdp_class
      RETURNING
        VALUE(ro_amdp_class) TYPE REF TO if_xco_ao_class,

    get_amdp_method
      RETURNING
        VALUE(ro_amdp_method) TYPE REF TO if_xco_clas_c_method,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
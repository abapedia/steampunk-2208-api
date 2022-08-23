INTERFACE if_xco_aplo_subobject_content PUBLIC.
  TYPES:
    tv_description TYPE c LENGTH 60,

    BEGIN OF ts_content,
      description TYPE tv_description,
    END OF ts_content.

  DATA:
    subobject TYPE REF TO if_xco_aplo_subobject READ-ONLY.

  METHODS:
    get_description
      RETURNING
        VALUE(rv_description) TYPE tv_description,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
INTERFACE if_xco_aplo_subobjects PUBLIC.
  TYPES:
    tt_names TYPE STANDARD TABLE OF if_xco_aplo_subobject=>tv_name WITH EMPTY KEY.

  METHODS:
    get_names
      RETURNING
        VALUE(rt_names) TYPE tt_names,

    get
      RETURNING
        VALUE(rt_subobjects) TYPE sxco_t_aplo_subobjects.
ENDINTERFACE.
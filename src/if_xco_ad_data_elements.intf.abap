INTERFACE if_xco_ad_data_elements PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_data_elements) TYPE sxco_t_ad_data_elements.
ENDINTERFACE.
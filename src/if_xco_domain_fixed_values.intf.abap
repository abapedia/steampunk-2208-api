INTERFACE if_xco_domain_fixed_values
  PUBLIC.

  TYPES:
    tt_lower_limits TYPE STANDARD TABLE OF if_xco_domain_fixed_value=>tv_lower_limit WITH EMPTY KEY.

  METHODS get_lower_limits
    IMPORTING
      !io_read_state TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      !io_origin TYPE REF TO cl_xco_domain_origin OPTIONAL
    PREFERRED PARAMETER io_read_state
    RETURNING
      VALUE(rt_lower_limits) TYPE tt_lower_limits.
  METHODS get
    IMPORTING
      !io_read_state TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      !io_origin TYPE REF TO cl_xco_domain_origin OPTIONAL
    PREFERRED PARAMETER io_read_state
    RETURNING
      VALUE(rt_fixed_values) TYPE sxco_t_domain_fixed_values.
ENDINTERFACE.
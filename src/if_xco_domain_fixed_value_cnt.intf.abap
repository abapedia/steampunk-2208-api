INTERFACE if_xco_domain_fixed_value_cnt
  PUBLIC.

  TYPES tv_upper_limit TYPE c LENGTH 10.
  TYPES tv_description TYPE c LENGTH 60.
  TYPES:
    BEGIN OF ts_content,
      upper_limit TYPE tv_upper_limit,
      description TYPE tv_description,
    END OF ts_content.

  DATA lower_limit TYPE if_xco_domain_fixed_value=>tv_lower_limit READ-ONLY.
  DATA domain TYPE REF TO if_xco_domain READ-ONLY.
  DATA read_state TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

  METHODS get_upper_limit
    IMPORTING
      !io_origin TYPE REF TO cl_xco_domain_origin OPTIONAL
    RETURNING
      VALUE(rv_upper_limit) TYPE tv_upper_limit.
  METHODS get_description
    IMPORTING
      !io_origin TYPE REF TO cl_xco_domain_origin OPTIONAL
    RETURNING
      VALUE(rv_description) TYPE tv_description.
  METHODS get
    IMPORTING
      !io_origin TYPE REF TO cl_xco_domain_origin OPTIONAL
    RETURNING
      VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
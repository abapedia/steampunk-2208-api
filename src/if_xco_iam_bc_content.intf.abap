INTERFACE if_xco_iam_bc_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      type            TYPE REF TO cl_xco_iam_bc_type,
      scope_dependent TYPE abap_bool,
    END OF ts_content.

  DATA:
    iam_business_catalog TYPE REF TO if_xco_iam_business_catalog READ-ONLY.

  METHODS:
    get_type
      IMPORTING
        io_origin      TYPE REF TO cl_xco_iam_bc_content_origin OPTIONAL
      RETURNING
        VALUE(ro_type) TYPE REF TO cl_xco_iam_bc_type,

    get_scope_dependent
      IMPORTING
        io_origin                 TYPE REF TO cl_xco_iam_bc_content_origin OPTIONAL
      RETURNING
        VALUE(rv_scope_dependent) TYPE abap_bool,

    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_iam_bc_content_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.
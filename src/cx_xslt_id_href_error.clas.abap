CLASS cx_xslt_id_href_error DEFINITION
  PUBLIC
  INHERITING FROM cx_xslt_format_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_xslt_id_href_error TYPE c LENGTH 32 VALUE '739F4D3CDC9BBC0FE10000000A11447B'. "#EC NOTEXT
    DATA id_value TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !node_type TYPE string OPTIONAL
      !uri TYPE string OPTIONAL
      !local_name TYPE string OPTIONAL
      !tree_position TYPE string OPTIONAL
      !id_value TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_xslt_id_href_error IMPLEMENTATION.
ENDCLASS.
INTERFACE if_xco_clas_definition PUBLIC.
  TYPES:
    BEGIN OF ts_section,
      public    TYPE REF TO if_xco_clas_definition_section,
      protected TYPE REF TO if_xco_clas_definition_section,
      private   TYPE REF TO if_xco_clas_definition_section,
    END OF ts_section.

  DATA:
    class   TYPE REF TO if_xco_ao_class READ-ONLY,

    section TYPE ts_section READ-ONLY.

  METHODS:
    content
      IMPORTING
        io_version        TYPE REF TO cl_xco_ao_version OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_clas_definition_content.
ENDINTERFACE.
CLASS cl_ci_atc_finding_details DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    METHODS attach_stack
      IMPORTING name TYPE string
              stack TYPE REF TO if_ci_atc_finding_stack
      RETURNING VALUE(self) TYPE REF TO cl_ci_atc_finding_details.
    METHODS attach_quickfixes
      IMPORTING fixes TYPE REF TO cl_ci_atc_quickfixes
      RETURNING VALUE(self) TYPE REF TO cl_ci_atc_finding_details.
ENDCLASS.

CLASS cl_ci_atc_finding_details IMPLEMENTATION.
ENDCLASS.
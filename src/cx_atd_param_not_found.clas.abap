CLASS cx_atd_param_not_found DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    DATA:
      parameter_name TYPE abap_parmname.

    METHODS constructor
      IMPORTING
        !previous LIKE previous OPTIONAL
        !param_name TYPE abap_parmname OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_atd_param_not_found IMPLEMENTATION.
ENDCLASS.
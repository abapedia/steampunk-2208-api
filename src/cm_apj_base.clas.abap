CLASS cm_apj_base DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_message.

    TYPES apj_bapiret2 TYPE bapiret2.
    TYPES _apj_job_parameter_name TYPE c LENGTH 38.
    TYPES apj_severity TYPE c.

    CONSTANTS:
    BEGIN OF cs_severity,
        abort   TYPE apj_severity VALUE 'A',
        error   TYPE apj_severity VALUE 'E',
        warning TYPE apj_severity VALUE 'W',
        info    TYPE apj_severity VALUE 'I',
        status  TYPE apj_severity VALUE 'S',
      END OF cs_severity.
    DATA severity TYPE apj_severity.
    DATA field_name TYPE _apj_job_parameter_name.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !severity TYPE apj_severity OPTIONAL
      !field_name TYPE _apj_job_parameter_name OPTIONAL.
    METHODS get_message_as_bapiret2
    RETURNING
      VALUE(rs_message) TYPE apj_bapiret2.
    METHODS get_message
    RETURNING
      VALUE(rs_message) TYPE if_apj_types=>ty_message.
  PROTECTED SECTION.
ENDCLASS.

CLASS cm_apj_base IMPLEMENTATION.
ENDCLASS.
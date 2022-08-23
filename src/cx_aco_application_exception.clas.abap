CLASS cx_aco_application_exception DEFINITION
  PUBLIC INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    DATA exception_id TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !exception_id TYPE string OPTIONAL.
    METHODS get_exception_id
    RETURNING
      VALUE(id) TYPE string.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_aco_application_exception IMPLEMENTATION.
ENDCLASS.
CLASS cx_aco_communication_failure DEFINITION
  PUBLIC INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS:
    BEGIN OF cx_aco_communication_failure,
      msgid TYPE symsgid VALUE 'SAP_ACO',
      msgno TYPE symsgno VALUE '006',
      attr1 TYPE scx_attrname VALUE 'RFC_MSG',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_aco_communication_failure.
    DATA rfc_msg TYPE char255.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !rfc_msg TYPE char255 OPTIONAL.

    METHODS if_message~get_text
    REDEFINITION.
    METHODS if_message~get_longtext
    REDEFINITION.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_aco_communication_failure IMPLEMENTATION.
ENDCLASS.
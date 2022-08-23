CLASS cx_swf_cpwf_callback DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_dyn_msg.
    INTERFACES if_t100_message.

    DATA id TYPE string.

    METHODS constructor
      IMPORTING
        !textid               LIKE if_t100_message=>t100key OPTIONAL
        !previous             LIKE previous OPTIONAL
        !id                   TYPE string OPTIONAL
        !config_text          TYPE string OPTIONAL
        !framework_exception TYPE abap_bool OPTIONAL.

    METHODS if_message~get_longtext
        REDEFINITION.
    METHODS if_message~get_text
        REDEFINITION.
ENDCLASS.

CLASS cx_swf_cpwf_callback IMPLEMENTATION.
ENDCLASS.
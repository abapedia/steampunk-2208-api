CLASS cx_xco_gen_post_exception DEFINITION PUBLIC FINAL
    INHERITING FROM cx_no_check CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      findings TYPE REF TO if_xco_gen_o_findings READ-ONLY.

    METHODS:
      if_xco_news~get_messages REDEFINITION,

      if_xco_exception~get_additional_news REDEFINITION.

ENDCLASS.

CLASS cx_xco_gen_post_exception IMPLEMENTATION.
ENDCLASS.
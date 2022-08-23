CLASS cl_xco_tab_fkey_cardinality DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES:
      if_xco_gen_tabl_fkey_cardnalty.

    TYPES:
      tv_value TYPE c LENGTH 2.

    DATA:
      value TYPE tv_value READ-ONLY.

ENDCLASS.

CLASS cl_xco_tab_fkey_cardinality IMPLEMENTATION.
ENDCLASS.
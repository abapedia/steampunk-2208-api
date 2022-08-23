CLASS cl_xco_dbt_o_local DEFINITION PUBLIC FINAL INHERITING FROM cl_xco_dbt_origin CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES:
      if_xco_dbt_cacheable_origin ABSTRACT METHODS enable_caching disable_caching.

    METHODS:
      if_xco_dbt_cacheable_origin~enable_caching REDEFINITION,

      if_xco_dbt_cacheable_origin~disable_caching REDEFINITION.

ENDCLASS.

CLASS cl_xco_dbt_o_local IMPLEMENTATION.
ENDCLASS.
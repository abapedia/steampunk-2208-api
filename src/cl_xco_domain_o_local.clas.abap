CLASS cl_xco_domain_o_local DEFINITION
  PUBLIC INHERITING FROM cl_xco_domain_origin
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_xco_domain_cacheable_origin
      FINAL METHODS disable_caching
                    enable_caching.

  PROTECTED SECTION.

    METHODS get_cache
      REDEFINITION.
    METHODS get_read_access
      REDEFINITION.
ENDCLASS.

CLASS cl_xco_domain_o_local IMPLEMENTATION.
ENDCLASS.
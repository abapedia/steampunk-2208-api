CLASS cl_xco_tab_psl_fkfa_scenario DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PROTECTED SECTION.
    METHODS:
      get ABSTRACT
        EXPORTING
          ev_index      TYPE sy-tabix
          ev_checktable TYPE char30
          ev_tabname    TYPE tabname
          et_dd03p_tab  TYPE not_released_ttyp.
ENDCLASS.

CLASS cl_xco_tab_psl_fkfa_scenario IMPLEMENTATION.
ENDCLASS.
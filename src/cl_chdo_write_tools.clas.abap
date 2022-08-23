CLASS cl_chdo_write_tools DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    TYPES ty_cdchangenr TYPE c LENGTH 10.
    TYPES ty_cdchngindh TYPE c.
    TYPES ty_cddatum TYPE d.
    TYPES ty_cdflag TYPE c.
    TYPES ty_cdobjectcl TYPE c LENGTH 15.
    TYPES ty_cdobjectv TYPE c LENGTH 90.
    TYPES ty_cdtcode TYPE c LENGTH 20.
    TYPES ty_cdusername TYPE c LENGTH 12.
    TYPES ty_cduzeit TYPE t.
    TYPES ty_planchngnr TYPE c LENGTH 12.
    TYPES ty_tabname TYPE tabname.
    CLASS-METHODS changedocument_multiple_case
      IMPORTING
      !change_indicator TYPE ty_cdflag DEFAULT 'U'
      !docu_delete TYPE ty_cdflag DEFAULT space
      !docu_insert TYPE ty_cdflag DEFAULT space
      !reftablename TYPE ty_tabname DEFAULT space
      !tablename TYPE ty_tabname
      !docu_delete_if TYPE ty_cdflag DEFAULT 'X'
      !docu_insert_if TYPE ty_cdflag DEFAULT space
      !table_new TYPE STANDARD TABLE OPTIONAL
      !table_old TYPE STANDARD TABLE OPTIONAL
      RAISING
      cx_chdo_write_error.
    CLASS-METHODS changedocument_single_case
      IMPORTING
      !change_indicator TYPE ty_cdflag DEFAULT 'U'
      !docu_delete TYPE ty_cdflag DEFAULT space
      !docu_insert TYPE ty_cdflag DEFAULT space
      !refarea_new TYPE data DEFAULT space
      !refarea_old TYPE data DEFAULT space
      !reftablename TYPE ty_tabname DEFAULT space
      !tablename TYPE ty_tabname
      !workarea_new TYPE data DEFAULT space
      !workarea_old TYPE data DEFAULT space
      !docu_delete_if TYPE ty_cdflag DEFAULT 'X'
      !docu_insert_if TYPE ty_cdflag DEFAULT space
      RAISING
      cx_chdo_write_error.
    CLASS-METHODS changedocument_text_case
      IMPORTING
      !texttable TYPE STANDARD TABLE
      RAISING
      cx_chdo_write_error.
    CLASS-METHODS changedocument_close
      IMPORTING
      !date_of_change TYPE ty_cddatum
      !objectclass TYPE ty_cdobjectcl
      !objectid TYPE ty_cdobjectv
      !tcode TYPE ty_cdtcode OPTIONAL
      !time_of_change TYPE ty_cduzeit
      !username TYPE ty_cdusername
      !object_change_indicator TYPE ty_cdchngindh DEFAULT 'U'
      !planned_or_real_changes TYPE ty_cdchngindh DEFAULT space
      !no_change_pointers TYPE ty_cdchngindh DEFAULT space
      EXPORTING
      !changenumber TYPE ty_cdchangenr
      RAISING
      cx_chdo_write_error.
    CLASS-METHODS changedocument_open
      IMPORTING
      !objectclass TYPE ty_cdobjectcl
      !objectid TYPE ty_cdobjectv
      !planned_change_number TYPE ty_planchngnr DEFAULT space
      !planned_or_real_changes TYPE ty_cdchngindh DEFAULT space
      RAISING
      cx_chdo_write_error.
ENDCLASS.

CLASS cl_chdo_write_tools IMPLEMENTATION.
ENDCLASS.
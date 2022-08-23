INTERFACE if_chdo_object_tools_rel
  PUBLIC.

  TYPES:
    BEGIN OF ty_tcdgen,
      author      TYPE c LENGTH 12,
      updname     TYPE c LENGTH 12,
      change_date TYPE d,
      change_time TYPE t,
      textcase    TYPE c,
      devclass    TYPE c LENGTH 30,
    END OF ty_tcdgen.
  TYPES:
    BEGIN OF ty_tcdobdef,
      tabname  TYPE c LENGTH 30,
      multcase TYPE c,
      docudel  TYPE c,
      docuins  TYPE c,
      refname  TYPE c LENGTH 30,
      docud_if TYPE c,
      docui_if TYPE c,
    END OF ty_tcdobdef.
  TYPES:
    BEGIN OF ty_tcdobtext,
      lang_key    TYPE spras,
      object_text TYPE c LENGTH 60,
    END OF ty_tcdobtext.
  TYPES:
    ty_tcdobtext_tab TYPE STANDARD TABLE OF ty_tcdobtext.
  TYPES:
    ty_tcdobdef_tab TYPE STANDARD TABLE OF ty_tcdobdef.
  TYPES tv_cddevclass TYPE c LENGTH 30.
  TYPES ty_cdchngind TYPE c.
  TYPES: BEGIN OF ty_cdtxt_line,
    teilobjid TYPE c LENGTH 70,
    textart TYPE c LENGTH 4,
    textspr TYPE c LENGTH 1,
    updkz TYPE c LENGTH 1,
    END OF ty_cdtxt_line.
  TYPES:
    ty_cdtxt_tab TYPE STANDARD TABLE OF ty_cdtxt_line.
  TYPES: BEGIN OF ty_icdind,
    kz TYPE c LENGTH 1,
    END OF ty_icdind.
  TYPES ty_cdchangenr TYPE c LENGTH 10.
  TYPES ty_cdchngindh TYPE c.
  TYPES ty_cddatum TYPE d.
  TYPES ty_cdflag TYPE c.
  TYPES ty_cdobjectv TYPE c LENGTH 90.
  TYPES ty_cdtcode TYPE c LENGTH 20.
  TYPES ty_cdusername TYPE c LENGTH 12.
  TYPES ty_cduzeit TYPE t.
  TYPES ty_planchngnr TYPE c LENGTH 12.
  TYPES: BEGIN OF ty_tcdrp,
    object TYPE c LENGTH 15,
    reportname TYPE c LENGTH 26,
    author TYPE c LENGTH 12,
    updname TYPE c LENGTH 12,
    datum TYPE d,
    uzeit TYPE t,
    textcase TYPE c LENGTH 1,
    arbgeb TYPE c LENGTH 20,
    fehlernr TYPE c LENGTH 3,
    fgrp TYPE c LENGTH 26,
    prefix TYPE c LENGTH 14,
    devclass TYPE c LENGTH 30,
    update_flg TYPE c LENGTH 1,
    datagen TYPE c LENGTH 1,
    abap_language_version TYPE c LENGTH 1,
    status TYPE c LENGTH 1,
    cdate TYPE d,
    ctime TYPE t,
    END OF ty_tcdrp.
  TYPES tv_trkorr TYPE c LENGTH 20.
  TYPES ty_cdfgrp TYPE c LENGTH 26.
  TYPES ty_cdobjectcl TYPE c LENGTH 15.
  TYPES ty_cdprefix TYPE c LENGTH 14.
  TYPES ty_cdreport TYPE c LENGTH 26.
  TYPES ty_fieldname TYPE c LENGTH 30.
  TYPES: BEGIN OF ty_rslinltab_line,
    kind TYPE c LENGTH 1,
    numb TYPE i,
    param TYPE c LENGTH 10,
    value TYPE string,
    END OF ty_rslinltab_line.
  TYPES:
    ty_rslinltab TYPE STANDARD TABLE OF ty_rslinltab_line.
  TYPES: BEGIN OF ty_rsyntmsgs_line,
    stmt_cnt TYPE i,
    incname TYPE c LENGTH 40,
    line TYPE i,
    col TYPE i,
    spras TYPE c LENGTH 1,
    keyword TYPE c LENGTH 20,
    msgnumber TYPE c LENGTH 4,
    message TYPE c LENGTH 240,
    kind TYPE c LENGTH 4,
    END OF ty_rsyntmsgs_line.
  TYPES:
    ty_rsyntmsgs TYPE STANDARD TABLE OF ty_rsyntmsgs_line.
  TYPES: BEGIN OF ty_tcdobt_line,
    spras TYPE c LENGTH 1,
    object TYPE c LENGTH 15,
    obtext TYPE c LENGTH 60,
    END OF ty_tcdobt_line.
  TYPES:
    ty_tcdobt_tabtyp TYPE STANDARD TABLE OF ty_tcdobt_line.
  TYPES: BEGIN OF ty_tcdob_line,
    object TYPE c LENGTH 15,
    tabname TYPE c LENGTH 30,
    multcase TYPE c LENGTH 1,
    docudel TYPE c LENGTH 1,
    docuins TYPE c LENGTH 1,
    refname TYPE c LENGTH 30,
    oldtabname TYPE c LENGTH 30,
    archmult TYPE c LENGTH 1,
    docud_noif TYPE c LENGTH 1,
    docui_if TYPE c LENGTH 1,
    END OF ty_tcdob_line.
  TYPES:
    ty_tcdob_tt TYPE STANDARD TABLE OF ty_tcdob_line.
  TYPES tv_activ_auth TYPE activ_auth.
  TYPES:
    BEGIN OF ty_tr_error,
    kind(2)  TYPE c,
    msgid    TYPE sy-msgid,
    msgnr    TYPE syst-msgno,
    v1       TYPE syst-msgv1,
    v2       TYPE syst-msgv1,
    v3       TYPE syst-msgv1,
    v4       TYPE syst-msgv1,
    text     TYPE c LENGTH 73,
    END OF ty_tr_error.
  TYPES:
    ty_tr_error_tab TYPE STANDARD TABLE OF ty_tr_error.
  TYPES:
    BEGIN OF ty_object_info,
      objectclas      TYPE c LENGTH 15,
      gnr             TYPE int4,
      gen_type        TYPE char30,
      group           TYPE text80,
      znr             TYPE int4,
      infotext        TYPE text80,
      obj_type        TYPE char30,
      name            TYPE text80,
    END OF ty_object_info.
  TYPES:
    tty_object_info TYPE STANDARD TABLE OF ty_object_info.
  TYPES:
    BEGIN OF ty_attributes,
      ddic_logflag TYPE abap_bool,
    END OF ty_attributes.
  CLASS-METHODS check_authorization
    IMPORTING
      !iv_object TYPE ty_cdobjectcl
      !iv_activity TYPE tv_activ_auth
      !iv_devclass TYPE tv_cddevclass
    RETURNING
      VALUE(rv_is_authorized) TYPE abap_bool.
  CLASS-METHODS create_and_generate_object
    IMPORTING
      !iv_object TYPE ty_cdobjectcl
      !it_cd_object_def TYPE ty_tcdobdef_tab OPTIONAL
      !it_cd_object_text TYPE ty_tcdobtext_tab OPTIONAL
      !is_cd_object_gen TYPE ty_tcdgen OPTIONAL
      !iv_cl_overwrite TYPE abap_bool OPTIONAL
      !iv_corrnr TYPE tv_trkorr OPTIONAL
    EXPORTING
      !et_errors TYPE ty_tr_error_tab
      !et_synt_errors TYPE ty_rsyntmsgs
      !et_synt_error_long TYPE ty_rslinltab
    RAISING
      cx_chdo_generation_error.
  CLASS-METHODS update_object
    IMPORTING
      !iv_object TYPE ty_cdobjectcl
      !it_cd_object_def TYPE ty_tcdobdef_tab OPTIONAL
      !it_cd_object_text TYPE ty_tcdobtext_tab OPTIONAL
      !is_cd_object_gen TYPE ty_tcdgen OPTIONAL
      !iv_cl_overwrite TYPE abap_bool OPTIONAL
      !iv_corrnr TYPE tv_trkorr OPTIONAL
    EXPORTING
      !et_errors TYPE ty_tr_error_tab
      !et_synt_errors TYPE ty_rsyntmsgs
      !et_synt_error_long TYPE ty_rslinltab
    RAISING
      cx_chdo_generation_error.
  CLASS-METHODS delete_object
    IMPORTING
      !iv_object TYPE ty_cdobjectcl
      !iv_corrnr TYPE tv_trkorr OPTIONAL
      !iv_del_cl_when_used TYPE abap_bool OPTIONAL
    EXPORTING
      !et_errors TYPE ty_tr_error_tab
    RAISING
      cx_chdo_generation_error.
  CLASS-METHODS read_object
    IMPORTING
      !iv_object TYPE ty_cdobjectcl
    EXPORTING
      !et_object_info TYPE tty_object_info
    RAISING
      cx_chdo_generation_error.
ENDINTERFACE.
INTERFACE if_apj_types
  PUBLIC.

  TYPES apj_raldb_repo TYPE c LENGTH 40.
  TYPES apj_raldb_excl TYPE c.
  TYPES apj_raldb_incl TYPE c.
  TYPES apj_raldb_opti TYPE c LENGTH 2.
  TYPES apj_severity TYPE c.
  TYPES:
    ty_sign   TYPE c LENGTH 1.
  TYPES:
    ty_option TYPE c LENGTH 2.
  TYPES:
    BEGIN OF ty_jt_selopt,
           parameter_name TYPE c LENGTH 38,
           sign           TYPE c,
           option         TYPE c LENGTH 2,
           low            TYPE c LENGTH 255,
           high           TYPE c LENGTH 255,
         END OF ty_jt_selopt.
  TYPES:
    tt_jt_selopt TYPE STANDARD TABLE OF ty_jt_selopt WITH EMPTY KEY
                        WITH NON-UNIQUE SORTED KEY param COMPONENTS parameter_name.
  TYPES:
    BEGIN OF ty_message,
           severity   TYPE apj_severity,
           msg_id     TYPE symsgid,
           msg_number TYPE symsgno,
           msg_v1     TYPE c LENGTH 50,
           msg_v2     TYPE c LENGTH 50,
           msg_v3     TYPE c LENGTH 50,
           msg_v4     TYPE c LENGTH 50,
           field_name TYPE c LENGTH 38,
         END OF ty_message.
  TYPES:
    BEGIN OF ts_seltab,
           selname TYPE c LENGTH 38,
           kind    TYPE c,
           sign    TYPE c,
           option  TYPE c LENGTH 2,
           low     TYPE c LENGTH 255,
           high    TYPE c LENGTH 255,
         END OF ts_seltab.
  TYPES:
    tt_seltab TYPE STANDARD TABLE OF ts_seltab WITH DEFAULT KEY
          WITH NON-UNIQUE SORTED KEY sel_name COMPONENTS selname.

  CONSTANTS cv_internal_report TYPE apj_raldb_repo VALUE '!' ##NO_TEXT.
  CONSTANTS:
    BEGIN OF cs_sign,
               including TYPE apj_raldb_incl VALUE 'I',
               excluding TYPE apj_raldb_excl VALUE 'E',
             END OF cs_sign.
  CONSTANTS:
    BEGIN OF cs_option,
               equal                TYPE apj_raldb_opti VALUE 'EQ',
               not_equal            TYPE apj_raldb_opti VALUE 'NE',
               less                 TYPE apj_raldb_opti VALUE 'LE',
               less_than            TYPE apj_raldb_opti VALUE 'LT',
               greater              TYPE apj_raldb_opti VALUE 'GE',
               greater_than         TYPE apj_raldb_opti VALUE 'GT',
               between              TYPE apj_raldb_opti VALUE 'BT',
               not_between          TYPE apj_raldb_opti VALUE 'NB',
               contains_pattern     TYPE apj_raldb_opti VALUE 'CP',
               not_contains_pattern TYPE apj_raldb_opti VALUE 'NP',
             END OF cs_option.
ENDINTERFACE.
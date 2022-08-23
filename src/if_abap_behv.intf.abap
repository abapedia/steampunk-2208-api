INTERFACE if_abap_behv
  PUBLIC.

  TYPES:
    t_char01 TYPE c LENGTH 1.
  TYPES:
    t_xflag TYPE x LENGTH 1.
  TYPES:
    tt_message TYPE STANDARD TABLE OF REF TO if_abap_behv_message WITH EMPTY KEY.
  TYPES:
    BEGIN OF ENUM t_fail_cause STRUCTURE cause,
      unspecific   VALUE IS INITIAL,
      unauthorized VALUE 401,
      "   forbidden         value 403,
      not_found    VALUE 404,
      "   op_not_allowed    value 405,
      conflict     VALUE 409,    " 7.84
      "   gone              value 410,
      "   unprocessable     value 422,
      locked       VALUE 423,
      dependency   VALUE 424,    " 7.85
      disabled     VALUE 4221,    " 7.85
      readonly     VALUE 4222,    " 7.85
      "   internal_error    value 500,
      "   not_implemented   value 501,
    END OF ENUM t_fail_cause STRUCTURE cause.
  TYPES:
    BEGIN OF ENUM t_phase STRUCTURE phases,
      initial           VALUE IS INITIAL,
      finalize          VALUE 2,
      cleanup_finalize  VALUE 3,
      check_before_save VALUE 4,
      adjust_numbers    VALUE 6,
      save              VALUE 8,
      cleanup           VALUE 9,
    END OF ENUM t_phase STRUCTURE phases.
  TYPES:
    BEGIN OF t_failinfo,
      cause TYPE t_fail_cause,
      "      phase type T_PHASE,
    END OF t_failinfo.
  TYPES:
    BEGIN OF ENUM t_image STRUCTURE image,
      transactional,
      before,
    END OF ENUM t_image STRUCTURE image.
  TYPES:
    BEGIN OF ENUM t_permissions_only STRUCTURE permissions_only BASE TYPE t_xflag,
      all                    VALUE IS INITIAL,
      authorization          VALUE 'EE',
      features               VALUE 'DD',
      global_authorization   VALUE 'EF',
      global_features        VALUE 'DF',
      global                 VALUE 'CF',
      instance_authorization VALUE 'FE',
      instance_features      VALUE 'FD',
      instance               VALUE 'FC',
    END OF ENUM t_permissions_only STRUCTURE permissions_only.
  TYPES t_message TYPE REF TO if_t100_dyn_msg.

  CONSTANTS:
    BEGIN OF mk,
      off TYPE t_xflag VALUE '00',
      on  TYPE t_xflag VALUE '01',
    END OF mk.

  CONSTANTS:
    BEGIN OF op,
      BEGIN OF m,
        create    TYPE t_char01 VALUE 'C',
        update    TYPE t_char01 VALUE 'U',
        delete    TYPE t_char01 VALUE 'D',
        action    TYPE t_char01 VALUE 'A',
        create_ba TYPE t_char01 VALUE 'O',
      END OF m,
      BEGIN OF r,
        read     TYPE t_char01 VALUE 'R',
        read_ba  TYPE t_char01 VALUE 'N',
        evaluate TYPE t_char01 VALUE 'E',
      END OF r,
    END OF op.

  CONSTANTS:
    BEGIN OF fc,
      BEGIN OF f,
        unrestricted TYPE t_xflag VALUE '00',
        mandatory    TYPE t_xflag VALUE '01',
        read_only    TYPE t_xflag VALUE '02',
        all          TYPE t_xflag VALUE 'FF',
      END OF f,
      BEGIN OF o,
        enabled  TYPE t_xflag VALUE '00',
        disabled TYPE t_xflag VALUE '01',
      END OF o,
    END OF fc.

  CONSTANTS:
    BEGIN OF auth,
      allowed      TYPE t_xflag VALUE '00',
      unauthorized TYPE t_xflag VALUE '01',
    END OF auth.

  CONSTANTS:
    BEGIN OF perm,
      BEGIN OF f,
        unrestricted TYPE t_xflag VALUE '00',
        mandatory    TYPE t_xflag VALUE '01',
        read_only    TYPE t_xflag VALUE '02',
        mandatory_create    TYPE t_xflag VALUE '10',
        read_only_update    TYPE t_xflag VALUE '20',
        all          TYPE t_xflag VALUE 'FF',
      END OF f,
      BEGIN OF o,
        enabled  TYPE t_xflag VALUE '00',
        disabled TYPE t_xflag VALUE '01',
        unauthorized TYPE t_xflag VALUE '02',
      END OF o,
    END OF perm.

  CONSTANTS:
    BEGIN OF permreq,
      none TYPE t_char01 VALUE ' ', independent TYPE t_char01 VALUE 'X', modify TYPE t_char01 VALUE 'M',
    END OF permreq.

  CONSTANTS:
    state_area_none TYPE string VALUE `%NONE`,
    state_area_all  TYPE string VALUE `%ALL`.

  CONSTANTS:
    BEGIN OF typekind,
      import  TYPE abp_behv_typekind VALUE ' ',
      result  TYPE abp_behv_typekind VALUE 'R',
      link    TYPE abp_behv_typekind VALUE 'L',
      request TYPE abp_behv_typekind VALUE 'Q',
    END OF typekind.

ENDINTERFACE.
CLASS cx_ftd_parameter_not_found DEFINITION PUBLIC FINAL CREATE PUBLIC INHERITING FROM cx_no_check.

  PUBLIC SECTION.
    INTERFACES if_t100_message.

    CONSTANTS:
      BEGIN OF importing_parmeter_not_found,
        msgid TYPE symsgid VALUE 'FUNCTION_TESTDOUBLE',
        msgno TYPE symsgno VALUE '050',
        attr1 TYPE scx_attrname VALUE 'PARAMETER',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF importing_parmeter_not_found.

    CONSTANTS:
      BEGIN OF exporting_parmeter_not_found,
        msgid TYPE symsgid VALUE 'FUNCTION_TESTDOUBLE',
        msgno TYPE symsgno VALUE '051',
        attr1 TYPE scx_attrname VALUE 'PARAMETER',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF exporting_parmeter_not_found.

    CONSTANTS:
      BEGIN OF changing_parameter_not_found,
        msgid TYPE symsgid VALUE 'FUNCTION_TESTDOUBLE',
        msgno TYPE symsgno VALUE '052',
        attr1 TYPE scx_attrname VALUE 'PARAMETER',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF changing_parameter_not_found.

    CONSTANTS:
      BEGIN OF table_parameter_not_found,
        msgid TYPE symsgid VALUE 'FUNCTION_TESTDOUBLE',
        msgno TYPE symsgno VALUE '053',
        attr1 TYPE scx_attrname VALUE 'PARAMETER',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF table_parameter_not_found.

    CONSTANTS:
      BEGIN OF parameter_not_found,
        msgid TYPE symsgid VALUE 'FUNCTION_TESTDOUBLE',
        msgno TYPE symsgno VALUE '054',
        attr1 TYPE scx_attrname VALUE 'PARAMETER',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF parameter_not_found.

    CONSTANTS:
      BEGIN OF mandatory_imp_parm_not_found,
        msgid TYPE symsgid VALUE 'FUNCTION_TESTDOUBLE',
        msgno TYPE symsgno VALUE '055',
        attr1 TYPE scx_attrname VALUE 'PARAMETER',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF mandatory_imp_parm_not_found.

    CONSTANTS:
      BEGIN OF mandatory_cha_parm_not_found,
        msgid TYPE symsgid VALUE 'FUNCTION_TESTDOUBLE',
        msgno TYPE symsgno VALUE '056',
        attr1 TYPE scx_attrname VALUE 'PARAMETER',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF mandatory_cha_parm_not_found.

    CONSTANTS:
      BEGIN OF mandatory_tbl_parm_not_found,
        msgid TYPE symsgid VALUE 'FUNCTION_TESTDOUBLE',
        msgno TYPE symsgno VALUE '057',
        attr1 TYPE scx_attrname VALUE 'PARAMETER',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF mandatory_tbl_parm_not_found.

    DATA parameter TYPE abap_parmname.

    METHODS constructor
      IMPORTING
        textid    LIKE if_t100_message=>t100key OPTIONAL
        previous  LIKE previous                 OPTIONAL
        parameter TYPE abap_parmname           OPTIONAL.

ENDCLASS.

CLASS cx_ftd_parameter_not_found IMPLEMENTATION.
ENDCLASS.
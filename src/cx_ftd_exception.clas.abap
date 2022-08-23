CLASS cx_ftd_exception DEFINITION PUBLIC FINAL CREATE PUBLIC INHERITING FROM cx_no_check.

  PUBLIC SECTION.
    INTERFACES if_t100_message.

    CONSTANTS:
      BEGIN OF empty_input_list,
        msgid TYPE symsgid VALUE 'FUNCTION_TESTDOUBLE',
        msgno TYPE symsgno VALUE '001',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF empty_input_list.

    CONSTANTS:
      BEGIN OF function_module_not_found,
        msgid TYPE symsgid VALUE 'FUNCTION_TESTDOUBLE',
        msgno TYPE symsgno VALUE '002',
        attr1 TYPE scx_attrname VALUE 'FUNCTION',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF function_module_not_found.

    CONSTANTS:
      BEGIN OF test_double_already_exists,
        msgid TYPE symsgid VALUE 'FUNCTION_TESTDOUBLE',
        msgno TYPE symsgno VALUE '003',
        attr1 TYPE scx_attrname VALUE 'FUNCTION',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF test_double_already_exists.

    CONSTANTS:
      BEGIN OF test_double_not_found,
        msgid TYPE symsgid VALUE 'FUNCTION_TESTDOUBLE',
        msgno TYPE symsgno VALUE '004',
        attr1 TYPE scx_attrname VALUE 'FUNCTION',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF test_double_not_found.

    CONSTANTS:
      BEGIN OF cannot_support_classic_exc,
        msgid TYPE symsgid VALUE 'FUNCTION_TESTDOUBLE',
        msgno TYPE symsgno VALUE '005',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF cannot_support_classic_exc.

    CONSTANTS:
      BEGIN OF cannot_support_class_based_exc,
        msgid TYPE symsgid VALUE 'FUNCTION_TESTDOUBLE',
        msgno TYPE symsgno VALUE '006',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF cannot_support_class_based_exc.

    CONSTANTS:
      BEGIN OF answer_already_configured,
        msgid TYPE symsgid VALUE 'FUNCTION_TESTDOUBLE',
        msgno TYPE symsgno VALUE '007',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF answer_already_configured.

    CONSTANTS:
      BEGIN OF iterator_index_out_of_bounds,
        msgid TYPE symsgid VALUE 'FUNCTION_TESTDOUBLE',
        msgno TYPE symsgno VALUE '008',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF iterator_index_out_of_bounds.

    CONSTANTS:
      BEGIN OF update_task_function,
        msgid TYPE symsgid VALUE 'FUNCTION_TESTDOUBLE',
        msgno TYPE symsgno VALUE '010',
        attr1 TYPE scx_attrname VALUE 'FUNCTION',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF update_task_function.

    CONSTANTS:
      BEGIN OF test_double_not_permitted,
        msgid TYPE symsgid VALUE 'FUNCTION_TESTDOUBLE',
        msgno TYPE symsgno VALUE '011',
        attr1 TYPE scx_attrname VALUE 'FUNCTION',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF test_double_not_permitted.

    DATA function TYPE sxco_fm_name.
    METHODS constructor
      IMPORTING
        textid   LIKE if_t100_message=>t100key OPTIONAL
        previous LIKE previous                 OPTIONAL
        function TYPE sxco_fm_name             OPTIONAL.

ENDCLASS.

CLASS cx_ftd_exception IMPLEMENTATION.
ENDCLASS.
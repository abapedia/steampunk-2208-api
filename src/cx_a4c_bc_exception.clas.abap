CLASS cx_a4c_bc_exception DEFINITION
  INHERITING FROM cx_static_check
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_t100_dyn_msg.
    INTERFACES if_t100_message.

    CONSTANTS:
      BEGIN OF cx_a4c_a2g_bc_exception,
        msgid TYPE symsgid VALUE 'A4C_BC',
        msgno TYPE symsgno VALUE '001',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF cx_a4c_a2g_bc_exception.

    CONSTANTS:
      BEGIN OF no_objects_to_add,
        msgid TYPE symsgid VALUE 'A4C_BC',
        msgno TYPE symsgno VALUE '002',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF no_objects_to_add.

    CONSTANTS:
      BEGIN OF no_db_table_found,
        msgid TYPE symsgid VALUE 'A4C_BC',
        msgno TYPE symsgno VALUE '003',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF no_db_table_found.

    CONSTANTS:
      BEGIN OF no_usabale_repository_found,
        msgid TYPE symsgid VALUE 'A4C_BC',
        msgno TYPE symsgno VALUE '004',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF no_usabale_repository_found.

    CONSTANTS:
      BEGIN OF wrong_table_type,
        msgid TYPE symsgid VALUE 'A4C_BC',
        msgno TYPE symsgno VALUE '005',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF wrong_table_type.

    CONSTANTS:
      BEGIN OF trkorr_create_error,
        msgid TYPE symsgid VALUE 'A4C_BC',
        msgno TYPE symsgno VALUE '014',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF trkorr_create_error.

    CONSTANTS:
      BEGIN OF trkorr_delete_error,
        msgid TYPE symsgid VALUE 'A4C_BC',
        msgno TYPE symsgno VALUE '015',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF trkorr_delete_error.

    CONSTANTS:
      BEGIN OF trkorr_release_error,
        msgid TYPE symsgid VALUE 'A4C_BC',
        msgno TYPE symsgno VALUE '019',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF trkorr_release_error.

    METHODS constructor
      IMPORTING
        !textid   LIKE if_t100_message=>t100key OPTIONAL
        !previous LIKE previous OPTIONAL.

  PROTECTED SECTION.
ENDCLASS.

CLASS cx_a4c_bc_exception IMPLEMENTATION.
ENDCLASS.
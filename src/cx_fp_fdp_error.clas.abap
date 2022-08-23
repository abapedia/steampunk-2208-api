CLASS cx_fp_fdp_error DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_t100_message.
    INTERFACES if_t100_dyn_msg.

    CONSTANTS:
      BEGIN OF metadata_error,
        msgid TYPE symsgid VALUE 'FP_FDP_ERROR',
        msgno TYPE symsgno VALUE '001',
        attr1 TYPE scx_attrname VALUE 'MV_SDEF_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF metadata_error,
      BEGIN OF sdef_invalid,
        msgid TYPE symsgid VALUE 'FP_FDP_ERROR',
        msgno TYPE symsgno VALUE '002',
        attr1 TYPE scx_attrname VALUE 'MV_SDEF_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF sdef_invalid,
      BEGIN OF multiple_root_nodes_found,
        msgid TYPE symsgid VALUE 'FP_FDP_ERROR',
        msgno TYPE symsgno VALUE '003',
        attr1 TYPE scx_attrname VALUE 'MV_NODES',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF multiple_root_nodes_found,
      BEGIN OF no_root_node_found,
        msgid TYPE symsgid VALUE 'FP_FDP_ERROR',
        msgno TYPE symsgno VALUE '004',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF no_root_node_found,
      BEGIN OF no_cycle_ref,
        msgid TYPE symsgid VALUE 'FP_FDP_ERROR',
        msgno TYPE symsgno VALUE '005',
        attr1 TYPE scx_attrname VALUE 'MV_NODES',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF no_cycle_ref,
       BEGIN OF error_client_init,
        msgid TYPE symsgid VALUE 'FP_FDP_ERROR',
        msgno TYPE symsgno VALUE '006',
        attr1 TYPE scx_attrname VALUE 'MV_ERROR_TXT',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF error_client_init,
      BEGIN OF data_kind_not_supported,
        msgid TYPE symsgid VALUE 'FP_FDP_ERROR',
        msgno TYPE symsgno VALUE '007',
        attr1 TYPE scx_attrname VALUE 'MV_ERROR_TXT',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF data_kind_not_supported.

    DATA:
      mv_error_txt  TYPE string,
      mv_nodes      TYPE string,
      mv_sdef_name  TYPE string.

    METHODS constructor
      IMPORTING
        !mv_nodes     TYPE string OPTIONAL
        !mv_error_txt   TYPE string OPTIONAL
        !textid LIKE if_t100_message=>t100key OPTIONAL
        !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_fp_fdp_error IMPLEMENTATION.
ENDCLASS.
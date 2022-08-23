CLASS cx_fp_ads_util DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_message.
    INTERFACES if_t100_dyn_msg.

    CONSTANTS:
      BEGIN OF no_ads_connection,
        msgid TYPE symsgid VALUE 'FP_ADS_UTIL',
        msgno TYPE symsgno VALUE '001',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF no_ads_connection,
      BEGIN OF ads_error,
        msgid TYPE symsgid VALUE 'FP_ADS_UTIL',
        msgno TYPE symsgno VALUE '002',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF ads_error,
      BEGIN OF no_print_queue,
        msgid TYPE symsgid VALUE 'FP_ADS_UTIL',
        msgno TYPE symsgno VALUE '005',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF no_print_queue,
      BEGIN OF invalid_print_queue,
        msgid TYPE symsgid VALUE 'FP_ADS_UTIL',
        msgno TYPE symsgno VALUE '006',
        attr1 TYPE scx_attrname VALUE 'MV_PQNAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF invalid_print_queue,
      BEGIN OF no_xdp_template,
        msgid TYPE symsgid VALUE 'FP_ADS_UTIL',
        msgno TYPE symsgno VALUE '010',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF no_xdp_template,
      BEGIN OF no_xml_data,
        msgid TYPE symsgid VALUE 'FP_ADS_UTIL',
        msgno TYPE symsgno VALUE '011',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF no_xml_data,
      BEGIN OF invalid_parameter,
        msgid TYPE symsgid VALUE 'FP_ADS_UTIL',
        msgno TYPE symsgno VALUE '012',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF invalid_parameter.

    DATA:
      mv_pqname  TYPE string.

    METHODS constructor
      IMPORTING
        !mv_pqname TYPE string OPTIONAL
        !textid    LIKE if_t100_message=>t100key OPTIONAL
        !previous  LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_fp_ads_util IMPLEMENTATION.
ENDCLASS.
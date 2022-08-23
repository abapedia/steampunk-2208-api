CLASS /iwxbe/cx_exception DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_message.

    TYPES:
      BEGIN OF ENUM ty_en_exception_category STRUCTURE gcs_exception_category,
        connection,
        configuration,
        event_consumption,
        event_production,
        framework,
      END OF ENUM ty_en_exception_category STRUCTURE gcs_exception_category.

    CONSTANTS:
      BEGIN OF /iwxbe/cx_exception,
        msgid TYPE symsgid      VALUE '/IWXBE/CORE',
        msgno TYPE symsgno      VALUE '001',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF /iwxbe/cx_exception.
    CONSTANTS:
      BEGIN OF not_supported,
        msgid TYPE symsgid      VALUE '/IWXBE/CORE',
        msgno TYPE symsgno      VALUE '249',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF not_supported.
    CONSTANTS:
      BEGIN OF oauth_param_initial,
        msgid TYPE symsgid      VALUE '/IWXBE/CORE',
        msgno TYPE symsgno      VALUE '206',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF oauth_param_initial.
    CONSTANTS:
      BEGIN OF payload_exceeds_limit,
        msgid TYPE symsgid      VALUE '/IWXBE/CORE',
        msgno TYPE symsgno      VALUE '082',
        attr1 TYPE scx_attrname VALUE 'MSGV1',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF payload_exceeds_limit.
    CONSTANTS:
      BEGIN OF type_not_found,
        msgid TYPE symsgid      VALUE '/IWXBE/CORE',
        msgno TYPE symsgno      VALUE '321',
        attr1 TYPE scx_attrname VALUE 'MSGV1',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF type_not_found.
    DATA msgv1              TYPE symsgv.
    DATA msgv2              TYPE symsgv.
    DATA msgv3              TYPE symsgv.
    DATA msgv4              TYPE symsgv.
    DATA payload_size_limit TYPE i.
    DATA exception_category TYPE ty_en_exception_category READ-ONLY.

    METHODS:
      constructor
        IMPORTING
          !textid             LIKE if_t100_message=>t100key OPTIONAL
          !previous           LIKE previous OPTIONAL
          !msgv1              TYPE symsgv OPTIONAL
          !msgv2              TYPE symsgv OPTIONAL
          !msgv3              TYPE symsgv OPTIONAL
          !msgv4              TYPE symsgv OPTIONAL
          !payload_size_limit TYPE i OPTIONAL
          !exception_category TYPE ty_en_exception_category DEFAULT gcs_exception_category-framework,
      append_exception
        IMPORTING
          io_exception TYPE REF TO /iwxbe/cx_exception.

  PROTECTED SECTION.
ENDCLASS.

CLASS /iwxbe/cx_exception IMPLEMENTATION.
ENDCLASS.
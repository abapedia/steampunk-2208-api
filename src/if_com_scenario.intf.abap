INTERFACE if_com_scenario
  PUBLIC.

  TYPES:
    BEGIN OF ty_cscn_property,
      id                   TYPE n LENGTH 4,
      name                 TYPE c LENGTH 30,
      description          TYPE c LENGTH 40,
      default_value        TYPE c LENGTH 512,
      data_element         TYPE c LENGTH 30,
      is_secure            TYPE c,
      is_hidden            TYPE c,
      is_multiple          TYPE c,
      is_value_help_active TYPE c,
    END OF ty_cscn_property.
  TYPES:
    tt_cscn_property TYPE STANDARD TABLE OF ty_cscn_property WITH KEY name.
  TYPES:
    BEGIN OF ty_cscn_inb_srv,
      number               TYPE n LENGTH 4,
      id                   TYPE c LENGTH 40,
      type                 TYPE c LENGTH 4,
      description          TYPE c LENGTH 80,
      rfc_service_id       TYPE c LENGTH 30,
      odata_srv_identifier TYPE c LENGTH 40,
      odata_v4_group_id    TYPE c LENGTH 36,
      http_service_id      TYPE c LENGTH 30,
    END OF ty_cscn_inb_srv.
  TYPES:
    tt_cscn_inb_srv TYPE STANDARD TABLE OF ty_cscn_inb_srv  WITH KEY number.
  TYPES:
    BEGIN OF ty_cscn_outb_srv,
      number                TYPE n LENGTH 4,
      id                    TYPE c LENGTH 40,
      type                  TYPE c LENGTH 4,
      description           TYPE c LENGTH 80,

      default_url           TYPE c LENGTH 123,

      http_version          TYPE c,
      http_compress_request TYPE c,
      http_compress_reply   TYPE c,

      rfc_service_id        TYPE c LENGTH 30,
      ws_proxy_name         TYPE c LENGTH 30,
    END OF ty_cscn_outb_srv.
  TYPES:
    tt_cscn_outb_srv TYPE STANDARD TABLE OF ty_cscn_outb_srv  WITH KEY number.
  TYPES:
    BEGIN OF ty_cscn,
      id                            TYPE c LENGTH 30,
      description                   TYPE c LENGTH 80,
      allowed_instance_type         TYPE c,
      is_inb_auth_none_supported    TYPE c,
      is_inb_auth_basic_supported   TYPE c,
      is_inb_auth_x509_supported    TYPE c,
      is_inb_auth_oauth2_supported  TYPE c,
      is_outb_auth_none_supported   TYPE c,
      is_outb_auth_basic_supported  TYPE c,
      is_outb_auth_x509_supported   TYPE c,
      is_outb_auth_oauth1_supported TYPE c,
      is_outb_auth_oauth2_supported TYPE c,
      outb_oauth2_client_profile    TYPE c LENGTH 30,
      outb_oauth2_target_path       TYPE c LENGTH 128,
      outb_oauth2_granttype         TYPE i,
      is_outb_oa2_multi_cfg_allowed TYPE c,
      created_by                    TYPE c LENGTH 12,
      create_at                     TYPE p LENGTH 15 DECIMALS 0,
      change_by                     TYPE c LENGTH 12,
      change_at                     TYPE p LENGTH 15 DECIMALS 0,
      properties                    TYPE tt_cscn_property,
      inbound_services              TYPE tt_cscn_inb_srv,
      outbound_services             TYPE tt_cscn_outb_srv,
    END OF ty_cscn.
  TYPES:
    tt_cscn  TYPE STANDARD TABLE OF REF TO if_com_scenario WITH DEFAULT KEY.

  CONSTANTS:
    BEGIN OF co_instance_generation_type,
      one_per_comm_system      TYPE c VALUE '1',
      unique                   TYPE c VALUE '2',
      multiple_per_comm_system TYPE c VALUE '3',
    END OF co_instance_generation_type.
  CONSTANTS:
    BEGIN OF  co_inbound_service_type,
      odata_v2 TYPE c LENGTH 4 VALUE 'IWSG',
      odata_v4 TYPE c LENGTH 4 VALUE 'G4BA',
      rfc      TYPE c LENGTH 4 VALUE 'SRFC',
      http     TYPE c LENGTH 4 VALUE 'HTTP',
    END OF  co_inbound_service_type.
  CONSTANTS:
    BEGIN OF  co_outbound_service_type,
      soap TYPE c LENGTH 4 VALUE 'WEBI',
      rfc  TYPE c LENGTH 4 VALUE 'SRFC',
      rest TYPE c LENGTH 4 VALUE 'REST',
    END OF  co_outbound_service_type.
  METHODS get_id
    RETURNING
      VALUE(rv_id) TYPE ty_cscn-id.
  METHODS get_description
    RETURNING
      VALUE(rv_description) TYPE ty_cscn-description.
  METHODS get_allowed_instance_type
    RETURNING
      VALUE(rv_allowed_instance_type) TYPE ty_cscn-allowed_instance_type.
  METHODS is_inb_auth_none_supported
    RETURNING
      VALUE(rv_is_inb_auth_none_supported) TYPE ty_cscn-is_inb_auth_none_supported.
  METHODS is_inb_auth_basic_supported
    RETURNING
      VALUE(rv_is_supported) TYPE ty_cscn-is_inb_auth_basic_supported.
  METHODS is_inb_auth_x509_supported
    RETURNING
      VALUE(rv_is_supported) TYPE ty_cscn-is_inb_auth_x509_supported.
  METHODS is_inb_auth_oauth2_supported
    RETURNING
      VALUE(rv_is_supported) TYPE ty_cscn-is_inb_auth_oauth2_supported.
  METHODS is_outb_auth_none_supported
    RETURNING
      VALUE(rv_is_supported) TYPE ty_cscn-is_outb_auth_none_supported.
  METHODS is_outb_auth_basic_supported
    RETURNING
      VALUE(rv_is_supported) TYPE ty_cscn-is_outb_auth_basic_supported.
  METHODS is_outb_auth_x509_supported
    RETURNING
      VALUE(rv_is_supported) TYPE ty_cscn-is_outb_auth_x509_supported.
  METHODS is_outb_auth_oauth1_supported
    RETURNING
      VALUE(rv_is_supported) TYPE ty_cscn-is_outb_auth_oauth1_supported.
  METHODS is_outb_auth_oauth2_supported
    RETURNING
      VALUE(rv_is_supported) TYPE ty_cscn-is_outb_auth_oauth2_supported.
  METHODS get_outb_oauth2_client_profile
    RETURNING
      VALUE(rv_outb_oauth2_client_profile) TYPE ty_cscn-outb_oauth2_client_profile.
  METHODS get_outb_oauth2_target_path
    RETURNING
      VALUE(rv_outb_oauth2_target_path) TYPE ty_cscn-outb_oauth2_target_path.
  METHODS get_outb_oauth2_granttype
    RETURNING
      VALUE(rv_outb_oauth2_granttype) TYPE ty_cscn-outb_oauth2_granttype.
  METHODS is_outb_oa2_multi_cfg_allowed
    RETURNING
      VALUE(rv_is_allowed) TYPE ty_cscn-is_outb_oa2_multi_cfg_allowed.
  METHODS get_created_by
    RETURNING
      VALUE(rv_created_by) TYPE ty_cscn-created_by.
  METHODS get_create_at
    RETURNING
      VALUE(rv_create_at) TYPE ty_cscn-create_at.
  METHODS get_change_by
    RETURNING
      VALUE(rv_change_by) TYPE ty_cscn-change_by.
  METHODS get_change_at
    RETURNING
      VALUE(rv_change_at) TYPE ty_cscn-change_at.
  METHODS get_properties
    RETURNING
      VALUE(rt_property) TYPE tt_cscn_property.
  METHODS get_inbound_services
    RETURNING
      VALUE(rt_inbound_service) TYPE tt_cscn_inb_srv.
  METHODS get_outbound_services
    RETURNING
      VALUE(rt_outbound_service) TYPE tt_cscn_outb_srv.
ENDINTERFACE.
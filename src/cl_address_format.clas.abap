CLASS cl_address_format DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES tt_printform_table TYPE not_released_ttyp.
    CLASS-METHODS get_instance
      RETURNING
      VALUE(ro_instance) TYPE REF TO cl_address_format.
    METHODS formatted_name_and_postal_addr
      IMPORTING
      !iv_address_type TYPE ad_adrtype DEFAULT '1'
      !iv_address_number TYPE ad_addrnum OPTIONAL
      !iv_address_handle TYPE ad_handle OPTIONAL
      !iv_person_number TYPE ad_persnum OPTIONAL
      !iv_person_handle TYPE ad_handle OPTIONAL
      !is_address_data TYPE address_data_s OPTIONAL
      EXPORTING
      !ev_formatted_address_descr TYPE string
      !et_formatted_address_lines TYPE tt_printform_table
      !ev_formatted_address_char TYPE ad_line_s.
    METHODS formatted_postal_addr
      IMPORTING
      !iv_address_type TYPE ad_adrtype DEFAULT '1'
      !iv_address_number TYPE ad_addrnum OPTIONAL
      !iv_address_handle TYPE ad_handle OPTIONAL
      !iv_person_number TYPE ad_persnum OPTIONAL
      !iv_person_handle TYPE ad_handle OPTIONAL
      !is_address_data TYPE address_data_s OPTIONAL
      EXPORTING
      !ev_formatted_postal_addr_descr TYPE string
      !ev_formatted_postal_addr_lines TYPE tt_printform_table
      !ev_formatted_postal_addr_char TYPE ad_line_s.
    METHODS printform_postal_addr
      IMPORTING
      !iv_address_type TYPE ad_adrtype DEFAULT '1'
      !iv_address_number TYPE ad_addrnum OPTIONAL
      !iv_person_number TYPE ad_persnum OPTIONAL
      !is_address_data TYPE address_data_s OPTIONAL
      !iv_street_has_priority TYPE ad_strprio DEFAULT 'X'
      !iv_language_of_country_field TYPE spras DEFAULT sy-langu
      !iv_number_of_lines TYPE anzei DEFAULT 99
      !iv_receiver_language TYPE spras OPTIONAL
      !iv_sender_country TYPE ad_ctry_fr DEFAULT space
      EXPORTING
      !ev_formatted_to_one_line TYPE string
      !et_formatted_all_lines TYPE string_table.
ENDCLASS.

CLASS cl_address_format IMPLEMENTATION.
ENDCLASS.
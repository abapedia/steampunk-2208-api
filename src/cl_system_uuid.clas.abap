CLASS cl_system_uuid DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_system_uuid.
    INTERFACES if_system_uuid_static.
    INTERFACES if_system_uuid_rfc4122_static.

    ALIASES convert_uuid_c22_static
      FOR if_system_uuid_static~convert_uuid_c22.
    ALIASES convert_uuid_c26_static
      FOR if_system_uuid_static~convert_uuid_c26.
    ALIASES convert_uuid_c32_static
      FOR if_system_uuid_static~convert_uuid_c32.
    ALIASES convert_uuid_c36_static
      FOR if_system_uuid_static~convert_uuid_c36.
    ALIASES convert_uuid_x16_static
      FOR if_system_uuid_static~convert_uuid_x16.
    ALIASES create_uuid_c22_static
      FOR if_system_uuid_static~create_uuid_c22.
    ALIASES create_uuid_c26_static
      FOR if_system_uuid_static~create_uuid_c26.
    ALIASES create_uuid_c32_static
      FOR if_system_uuid_static~create_uuid_c32.
    ALIASES create_uuid_c36_static
      FOR if_system_uuid_static~create_uuid_c36.
    ALIASES create_uuid_x16_static
      FOR if_system_uuid_static~create_uuid_x16.
    ALIASES is_uuid_x16_rfc4122_compliant
      FOR if_system_uuid_static~is_uuid_x16_rfc4122_compliant.

ENDCLASS.

CLASS cl_system_uuid IMPLEMENTATION.
ENDCLASS.
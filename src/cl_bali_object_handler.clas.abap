CLASS cl_bali_object_handler DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_bali_object_handler.

    ALIASES ty_object
      FOR if_bali_object_handler~ty_object.
    ALIASES ty_object_text
      FOR if_bali_object_handler~ty_object_text.
    ALIASES ty_package
      FOR if_bali_object_handler~ty_package.
    ALIASES ty_str_subobject
      FOR if_bali_object_handler~ty_str_subobject.
    ALIASES ty_subobject
      FOR if_bali_object_handler~ty_subobject.
    ALIASES ty_subobject_text
      FOR if_bali_object_handler~ty_subobject_text.
    ALIASES ty_tab_subobject
      FOR if_bali_object_handler~ty_tab_subobject.
    ALIASES ty_transport
      FOR if_bali_object_handler~ty_transport.
    CLASS-METHODS get_instance
      RETURNING
      VALUE(ro_obj_handler) TYPE REF TO if_bali_object_handler.
ENDCLASS.

CLASS cl_bali_object_handler IMPLEMENTATION.
ENDCLASS.
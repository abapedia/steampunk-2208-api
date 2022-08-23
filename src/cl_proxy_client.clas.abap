CLASS cl_proxy_client DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_proxy_client.

    METHODS constructor
      IMPORTING
      !intf_name TYPE char30 OPTIONAL
      !class_name TYPE char30 OPTIONAL
      !logical_port_name TYPE prx_logical_port_name OPTIONAL
      !destination TYPE REF TO if_proxy_destination OPTIONAL
      PREFERRED PARAMETER logical_port_name
      RAISING
      cx_ai_system_fault.
  PROTECTED SECTION.

    DATA enh_name TYPE char30.
ENDCLASS.

CLASS cl_proxy_client IMPLEMENTATION.
ENDCLASS.
INTERFACE if_xco_cp_gen_srvb_s_form PUBLIC.
  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE sxco_ar_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_srvb_s_form,

    set_binding_type
      IMPORTING
        io_binding_type TYPE REF TO cl_xco_srvb_binding_type
      RETURNING
        VALUE(ro_me)    TYPE REF TO if_xco_cp_gen_srvb_s_form,

    add_service
      IMPORTING
        iv_name           TYPE sxco_srvb_service_name OPTIONAL
      RETURNING
        VALUE(ro_service) TYPE REF TO if_xco_gen_srvb_s_fo_service,

    get_service
      IMPORTING
        iv_name           TYPE sxco_srvb_service_name OPTIONAL
      RETURNING
        VALUE(ro_service) TYPE REF TO if_xco_gen_srvb_s_fo_service,

    remove_service
      IMPORTING
        iv_name TYPE sxco_srvb_service_name OPTIONAL.
ENDINTERFACE.
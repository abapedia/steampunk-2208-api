INTERFACE if_xco_cp_gen_fugr_d_o_post PUBLIC.
  INTERFACES:
    if_xco_cp_gen_o_post.

  ALIASES:
    execute FOR if_xco_cp_gen_o_post~execute.

  METHODS:
    add_object
      IMPORTING
        io_name_choice   TYPE REF TO if_xco_name_choice
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_fugr_d_o_post_o,

    get_object
      IMPORTING
        io_name_choice   TYPE REF TO if_xco_name_choice
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_fugr_d_o_post_o,

    remove_object
      IMPORTING
        io_name_choice TYPE REF TO if_xco_name_choice.
ENDINTERFACE.
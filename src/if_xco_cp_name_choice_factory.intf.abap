INTERFACE if_xco_cp_name_choice_factory PUBLIC.
  METHODS:
    fixed
      IMPORTING
        iv_name         TYPE clike
      RETURNING
        VALUE(ro_fixed) TYPE REF TO if_xco_name_choice.
ENDINTERFACE.
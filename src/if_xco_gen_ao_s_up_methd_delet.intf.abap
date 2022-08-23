INTERFACE if_xco_gen_ao_s_up_methd_delet PUBLIC.
  METHODS:
    add_importing_parameter
      IMPORTING
        iv_name TYPE sxco_ao_subcomponent_name,

    remove_importing_parameter
      IMPORTING
        iv_name TYPE sxco_ao_subcomponent_name,

    add_exporting_parameter
      IMPORTING
        iv_name TYPE sxco_ao_subcomponent_name,

    remove_exporting_parameter
      IMPORTING
        iv_name TYPE sxco_ao_subcomponent_name,

    add_changing_parameter
      IMPORTING
        iv_name TYPE sxco_ao_subcomponent_name,

    remove_changing_parameter
      IMPORTING
        iv_name TYPE sxco_ao_subcomponent_name,

    add_returning_parameter
      IMPORTING
        iv_name TYPE sxco_ao_subcomponent_name,

    remove_returning_parameter
      IMPORTING
        iv_name TYPE sxco_ao_subcomponent_name,

    add_exception
      IMPORTING
        iv_name TYPE sxco_ao_subcomponent_name,

    remove_exception
      IMPORTING
        iv_name TYPE sxco_ao_subcomponent_name.
ENDINTERFACE.
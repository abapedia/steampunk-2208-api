INTERFACE if_xco_intf_components_factory PUBLIC.
  DATA:
    type         TYPE REF TO if_xco_ao_c_type_factory READ-ONLY,

    constant     TYPE REF TO if_xco_ao_c_constant_factory READ-ONLY,

    alias        TYPE REF TO if_xco_ao_c_alias_factory READ-ONLY,

    class_data   TYPE REF TO if_xco_ao_c_class_data_factory READ-ONLY,
    data         TYPE REF TO if_xco_ao_c_data_factory READ-ONLY,

    class_method TYPE REF TO if_xco_intf_c_methods_factory READ-ONLY,

    method       TYPE REF TO if_xco_intf_c_methods_factory READ-ONLY.
ENDINTERFACE.
  "! <p class="shorttext synchronized" lang="EN">Interface to provide numbering support to the framework.</p>
INTERFACE if_botd_bufdbl_fields_handler
  PUBLIC.
  METHODS set_readonly_fields
    IMPORTING entity_name TYPE abp_entity_name
              operation   TYPE abp_behv_op_modify
              association_name TYPE abp_association_name OPTIONAL
    CHANGING instances TYPE STANDARD TABLE.
ENDINTERFACE.
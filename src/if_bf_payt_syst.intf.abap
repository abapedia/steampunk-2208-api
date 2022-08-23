INTERFACE if_bf_payt_syst
  PUBLIC.

  INTERFACES if_badi_interface.

  METHODS bank_alias_validation
    IMPORTING
      !payment_system_id TYPE payment_system_id
      !alias_type_id TYPE alias_type_id
      !bank_alias TYPE bank_alias
      !validation_rule TYPE als_type_rule
      !validation_type TYPE als_type_validation
    CHANGING
      !result TYPE bapiret2.
ENDINTERFACE.
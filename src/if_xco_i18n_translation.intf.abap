INTERFACE if_xco_i18n_translation PUBLIC.
  INTERFACES:
    if_xco_printable.

  DATA:
    language TYPE REF TO if_xco_language READ-ONLY,
    texts    TYPE sxco_t_i18n_texts READ-ONLY.
ENDINTERFACE.
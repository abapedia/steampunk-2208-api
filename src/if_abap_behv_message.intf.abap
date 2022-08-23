INTERFACE if_abap_behv_message
  PUBLIC.

  INTERFACES if_message.
  INTERFACES if_t100_dyn_msg.
  INTERFACES if_t100_message.

  TYPES:
    t_char01 TYPE c LENGTH 1.
  TYPES:
    BEGIN OF ENUM t_severity STRUCTURE severity BASE TYPE t_char01, "sychar01,
         none VALUE IS INITIAL,
         error       VALUE 'E',
         warning     VALUE 'W',
         information VALUE 'I',
         success     VALUE 'S',
       END OF ENUM t_severity STRUCTURE severity.

  DATA m_severity TYPE t_severity.
ENDINTERFACE.
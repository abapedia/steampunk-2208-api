INTERFACE if_xco_news PUBLIC.
  METHODS:
    get_messages
      RETURNING
        VALUE(rt_messages) TYPE sxco_t_messages.
ENDINTERFACE.
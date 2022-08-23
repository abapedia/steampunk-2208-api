INTERFACE if_xco_mc_messages PUBLIC.
  TYPES:
    tt_numbers TYPE STANDARD TABLE OF if_xco_mc_message=>tv_number WITH EMPTY KEY.

  METHODS:
    get_numbers
      RETURNING
        VALUE(rt_numbers) TYPE tt_numbers,

    get
      RETURNING
        VALUE(rt_messages) TYPE sxco_t_mc_messages.
ENDINTERFACE.
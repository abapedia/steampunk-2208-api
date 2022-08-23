CLASS cl_abap_c_reader DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_abap_close_resource
      ALL METHODS FINAL.
    INTERFACES if_abap_reader
      FINAL METHODS data_available
                    is_x_reader
                    read
                    skip.
    INTERFACES if_abap_c_reader
      FINAL METHODS read.

    ALIASES close
      FOR if_abap_close_resource~close.
    ALIASES data_available
      FOR if_abap_c_reader~data_available.
    ALIASES delete_mark
      FOR if_abap_c_reader~delete_mark.
    ALIASES is_closed
      FOR if_abap_close_resource~is_closed.
    ALIASES is_mark_supported
      FOR if_abap_c_reader~is_mark_supported.
    ALIASES is_reset_supported
      FOR if_abap_c_reader~is_reset_supported.
    ALIASES is_x_reader
      FOR if_abap_c_reader~is_x_reader.
    ALIASES read
      FOR if_abap_c_reader~read.
    ALIASES reset
      FOR if_abap_c_reader~reset.
    ALIASES reset_to_mark
      FOR if_abap_c_reader~reset_to_mark.
    ALIASES set_mark
      FOR if_abap_c_reader~set_mark.
    ALIASES skip
      FOR if_abap_c_reader~skip.

    METHODS constructor.

  PROTECTED SECTION.
ENDCLASS.

CLASS cl_abap_c_reader IMPLEMENTATION.
ENDCLASS.
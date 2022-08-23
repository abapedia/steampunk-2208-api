CLASS cl_abap_c_writer DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_abap_c_writer
      ALL METHODS FINAL.
    INTERFACES if_abap_close_resource
      ALL METHODS FINAL.
    INTERFACES if_abap_writer
      ALL METHODS FINAL.

    ALIASES close
      FOR if_abap_close_resource~close.
    ALIASES flush
      FOR if_abap_c_writer~flush.
    ALIASES is_closed
      FOR if_abap_close_resource~is_closed.
    ALIASES is_x_writer
      FOR if_abap_c_writer~is_x_writer.
    ALIASES write
      FOR if_abap_c_writer~write.

    METHODS constructor.

  PROTECTED SECTION.

ENDCLASS.

CLASS cl_abap_c_writer IMPLEMENTATION.
ENDCLASS.
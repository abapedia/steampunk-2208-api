
INTERFACE if_ex_badi_matn1
  PUBLIC.

  INTERFACES if_badi_interface.

  METHODS matn1_input_001
    CHANGING
      !matnr TYPE c
    EXCEPTIONS
      ignore_rest
      length_error.
  METHODS matn1_input_002
    IMPORTING
      VALUE(matnr_orig) TYPE c
    CHANGING
      VALUE(matnr) TYPE c
    EXCEPTIONS
      length_error.
  METHODS matn1_output_001
    CHANGING
      !matnr TYPE c
    EXCEPTIONS
      ignore_rest.
  METHODS matn1_output_002
    IMPORTING
      VALUE(matnr_orig) TYPE c
    CHANGING
      VALUE(matnr) TYPE c.
ENDINTERFACE.
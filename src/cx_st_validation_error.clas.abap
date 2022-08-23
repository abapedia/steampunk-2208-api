CLASS cx_st_validation_error DEFINITION
  PUBLIC
  INHERITING FROM cx_st_error
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_st_validation_error TYPE c LENGTH 32 VALUE '001560AA0E0802DCA994CD7E7D3E852A'. "#EC NOTEXT
    CONSTANTS generic_with_value TYPE c LENGTH 32 VALUE '001A4BD2B24A02ECB0E2330315DE1640'. "#EC NOTEXT
    DATA value TYPE string.
    DATA type TYPE string.
    DATA total_digits TYPE string.
    DATA fraction_digits TYPE string.
    DATA min_inclusive TYPE string.
    DATA min_exclusive TYPE string.
    DATA max_inclusive TYPE string.
    DATA max_exclusive TYPE string.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !st_progname TYPE string OPTIONAL
      !xml_offset TYPE i OPTIONAL
      !xml_path TYPE string OPTIONAL
      !st_ic TYPE i OPTIONAL
      !st_timestamp TYPE scx_st_tstamp OPTIONAL
      !value TYPE string OPTIONAL
      !type TYPE string OPTIONAL
      !total_digits TYPE string OPTIONAL
      !fraction_digits TYPE string OPTIONAL
      !min_inclusive TYPE string OPTIONAL
      !min_exclusive TYPE string OPTIONAL
      !max_inclusive TYPE string OPTIONAL
      !max_exclusive TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_st_validation_error IMPLEMENTATION.
ENDCLASS.
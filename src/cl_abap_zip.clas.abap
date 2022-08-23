CLASS cl_abap_zip DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      BEGIN OF t_file,
           name TYPE string,
           date TYPE d,
           time TYPE t,
           size TYPE i,
         END OF t_file.
    TYPES:
      t_files TYPE STANDARD TABLE OF t_file.
    TYPES:
      BEGIN OF t_splice_entry,
           name       TYPE string,
           offset     TYPE i,
           length     TYPE i,
           compressed TYPE i,
         END OF t_splice_entry.
    TYPES:
      t_splice_entries TYPE STANDARD TABLE OF t_splice_entry WITH DEFAULT KEY.
    TYPES:
      BEGIN OF t_file_timestamp,
      date TYPE d,
      time TYPE t,
      END OF t_file_timestamp.
    DATA files TYPE t_files READ-ONLY.
    DATA support_unicode_names TYPE abap_bool VALUE abap_false ##NO_TEXT.
    CLASS-DATA splice_rc TYPE i.
    METHODS load
      IMPORTING
      !zip TYPE xstring
      !check_header TYPE abap_bool DEFAULT abap_true
      EXCEPTIONS
      zip_parse_error.
    METHODS save
      RETURNING
      VALUE(zip) TYPE xstring.
    METHODS get
      IMPORTING
      !name TYPE string OPTIONAL
      VALUE(index) TYPE i DEFAULT 0
      EXPORTING
      !content TYPE xstring
      EXCEPTIONS
      zip_index_error
      zip_decompression_error.
    METHODS add
      IMPORTING
      !name TYPE string
      !content TYPE xsequence
      !compress_level TYPE i DEFAULT 6
      !file_timestamp TYPE t_file_timestamp OPTIONAL.
    METHODS delete
      IMPORTING
      !name TYPE string OPTIONAL
      VALUE(index) TYPE i DEFAULT 0
      EXCEPTIONS
      zip_index_error.
    CLASS-METHODS crc32
      IMPORTING
      !content TYPE xstring
      RETURNING
      VALUE(crc32) TYPE i.
    CLASS-METHODS splice
      IMPORTING
      !zip TYPE xstring
      !support_unicode TYPE abap_bool DEFAULT abap_false
      RETURNING
      VALUE(entries) TYPE t_splice_entries.
ENDCLASS.

CLASS cl_abap_zip IMPLEMENTATION.
ENDCLASS.
INTERFACE if_xco_cp_hash_algorithm_fctry PUBLIC.
  DATA:
    sha_1 TYPE REF TO if_xco_hash_algorithm READ-ONLY.

  METHODS:
    for
      IMPORTING
        iv_name                  TYPE string
      RETURNING
        VALUE(ro_hash_algorithm) TYPE REF TO if_xco_hash_algorithm.
ENDINTERFACE.
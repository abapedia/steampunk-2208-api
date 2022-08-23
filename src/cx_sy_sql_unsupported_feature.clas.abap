CLASS cx_sy_sql_unsupported_feature DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_open_sql_error
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES ddfeature_nr TYPE i.
    CONSTANTS cx_sy_sql_unsupported_feature TYPE c LENGTH 32 VALUE '005056A207C81EE3ABE6469A50FB9713' ##NO_TEXT.
    DATA m_feature TYPE string READ-ONLY.
    DATA m_feature_value TYPE ddfeature_nr READ-ONLY.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !sqlcode TYPE i OPTIONAL
      !sqlmsg TYPE string OPTIONAL
      !m_feature TYPE string OPTIONAL
      !m_feature_value TYPE ddfeature_nr OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_sql_unsupported_feature IMPLEMENTATION.
ENDCLASS.
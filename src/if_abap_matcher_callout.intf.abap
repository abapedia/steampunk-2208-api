INTERFACE if_abap_matcher_callout
  PUBLIC.

  TYPES:
    BEGIN OF ENUM callout_result STRUCTURE c_callout_result BASE TYPE i,
             pass VALUE IS INITIAL,
             fail VALUE 1,
             abort VALUE -1,
           END OF ENUM callout_result STRUCTURE c_callout_result.

  METHODS callout
    IMPORTING
      !line TYPE i
      !callout_num TYPE i
      !callout_string TYPE csequence
      !regex TYPE csequence
      !subject TYPE csequence
      !current_subject_pos TYPE i
      !current_pattern_pos TYPE i
      !current_mark TYPE csequence
      !capture_last TYPE i
      !capture_last_len TYPE i
      !capture_last_off TYPE i
      !start_match_off TYPE i
    RETURNING
      VALUE(callout_result) TYPE callout_result.
ENDINTERFACE.
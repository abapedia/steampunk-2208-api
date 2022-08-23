INTERFACE if_apack_manifest PUBLIC.

  TYPES: BEGIN OF ty_identifier,
           group_id    TYPE string,
           artifact_id TYPE string,
         END OF ty_identifier,
         BEGIN OF ty_identifier_with_version.
           INCLUDE TYPE ty_identifier.
  TYPES: version TYPE string,
         END OF ty_identifier_with_version,
         BEGIN OF ty_dependency.
           INCLUDE TYPE ty_identifier_with_version.
  TYPES: git_url        TYPE string,
           target_package TYPE not_released,
         END OF ty_dependency,
         ty_dependencies    TYPE STANDARD TABLE OF ty_dependency WITH NON-UNIQUE DEFAULT KEY,
         " normally, this would be of type ENUM, but de/serialization of ENUMs doesn't seem to work yet
         ty_repository_type TYPE string,
         BEGIN OF ty_descriptor.
           INCLUDE TYPE ty_identifier_with_version.
  TYPES:   repository_type TYPE ty_repository_type,
           git_url         TYPE string,
           dependencies    TYPE ty_dependencies,
           END OF ty_descriptor.

  CONSTANTS: co_file_name TYPE string VALUE '.apack-manifest.xml',
             co_abap_git  TYPE ty_repository_type VALUE 'abapGit'.

  DATA: descriptor TYPE ty_descriptor READ-ONLY.

ENDINTERFACE.
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasnetix/src/core/index.dart'
    show UserType, FileTypes, FileStatus, FileProvider;

class UserTypeConverter implements JsonConverter<UserType, String> {
  const UserTypeConverter();

  @override
  UserType fromJson(String json) {
    return UserType.fromValue(json);
  }

  @override
  String toJson(UserType object) {
    return object.apiLabel;
  }
}

class FileTypesConverter implements JsonConverter<FileTypes, String> {
  const FileTypesConverter();

  @override
  FileTypes fromJson(String json) {
    return FileTypes.fromValue(json);
  }

  @override
  String toJson(FileTypes object) {
    return object.apiLabel;
  }
}

class FileStatusConverter implements JsonConverter<FileStatus, String> {
  const FileStatusConverter();

  @override
  FileStatus fromJson(String json) {
    return FileStatus.fromValue(json);
  }

  @override
  String toJson(FileStatus object) {
    return object.apiLabel;
  }
}

class FileProviderConverter implements JsonConverter<FileProvider, String> {
  const FileProviderConverter();

  @override
  FileProvider fromJson(String json) {
    return FileProvider.fromValue(json);
  }

  @override
  String toJson(FileProvider object) {
    return object.apiLabel;
  }
}

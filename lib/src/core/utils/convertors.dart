import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasnetix/src/core/index.dart'
    show UserType, FileTypes, FileStatus, FileProvider, DeviceType;
import 'package:hasnetix/src/features/auth/index.dart';

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

class DeviceTypeConverter implements JsonConverter<DeviceType, String> {
  const DeviceTypeConverter();

  @override
  DeviceType fromJson(String json) {
    return DeviceType.fromValue(json);
  }

  @override
  String toJson(DeviceType object) {
    return object.apiLabel;
  }
}

class DeviceOrStringConvertor implements JsonConverter<Device?, dynamic> {
  const DeviceOrStringConvertor();

  @override
  Device? fromJson(dynamic json) {
    if (json is String) {
      return null;
    }
    if (json is Map<String, dynamic>) {
      return Device.fromJson(json);
    }
    return null;
  }

  @override
  dynamic toJson(Device? object) {
    if (object == null) return null;
    return object.id;
  }
}

class DeviceListOrStringListConvertor
    implements JsonConverter<List<Device>?, dynamic> {
  const DeviceListOrStringListConvertor();

  @override
  List<Device>? fromJson(dynamic json) {
    if (json is List) {
      if (json.isEmpty) return <Device>[];

      if (json.first is String) {
        return null;
      }

      if (json.first is Map<String, dynamic>) {
        return json
            .map((item) => Device.fromJson(item as Map<String, dynamic>))
            .toList();
      }
    }
    return null;
  }

  @override
  dynamic toJson(List<Device>? object) {
    if (object == null) return null;
    return object.map((e) => e.toJson()).toList();
  }
}

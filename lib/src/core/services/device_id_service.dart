import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:hasnetix/src/core/index.dart' show DeviceType, SecretRepo;
import 'package:uuid/uuid.dart';

class DeviceIdService {
  static const _keyId = 'hasnetix_device_id';

  static String? _cachedId;
  static String? _cachedName;

  static Future<String> getId() async {
    if (_cachedId != null) return _cachedId!;
    String? stored = await SecretRepo.getString(_keyId);
    if (stored == null) {
      stored = const Uuid().v4();
      await SecretRepo.setString(_keyId, stored);
    }
    _cachedId = stored;
    return stored;
  }

  static Future<String> getDeviceName() async {
    if (_cachedName != null) return _cachedName!;

    final info = DeviceInfoPlugin();

    try {
      if (Platform.isIOS) {
        final d = await info.iosInfo;
        _cachedName = d.name;
      } else if (Platform.isAndroid) {
        final d = await info.androidInfo;
        _cachedName = '${d.manufacturer} ${d.model}';
      } else if (Platform.isMacOS) {
        final d = await info.macOsInfo;
        _cachedName = d.computerName;
      } else if (Platform.isWindows) {
        final d = await info.windowsInfo;
        _cachedName = d.computerName;
      } else if (Platform.isLinux) {
        final d = await info.linuxInfo;
        _cachedName = d.prettyName;
      } else {
        _cachedName = 'Unknown device';
      }
    } catch (_) {
      _cachedName = 'Unknown device';
    }
    return _cachedName!;
  }

  static DeviceType getDeviceType() {
    if (Platform.isIOS || Platform.isAndroid) return DeviceType.mobile;
    return DeviceType.desktop;
  }
}

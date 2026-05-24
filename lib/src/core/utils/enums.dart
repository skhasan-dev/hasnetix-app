import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart';

enum UserType {
  guest(apiLabel: 'guest', label: 'Guest', icon: Icons.person_outline),

  google(apiLabel: 'google', label: 'Google', icon: Icons.g_mobiledata_rounded);

  final String apiLabel;
  final String label;
  final IconData icon;

  const UserType({
    required this.apiLabel,
    required this.label,
    required this.icon,
  });

  static UserType fromValue(String? value) {
    return UserType.values.firstWhere(
      (e) => e.apiLabel == value,
      orElse: () => UserType.guest,
    );
  }
}

enum FileTypes {
  all(
    apiLabel: '',
    label: 'All',
    icon: Icons.list,
    iconColor: AppColors.imageIcon,
  ),

  image(
    apiLabel: 'image',
    label: 'Image',
    icon: Icons.image_outlined,
    iconColor: AppColors.imageIcon,
  ),

  video(
    apiLabel: 'video',
    label: 'Video',
    icon: Icons.videocam,
    iconColor: AppColors.videoIcon,
  ),

  document(
    apiLabel: 'document',
    label: 'Document',
    icon: Icons.description_outlined,
    iconColor: AppColors.documentIcon,
  ),

  other(
    apiLabel: 'other',
    label: 'Other',
    icon: Icons.insert_drive_file_outlined,
    iconColor: AppColors.otherIcon,
  );

  final String apiLabel;
  final String label;
  final IconData icon;
  final Color iconColor;

  const FileTypes({
    required this.apiLabel,
    required this.label,
    required this.icon,
    required this.iconColor,
  });

  static FileTypes fromValue(String? value) {
    return FileTypes.values.firstWhere(
      (e) => e.apiLabel == value,
      orElse: () => FileTypes.other,
    );
  }
}

enum FileStatus {
  active(apiLabel: 'active', label: 'Active', icon: Icons.check_circle_outline),

  expired(
    apiLabel: 'expired',
    label: 'Expired',
    icon: Icons.access_time_outlined,
  ),

  deleted(apiLabel: 'deleted', label: 'Deleted', icon: Icons.delete_outline);

  final String apiLabel;
  final String label;
  final IconData icon;

  const FileStatus({
    required this.apiLabel,
    required this.label,
    required this.icon,
  });

  static FileStatus fromValue(String? value) {
    return FileStatus.values.firstWhere(
      (e) => e.apiLabel == value,
      orElse: () => FileStatus.active,
    );
  }

  bool get isActive => this == FileStatus.active;

  bool get isExpired => this == FileStatus.expired;

  bool get isDeleted => this == FileStatus.deleted;
}

enum FileProvider {
  cloudinary(
    apiLabel: 'cloudinary',
    label: 'Cloudinary',
    icon: Icons.cloud_outlined,
  ),

  cloudflare(
    apiLabel: 'cloudflare',
    label: 'Cloudflare',
    icon: Icons.security_outlined,
  );

  final String apiLabel;
  final String label;
  final IconData icon;

  const FileProvider({
    required this.apiLabel,
    required this.label,
    required this.icon,
  });

  static FileProvider fromValue(String? value) {
    return FileProvider.values.firstWhere(
      (e) => e.apiLabel == value,
      orElse: () => FileProvider.cloudflare,
    );
  }
}

enum DeviceType {
  desktop(apiLabel: 'desktop', label: 'Desktop', icon: Icons.computer),

  mobile(apiLabel: 'mobile', label: 'Mobile', icon: Icons.phone_android);

  final String apiLabel;
  final String label;
  final IconData icon;

  const DeviceType({
    required this.apiLabel,
    required this.label,
    required this.icon,
  });

  static DeviceType fromValue(String? value) {
    return DeviceType.values.firstWhere(
      (e) => e.apiLabel == value,
      orElse: () => DeviceType.desktop,
    );
  }
}

enum PairingStatus {
  pending(apiLabel: 'pending', label: 'Pending', icon: Icons.pending),

  active(apiLabel: 'active', label: 'Paired', icon: Icons.phone_android),

  expired(apiLabel: 'expired', label: 'Expired', icon: Icons.phone_android);

  final String apiLabel;
  final String label;
  final IconData icon;

  const PairingStatus({
    required this.apiLabel,
    required this.label,
    required this.icon,
  });

  static PairingStatus fromValue(String? value) {
    return PairingStatus.values.firstWhere(
      (e) => e.apiLabel == value,
      orElse: () => PairingStatus.pending,
    );
  }
}

enum SizeFormat {
  b(apiLabel: 'b', label: 'B', bytes: 1),

  kb(apiLabel: 'kb', label: 'KB', bytes: 1024),

  mb(apiLabel: 'mb', label: 'MB', bytes: 1024 * 1024),

  gb(apiLabel: 'gb', label: 'GB', bytes: 1024 * 1024 * 1024);

  final String apiLabel;
  final String label;
  final int bytes;

  const SizeFormat({
    required this.apiLabel,
    required this.label,
    required this.bytes,
  });

  static SizeFormat fromValue(String? value) {
    return SizeFormat.values.firstWhere(
      (e) => e.apiLabel == value,
      orElse: () => SizeFormat.b,
    );
  }
}

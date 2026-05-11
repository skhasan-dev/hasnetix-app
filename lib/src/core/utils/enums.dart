import 'package:flutter/material.dart';

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
  image(apiLabel: 'image', label: 'Image', icon: Icons.image_outlined),

  video(apiLabel: 'video', label: 'Video', icon: Icons.video_file_outlined),

  document(
    apiLabel: 'document',
    label: 'Document',
    icon: Icons.description_outlined,
  ),

  other(
    apiLabel: 'other',
    label: 'Other',
    icon: Icons.insert_drive_file_outlined,
  );

  final String apiLabel;
  final String label;
  final IconData icon;

  const FileTypes({
    required this.apiLabel,
    required this.label,
    required this.icon,
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

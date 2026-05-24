extension IntExt on int {
  double get toKb => this / 1024;

  double get toMb => this / (1024 * 1024);

  double get toGb => this / (1024 * 1024 * 1024);

  String get kbString => '${toKb.toStringAsFixed(2)} KB';

  String get mbString => '${toMb.toStringAsFixed(2)} MB';

  String get gbString => '${toGb.toStringAsFixed(2)} GB';

  String get formattedSize {
    if (this < 1024) {
      return '$this B';
    }

    if (this < 1024 * 1024) {
      return kbString;
    }

    if (this < 1024 * 1024 * 1024) {
      return mbString;
    }

    return gbString;
  }
}

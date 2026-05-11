import 'package:intl/intl.dart';

extension StringExt on String {
  DateTime? get toDate {
    if (isEmpty) return null;
    try {
      return DateTime.parse(this).toLocal();
    } catch (_) {
      try {
        return DateFormat("yyyy-MM-dd HH:mm:ss").parse(this, true).toLocal();
      } catch (_) {
        try {
          return DateFormat("dd/MM/yyyy").parse(this, true).toLocal();
        } catch (_) {
          return null;
        }
      }
    }
  }

  String get toRelativeTime {
    final date = toDate;
    if (date == null) return this; // fallback

    final now = DateTime.now();
    final diff = now.difference(date);

    if (diff.inSeconds < 60) return "now";
    if (diff.inMinutes < 60) return "${diff.inMinutes}m ago";
    if (diff.inHours < 24) return "${diff.inHours}h ago";
    if (diff.inDays < 7) return "${diff.inDays}d ago";

    final sameYearFormatter = DateFormat("d MMM");
    final diffYearFormatter = DateFormat("d MMM yyyy");

    return (date.year == now.year)
        ? sameYearFormatter.format(date)
        : diffYearFormatter.format(date);
  }
}

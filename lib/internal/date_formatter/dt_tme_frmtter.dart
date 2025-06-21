import 'package:intl/intl.dart';

class DateTimeFormatter {
  // ignore: unused_element
  String customDateTimeParser(DateTime dateTime) {
    final now = DateTime.now();
    final isSameYear = now.year == dateTime.year;

    if (isSameYear) {
      final isToday = now.day == dateTime.day && now.month == dateTime.month;
      if (isToday) {
        return DateFormat('hh:mm a').format(dateTime); // HH:MM AM/PM
      } else {
        return DateFormat('MMM dd, hh:mm a')
            .format(dateTime); // Jul 08, HH:MM AM/PM
      }
    } else {
      return DateFormat('MMM dd, yyyy').format(dateTime); // Jul 08, 2023
    }
  }
}




import 'package:intl/intl.dart';

/// Format date
class AppDate {
  /// Format date for the server
  /// E.g: 2022-05-30 04:05:00
  static String dateTime(DateTime dateTime) =>
      DateFormat('yyyy-MM-dd HH:mm:ss').format(dateTime);

  /// Format date day month year hour minute in letter
  /// E.g: 04 sept. 2022 14:01
  static String dateTimeLetter(DateTime dateTime, String language) =>
      DateFormat.yMMMd(language).add_jm().format(dateTime);

  /// Format date day month year hour minute in letter
  /// E.g: 14:01
  static String hour(DateTime dateTime, String language) =>
      DateFormat.Hm(language).format(dateTime);

  static String hourSecond(DateTime dateTime, String language) =>
      DateFormat.Hms(language).format(dateTime);

  /// Format date day letter day month year hour minute in letter
  /// E.g: lun. 04 sept. 2022 14:01
  static String dateTimeWithDay(DateTime dateTime,) =>
      DateFormat.yMMMEd().add_jm().format(
        dateTime,
      );

  /// Format date dayletter day month year hour minute in letter
  /// E.g: 04 sept. 2022
  static String dateTimeWithoutTime(DateTime dateTime, String language) =>
      DateFormat.yMMMd(language).format(
        dateTime,
      );
}
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

extension DateTimeExtension on BuildContext {
  String getMonthName(int index) {
    final intl.DateFormat format = intl.DateFormat.MMMM();
    final DateTime date = DateTime(
      0,
      index.clamp(1, 12),
    );
    return format.format(date);
  }
}

extension GetMonthNamesFromList on List<int> {
  List<String> months(BuildContext context) => map(
        (e) => context.getMonthName(e),
      ).toList();
}

extension GetMonthNameFromInt on int {
  String month(BuildContext context) => context.getMonthName(this);
}

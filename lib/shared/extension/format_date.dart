import 'package:intl/intl.dart';

extension FormatDate on DateTime {
  String format() {
    return DateFormat('dd-MM-yyyy').format(this);
  }
}

extension FormatTime on DateTime {
  String format() {
    return DateFormat('hh:mm').format(this);
  }
}

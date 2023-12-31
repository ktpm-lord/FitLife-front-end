import 'package:intl/intl.dart';

extension DoubleExtension on double {
  toCurrency() {
    return NumberFormat.simpleCurrency(name: 'VND', decimalDigits: 2)
        .format(this);
  }

  minMaxRequired(double min, double max) {
    if (this < min) {
      return min;
    } else if (this > max) {
      return max;
    }
    return this;
  }
}

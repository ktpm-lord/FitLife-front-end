import 'package:collection/collection.dart';

extension ListExtension<T> on List<T> {
  void removeExtensions(T data) {
    remove(data);
  }

  T elementByGoingAround(int index) {
    final finalIndex = index >= length ? index.remainder(length) : index;
    return this[finalIndex];
  }

  T findItem(bool Function(T) query) =>
      firstWhere((element) => query.call(element));

  List<T> operator -(List<T> other) =>
      where((element) => !other.contains(element)).toList();

  String get fromListLevelToText => "${mapIndexed((index, element) {
        if (index == length - 1) {
          return element;
        }
        return "$element ⚡";
      })}"
          .replaceAll('(', '')
          .replaceAll(')', '')
          .replaceAll(',', '');
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';

@freezed
class Pagination<T> with _$Pagination<T> {
  const factory Pagination({
    required List<T> items,
    @Default(0) int currentPage,
    @Default(0) int totalPage,
  }) = _Pagination<T>;
}

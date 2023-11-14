// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_more_plan_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewMorePlanData {
  String? get searchContent => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  Pagination<WorkoutPlan> get workoutPlans =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewMorePlanDataCopyWith<ViewMorePlanData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewMorePlanDataCopyWith<$Res> {
  factory $ViewMorePlanDataCopyWith(
          ViewMorePlanData value, $Res Function(ViewMorePlanData) then) =
      _$ViewMorePlanDataCopyWithImpl<$Res, ViewMorePlanData>;
  @useResult
  $Res call(
      {String? searchContent,
      DateTime? startDate,
      DateTime? endDate,
      Pagination<WorkoutPlan> workoutPlans});

  $PaginationCopyWith<WorkoutPlan, $Res> get workoutPlans;
}

/// @nodoc
class _$ViewMorePlanDataCopyWithImpl<$Res, $Val extends ViewMorePlanData>
    implements $ViewMorePlanDataCopyWith<$Res> {
  _$ViewMorePlanDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchContent = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? workoutPlans = null,
  }) {
    return _then(_value.copyWith(
      searchContent: freezed == searchContent
          ? _value.searchContent
          : searchContent // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      workoutPlans: null == workoutPlans
          ? _value.workoutPlans
          : workoutPlans // ignore: cast_nullable_to_non_nullable
              as Pagination<WorkoutPlan>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<WorkoutPlan, $Res> get workoutPlans {
    return $PaginationCopyWith<WorkoutPlan, $Res>(_value.workoutPlans, (value) {
      return _then(_value.copyWith(workoutPlans: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ViewMorePlanDataCopyWith<$Res>
    implements $ViewMorePlanDataCopyWith<$Res> {
  factory _$$_ViewMorePlanDataCopyWith(
          _$_ViewMorePlanData value, $Res Function(_$_ViewMorePlanData) then) =
      __$$_ViewMorePlanDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? searchContent,
      DateTime? startDate,
      DateTime? endDate,
      Pagination<WorkoutPlan> workoutPlans});

  @override
  $PaginationCopyWith<WorkoutPlan, $Res> get workoutPlans;
}

/// @nodoc
class __$$_ViewMorePlanDataCopyWithImpl<$Res>
    extends _$ViewMorePlanDataCopyWithImpl<$Res, _$_ViewMorePlanData>
    implements _$$_ViewMorePlanDataCopyWith<$Res> {
  __$$_ViewMorePlanDataCopyWithImpl(
      _$_ViewMorePlanData _value, $Res Function(_$_ViewMorePlanData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchContent = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? workoutPlans = null,
  }) {
    return _then(_$_ViewMorePlanData(
      searchContent: freezed == searchContent
          ? _value.searchContent
          : searchContent // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      workoutPlans: null == workoutPlans
          ? _value.workoutPlans
          : workoutPlans // ignore: cast_nullable_to_non_nullable
              as Pagination<WorkoutPlan>,
    ));
  }
}

/// @nodoc

class _$_ViewMorePlanData implements _ViewMorePlanData {
  const _$_ViewMorePlanData(
      {this.searchContent,
      this.startDate,
      this.endDate,
      required this.workoutPlans});

  @override
  final String? searchContent;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final Pagination<WorkoutPlan> workoutPlans;

  @override
  String toString() {
    return 'ViewMorePlanData(searchContent: $searchContent, startDate: $startDate, endDate: $endDate, workoutPlans: $workoutPlans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewMorePlanData &&
            (identical(other.searchContent, searchContent) ||
                other.searchContent == searchContent) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.workoutPlans, workoutPlans) ||
                other.workoutPlans == workoutPlans));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, searchContent, startDate, endDate, workoutPlans);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewMorePlanDataCopyWith<_$_ViewMorePlanData> get copyWith =>
      __$$_ViewMorePlanDataCopyWithImpl<_$_ViewMorePlanData>(this, _$identity);
}

abstract class _ViewMorePlanData implements ViewMorePlanData {
  const factory _ViewMorePlanData(
          {final String? searchContent,
          final DateTime? startDate,
          final DateTime? endDate,
          required final Pagination<WorkoutPlan> workoutPlans}) =
      _$_ViewMorePlanData;

  @override
  String? get searchContent;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  Pagination<WorkoutPlan> get workoutPlans;
  @override
  @JsonKey(ignore: true)
  _$$_ViewMorePlanDataCopyWith<_$_ViewMorePlanData> get copyWith =>
      throw _privateConstructorUsedError;
}

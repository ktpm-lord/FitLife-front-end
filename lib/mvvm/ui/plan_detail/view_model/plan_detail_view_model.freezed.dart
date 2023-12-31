// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_detail_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlanDetailState {
  PlanDetailData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlanDetailData data) initial,
    required TResult Function(PlanDetailData data) success,
    required TResult Function(PlanDetailData data) loading,
    required TResult Function(PlanDetailData data) getPlanDetailSuccess,
    required TResult Function(PlanDetailData data, String message)
        getPlanDetailFailed,
    required TResult Function(PlanDetailData data) addDailyWorkoutSuccess,
    required TResult Function(PlanDetailData data, String message)
        addDailyWorkoutFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlanDetailData data)? initial,
    TResult? Function(PlanDetailData data)? success,
    TResult? Function(PlanDetailData data)? loading,
    TResult? Function(PlanDetailData data)? getPlanDetailSuccess,
    TResult? Function(PlanDetailData data, String message)? getPlanDetailFailed,
    TResult? Function(PlanDetailData data)? addDailyWorkoutSuccess,
    TResult? Function(PlanDetailData data, String message)?
        addDailyWorkoutFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlanDetailData data)? initial,
    TResult Function(PlanDetailData data)? success,
    TResult Function(PlanDetailData data)? loading,
    TResult Function(PlanDetailData data)? getPlanDetailSuccess,
    TResult Function(PlanDetailData data, String message)? getPlanDetailFailed,
    TResult Function(PlanDetailData data)? addDailyWorkoutSuccess,
    TResult Function(PlanDetailData data, String message)?
        addDailyWorkoutFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetPlanDetailSuccess value) getPlanDetailSuccess,
    required TResult Function(_GetPlanDetailFailed value) getPlanDetailFailed,
    required TResult Function(_AddDailyWorkoutSuccess value)
        addDailyWorkoutSuccess,
    required TResult Function(_AddDailyWorkoutFailed value)
        addDailyWorkoutFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetPlanDetailSuccess value)? getPlanDetailSuccess,
    TResult? Function(_GetPlanDetailFailed value)? getPlanDetailFailed,
    TResult? Function(_AddDailyWorkoutSuccess value)? addDailyWorkoutSuccess,
    TResult? Function(_AddDailyWorkoutFailed value)? addDailyWorkoutFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetPlanDetailSuccess value)? getPlanDetailSuccess,
    TResult Function(_GetPlanDetailFailed value)? getPlanDetailFailed,
    TResult Function(_AddDailyWorkoutSuccess value)? addDailyWorkoutSuccess,
    TResult Function(_AddDailyWorkoutFailed value)? addDailyWorkoutFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlanDetailStateCopyWith<PlanDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanDetailStateCopyWith<$Res> {
  factory $PlanDetailStateCopyWith(
          PlanDetailState value, $Res Function(PlanDetailState) then) =
      _$PlanDetailStateCopyWithImpl<$Res, PlanDetailState>;
  @useResult
  $Res call({PlanDetailData data});

  $PlanDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PlanDetailStateCopyWithImpl<$Res, $Val extends PlanDetailState>
    implements $PlanDetailStateCopyWith<$Res> {
  _$PlanDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PlanDetailData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlanDetailDataCopyWith<$Res> get data {
    return $PlanDetailDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $PlanDetailStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlanDetailData data});

  @override
  $PlanDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PlanDetailStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Initial(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PlanDetailData,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.data});

  @override
  final PlanDetailData data;

  @override
  String toString() {
    return 'PlanDetailState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlanDetailData data) initial,
    required TResult Function(PlanDetailData data) success,
    required TResult Function(PlanDetailData data) loading,
    required TResult Function(PlanDetailData data) getPlanDetailSuccess,
    required TResult Function(PlanDetailData data, String message)
        getPlanDetailFailed,
    required TResult Function(PlanDetailData data) addDailyWorkoutSuccess,
    required TResult Function(PlanDetailData data, String message)
        addDailyWorkoutFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlanDetailData data)? initial,
    TResult? Function(PlanDetailData data)? success,
    TResult? Function(PlanDetailData data)? loading,
    TResult? Function(PlanDetailData data)? getPlanDetailSuccess,
    TResult? Function(PlanDetailData data, String message)? getPlanDetailFailed,
    TResult? Function(PlanDetailData data)? addDailyWorkoutSuccess,
    TResult? Function(PlanDetailData data, String message)?
        addDailyWorkoutFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlanDetailData data)? initial,
    TResult Function(PlanDetailData data)? success,
    TResult Function(PlanDetailData data)? loading,
    TResult Function(PlanDetailData data)? getPlanDetailSuccess,
    TResult Function(PlanDetailData data, String message)? getPlanDetailFailed,
    TResult Function(PlanDetailData data)? addDailyWorkoutSuccess,
    TResult Function(PlanDetailData data, String message)?
        addDailyWorkoutFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetPlanDetailSuccess value) getPlanDetailSuccess,
    required TResult Function(_GetPlanDetailFailed value) getPlanDetailFailed,
    required TResult Function(_AddDailyWorkoutSuccess value)
        addDailyWorkoutSuccess,
    required TResult Function(_AddDailyWorkoutFailed value)
        addDailyWorkoutFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetPlanDetailSuccess value)? getPlanDetailSuccess,
    TResult? Function(_GetPlanDetailFailed value)? getPlanDetailFailed,
    TResult? Function(_AddDailyWorkoutSuccess value)? addDailyWorkoutSuccess,
    TResult? Function(_AddDailyWorkoutFailed value)? addDailyWorkoutFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetPlanDetailSuccess value)? getPlanDetailSuccess,
    TResult Function(_GetPlanDetailFailed value)? getPlanDetailFailed,
    TResult Function(_AddDailyWorkoutSuccess value)? addDailyWorkoutSuccess,
    TResult Function(_AddDailyWorkoutFailed value)? addDailyWorkoutFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PlanDetailState {
  const factory _Initial({required final PlanDetailData data}) = _$_Initial;

  @override
  PlanDetailData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res>
    implements $PlanDetailStateCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlanDetailData data});

  @override
  $PlanDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$PlanDetailStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Success(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PlanDetailData,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.data});

  @override
  final PlanDetailData data;

  @override
  String toString() {
    return 'PlanDetailState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlanDetailData data) initial,
    required TResult Function(PlanDetailData data) success,
    required TResult Function(PlanDetailData data) loading,
    required TResult Function(PlanDetailData data) getPlanDetailSuccess,
    required TResult Function(PlanDetailData data, String message)
        getPlanDetailFailed,
    required TResult Function(PlanDetailData data) addDailyWorkoutSuccess,
    required TResult Function(PlanDetailData data, String message)
        addDailyWorkoutFailed,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlanDetailData data)? initial,
    TResult? Function(PlanDetailData data)? success,
    TResult? Function(PlanDetailData data)? loading,
    TResult? Function(PlanDetailData data)? getPlanDetailSuccess,
    TResult? Function(PlanDetailData data, String message)? getPlanDetailFailed,
    TResult? Function(PlanDetailData data)? addDailyWorkoutSuccess,
    TResult? Function(PlanDetailData data, String message)?
        addDailyWorkoutFailed,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlanDetailData data)? initial,
    TResult Function(PlanDetailData data)? success,
    TResult Function(PlanDetailData data)? loading,
    TResult Function(PlanDetailData data)? getPlanDetailSuccess,
    TResult Function(PlanDetailData data, String message)? getPlanDetailFailed,
    TResult Function(PlanDetailData data)? addDailyWorkoutSuccess,
    TResult Function(PlanDetailData data, String message)?
        addDailyWorkoutFailed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetPlanDetailSuccess value) getPlanDetailSuccess,
    required TResult Function(_GetPlanDetailFailed value) getPlanDetailFailed,
    required TResult Function(_AddDailyWorkoutSuccess value)
        addDailyWorkoutSuccess,
    required TResult Function(_AddDailyWorkoutFailed value)
        addDailyWorkoutFailed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetPlanDetailSuccess value)? getPlanDetailSuccess,
    TResult? Function(_GetPlanDetailFailed value)? getPlanDetailFailed,
    TResult? Function(_AddDailyWorkoutSuccess value)? addDailyWorkoutSuccess,
    TResult? Function(_AddDailyWorkoutFailed value)? addDailyWorkoutFailed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetPlanDetailSuccess value)? getPlanDetailSuccess,
    TResult Function(_GetPlanDetailFailed value)? getPlanDetailFailed,
    TResult Function(_AddDailyWorkoutSuccess value)? addDailyWorkoutSuccess,
    TResult Function(_AddDailyWorkoutFailed value)? addDailyWorkoutFailed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements PlanDetailState {
  const factory _Success({required final PlanDetailData data}) = _$_Success;

  @override
  PlanDetailData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $PlanDetailStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlanDetailData data});

  @override
  $PlanDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$PlanDetailStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Loading(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PlanDetailData,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required this.data});

  @override
  final PlanDetailData data;

  @override
  String toString() {
    return 'PlanDetailState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlanDetailData data) initial,
    required TResult Function(PlanDetailData data) success,
    required TResult Function(PlanDetailData data) loading,
    required TResult Function(PlanDetailData data) getPlanDetailSuccess,
    required TResult Function(PlanDetailData data, String message)
        getPlanDetailFailed,
    required TResult Function(PlanDetailData data) addDailyWorkoutSuccess,
    required TResult Function(PlanDetailData data, String message)
        addDailyWorkoutFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlanDetailData data)? initial,
    TResult? Function(PlanDetailData data)? success,
    TResult? Function(PlanDetailData data)? loading,
    TResult? Function(PlanDetailData data)? getPlanDetailSuccess,
    TResult? Function(PlanDetailData data, String message)? getPlanDetailFailed,
    TResult? Function(PlanDetailData data)? addDailyWorkoutSuccess,
    TResult? Function(PlanDetailData data, String message)?
        addDailyWorkoutFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlanDetailData data)? initial,
    TResult Function(PlanDetailData data)? success,
    TResult Function(PlanDetailData data)? loading,
    TResult Function(PlanDetailData data)? getPlanDetailSuccess,
    TResult Function(PlanDetailData data, String message)? getPlanDetailFailed,
    TResult Function(PlanDetailData data)? addDailyWorkoutSuccess,
    TResult Function(PlanDetailData data, String message)?
        addDailyWorkoutFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetPlanDetailSuccess value) getPlanDetailSuccess,
    required TResult Function(_GetPlanDetailFailed value) getPlanDetailFailed,
    required TResult Function(_AddDailyWorkoutSuccess value)
        addDailyWorkoutSuccess,
    required TResult Function(_AddDailyWorkoutFailed value)
        addDailyWorkoutFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetPlanDetailSuccess value)? getPlanDetailSuccess,
    TResult? Function(_GetPlanDetailFailed value)? getPlanDetailFailed,
    TResult? Function(_AddDailyWorkoutSuccess value)? addDailyWorkoutSuccess,
    TResult? Function(_AddDailyWorkoutFailed value)? addDailyWorkoutFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetPlanDetailSuccess value)? getPlanDetailSuccess,
    TResult Function(_GetPlanDetailFailed value)? getPlanDetailFailed,
    TResult Function(_AddDailyWorkoutSuccess value)? addDailyWorkoutSuccess,
    TResult Function(_AddDailyWorkoutFailed value)? addDailyWorkoutFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PlanDetailState {
  const factory _Loading({required final PlanDetailData data}) = _$_Loading;

  @override
  PlanDetailData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetPlanDetailSuccessCopyWith<$Res>
    implements $PlanDetailStateCopyWith<$Res> {
  factory _$$_GetPlanDetailSuccessCopyWith(_$_GetPlanDetailSuccess value,
          $Res Function(_$_GetPlanDetailSuccess) then) =
      __$$_GetPlanDetailSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlanDetailData data});

  @override
  $PlanDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetPlanDetailSuccessCopyWithImpl<$Res>
    extends _$PlanDetailStateCopyWithImpl<$Res, _$_GetPlanDetailSuccess>
    implements _$$_GetPlanDetailSuccessCopyWith<$Res> {
  __$$_GetPlanDetailSuccessCopyWithImpl(_$_GetPlanDetailSuccess _value,
      $Res Function(_$_GetPlanDetailSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetPlanDetailSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PlanDetailData,
    ));
  }
}

/// @nodoc

class _$_GetPlanDetailSuccess implements _GetPlanDetailSuccess {
  const _$_GetPlanDetailSuccess({required this.data});

  @override
  final PlanDetailData data;

  @override
  String toString() {
    return 'PlanDetailState.getPlanDetailSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPlanDetailSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPlanDetailSuccessCopyWith<_$_GetPlanDetailSuccess> get copyWith =>
      __$$_GetPlanDetailSuccessCopyWithImpl<_$_GetPlanDetailSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlanDetailData data) initial,
    required TResult Function(PlanDetailData data) success,
    required TResult Function(PlanDetailData data) loading,
    required TResult Function(PlanDetailData data) getPlanDetailSuccess,
    required TResult Function(PlanDetailData data, String message)
        getPlanDetailFailed,
    required TResult Function(PlanDetailData data) addDailyWorkoutSuccess,
    required TResult Function(PlanDetailData data, String message)
        addDailyWorkoutFailed,
  }) {
    return getPlanDetailSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlanDetailData data)? initial,
    TResult? Function(PlanDetailData data)? success,
    TResult? Function(PlanDetailData data)? loading,
    TResult? Function(PlanDetailData data)? getPlanDetailSuccess,
    TResult? Function(PlanDetailData data, String message)? getPlanDetailFailed,
    TResult? Function(PlanDetailData data)? addDailyWorkoutSuccess,
    TResult? Function(PlanDetailData data, String message)?
        addDailyWorkoutFailed,
  }) {
    return getPlanDetailSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlanDetailData data)? initial,
    TResult Function(PlanDetailData data)? success,
    TResult Function(PlanDetailData data)? loading,
    TResult Function(PlanDetailData data)? getPlanDetailSuccess,
    TResult Function(PlanDetailData data, String message)? getPlanDetailFailed,
    TResult Function(PlanDetailData data)? addDailyWorkoutSuccess,
    TResult Function(PlanDetailData data, String message)?
        addDailyWorkoutFailed,
    required TResult orElse(),
  }) {
    if (getPlanDetailSuccess != null) {
      return getPlanDetailSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetPlanDetailSuccess value) getPlanDetailSuccess,
    required TResult Function(_GetPlanDetailFailed value) getPlanDetailFailed,
    required TResult Function(_AddDailyWorkoutSuccess value)
        addDailyWorkoutSuccess,
    required TResult Function(_AddDailyWorkoutFailed value)
        addDailyWorkoutFailed,
  }) {
    return getPlanDetailSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetPlanDetailSuccess value)? getPlanDetailSuccess,
    TResult? Function(_GetPlanDetailFailed value)? getPlanDetailFailed,
    TResult? Function(_AddDailyWorkoutSuccess value)? addDailyWorkoutSuccess,
    TResult? Function(_AddDailyWorkoutFailed value)? addDailyWorkoutFailed,
  }) {
    return getPlanDetailSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetPlanDetailSuccess value)? getPlanDetailSuccess,
    TResult Function(_GetPlanDetailFailed value)? getPlanDetailFailed,
    TResult Function(_AddDailyWorkoutSuccess value)? addDailyWorkoutSuccess,
    TResult Function(_AddDailyWorkoutFailed value)? addDailyWorkoutFailed,
    required TResult orElse(),
  }) {
    if (getPlanDetailSuccess != null) {
      return getPlanDetailSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetPlanDetailSuccess implements PlanDetailState {
  const factory _GetPlanDetailSuccess({required final PlanDetailData data}) =
      _$_GetPlanDetailSuccess;

  @override
  PlanDetailData get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetPlanDetailSuccessCopyWith<_$_GetPlanDetailSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetPlanDetailFailedCopyWith<$Res>
    implements $PlanDetailStateCopyWith<$Res> {
  factory _$$_GetPlanDetailFailedCopyWith(_$_GetPlanDetailFailed value,
          $Res Function(_$_GetPlanDetailFailed) then) =
      __$$_GetPlanDetailFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlanDetailData data, String message});

  @override
  $PlanDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetPlanDetailFailedCopyWithImpl<$Res>
    extends _$PlanDetailStateCopyWithImpl<$Res, _$_GetPlanDetailFailed>
    implements _$$_GetPlanDetailFailedCopyWith<$Res> {
  __$$_GetPlanDetailFailedCopyWithImpl(_$_GetPlanDetailFailed _value,
      $Res Function(_$_GetPlanDetailFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetPlanDetailFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PlanDetailData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetPlanDetailFailed implements _GetPlanDetailFailed {
  const _$_GetPlanDetailFailed({required this.data, required this.message});

  @override
  final PlanDetailData data;
  @override
  final String message;

  @override
  String toString() {
    return 'PlanDetailState.getPlanDetailFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPlanDetailFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPlanDetailFailedCopyWith<_$_GetPlanDetailFailed> get copyWith =>
      __$$_GetPlanDetailFailedCopyWithImpl<_$_GetPlanDetailFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlanDetailData data) initial,
    required TResult Function(PlanDetailData data) success,
    required TResult Function(PlanDetailData data) loading,
    required TResult Function(PlanDetailData data) getPlanDetailSuccess,
    required TResult Function(PlanDetailData data, String message)
        getPlanDetailFailed,
    required TResult Function(PlanDetailData data) addDailyWorkoutSuccess,
    required TResult Function(PlanDetailData data, String message)
        addDailyWorkoutFailed,
  }) {
    return getPlanDetailFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlanDetailData data)? initial,
    TResult? Function(PlanDetailData data)? success,
    TResult? Function(PlanDetailData data)? loading,
    TResult? Function(PlanDetailData data)? getPlanDetailSuccess,
    TResult? Function(PlanDetailData data, String message)? getPlanDetailFailed,
    TResult? Function(PlanDetailData data)? addDailyWorkoutSuccess,
    TResult? Function(PlanDetailData data, String message)?
        addDailyWorkoutFailed,
  }) {
    return getPlanDetailFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlanDetailData data)? initial,
    TResult Function(PlanDetailData data)? success,
    TResult Function(PlanDetailData data)? loading,
    TResult Function(PlanDetailData data)? getPlanDetailSuccess,
    TResult Function(PlanDetailData data, String message)? getPlanDetailFailed,
    TResult Function(PlanDetailData data)? addDailyWorkoutSuccess,
    TResult Function(PlanDetailData data, String message)?
        addDailyWorkoutFailed,
    required TResult orElse(),
  }) {
    if (getPlanDetailFailed != null) {
      return getPlanDetailFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetPlanDetailSuccess value) getPlanDetailSuccess,
    required TResult Function(_GetPlanDetailFailed value) getPlanDetailFailed,
    required TResult Function(_AddDailyWorkoutSuccess value)
        addDailyWorkoutSuccess,
    required TResult Function(_AddDailyWorkoutFailed value)
        addDailyWorkoutFailed,
  }) {
    return getPlanDetailFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetPlanDetailSuccess value)? getPlanDetailSuccess,
    TResult? Function(_GetPlanDetailFailed value)? getPlanDetailFailed,
    TResult? Function(_AddDailyWorkoutSuccess value)? addDailyWorkoutSuccess,
    TResult? Function(_AddDailyWorkoutFailed value)? addDailyWorkoutFailed,
  }) {
    return getPlanDetailFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetPlanDetailSuccess value)? getPlanDetailSuccess,
    TResult Function(_GetPlanDetailFailed value)? getPlanDetailFailed,
    TResult Function(_AddDailyWorkoutSuccess value)? addDailyWorkoutSuccess,
    TResult Function(_AddDailyWorkoutFailed value)? addDailyWorkoutFailed,
    required TResult orElse(),
  }) {
    if (getPlanDetailFailed != null) {
      return getPlanDetailFailed(this);
    }
    return orElse();
  }
}

abstract class _GetPlanDetailFailed implements PlanDetailState {
  const factory _GetPlanDetailFailed(
      {required final PlanDetailData data,
      required final String message}) = _$_GetPlanDetailFailed;

  @override
  PlanDetailData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetPlanDetailFailedCopyWith<_$_GetPlanDetailFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddDailyWorkoutSuccessCopyWith<$Res>
    implements $PlanDetailStateCopyWith<$Res> {
  factory _$$_AddDailyWorkoutSuccessCopyWith(_$_AddDailyWorkoutSuccess value,
          $Res Function(_$_AddDailyWorkoutSuccess) then) =
      __$$_AddDailyWorkoutSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlanDetailData data});

  @override
  $PlanDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_AddDailyWorkoutSuccessCopyWithImpl<$Res>
    extends _$PlanDetailStateCopyWithImpl<$Res, _$_AddDailyWorkoutSuccess>
    implements _$$_AddDailyWorkoutSuccessCopyWith<$Res> {
  __$$_AddDailyWorkoutSuccessCopyWithImpl(_$_AddDailyWorkoutSuccess _value,
      $Res Function(_$_AddDailyWorkoutSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_AddDailyWorkoutSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PlanDetailData,
    ));
  }
}

/// @nodoc

class _$_AddDailyWorkoutSuccess implements _AddDailyWorkoutSuccess {
  const _$_AddDailyWorkoutSuccess({required this.data});

  @override
  final PlanDetailData data;

  @override
  String toString() {
    return 'PlanDetailState.addDailyWorkoutSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddDailyWorkoutSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddDailyWorkoutSuccessCopyWith<_$_AddDailyWorkoutSuccess> get copyWith =>
      __$$_AddDailyWorkoutSuccessCopyWithImpl<_$_AddDailyWorkoutSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlanDetailData data) initial,
    required TResult Function(PlanDetailData data) success,
    required TResult Function(PlanDetailData data) loading,
    required TResult Function(PlanDetailData data) getPlanDetailSuccess,
    required TResult Function(PlanDetailData data, String message)
        getPlanDetailFailed,
    required TResult Function(PlanDetailData data) addDailyWorkoutSuccess,
    required TResult Function(PlanDetailData data, String message)
        addDailyWorkoutFailed,
  }) {
    return addDailyWorkoutSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlanDetailData data)? initial,
    TResult? Function(PlanDetailData data)? success,
    TResult? Function(PlanDetailData data)? loading,
    TResult? Function(PlanDetailData data)? getPlanDetailSuccess,
    TResult? Function(PlanDetailData data, String message)? getPlanDetailFailed,
    TResult? Function(PlanDetailData data)? addDailyWorkoutSuccess,
    TResult? Function(PlanDetailData data, String message)?
        addDailyWorkoutFailed,
  }) {
    return addDailyWorkoutSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlanDetailData data)? initial,
    TResult Function(PlanDetailData data)? success,
    TResult Function(PlanDetailData data)? loading,
    TResult Function(PlanDetailData data)? getPlanDetailSuccess,
    TResult Function(PlanDetailData data, String message)? getPlanDetailFailed,
    TResult Function(PlanDetailData data)? addDailyWorkoutSuccess,
    TResult Function(PlanDetailData data, String message)?
        addDailyWorkoutFailed,
    required TResult orElse(),
  }) {
    if (addDailyWorkoutSuccess != null) {
      return addDailyWorkoutSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetPlanDetailSuccess value) getPlanDetailSuccess,
    required TResult Function(_GetPlanDetailFailed value) getPlanDetailFailed,
    required TResult Function(_AddDailyWorkoutSuccess value)
        addDailyWorkoutSuccess,
    required TResult Function(_AddDailyWorkoutFailed value)
        addDailyWorkoutFailed,
  }) {
    return addDailyWorkoutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetPlanDetailSuccess value)? getPlanDetailSuccess,
    TResult? Function(_GetPlanDetailFailed value)? getPlanDetailFailed,
    TResult? Function(_AddDailyWorkoutSuccess value)? addDailyWorkoutSuccess,
    TResult? Function(_AddDailyWorkoutFailed value)? addDailyWorkoutFailed,
  }) {
    return addDailyWorkoutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetPlanDetailSuccess value)? getPlanDetailSuccess,
    TResult Function(_GetPlanDetailFailed value)? getPlanDetailFailed,
    TResult Function(_AddDailyWorkoutSuccess value)? addDailyWorkoutSuccess,
    TResult Function(_AddDailyWorkoutFailed value)? addDailyWorkoutFailed,
    required TResult orElse(),
  }) {
    if (addDailyWorkoutSuccess != null) {
      return addDailyWorkoutSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddDailyWorkoutSuccess implements PlanDetailState {
  const factory _AddDailyWorkoutSuccess({required final PlanDetailData data}) =
      _$_AddDailyWorkoutSuccess;

  @override
  PlanDetailData get data;
  @override
  @JsonKey(ignore: true)
  _$$_AddDailyWorkoutSuccessCopyWith<_$_AddDailyWorkoutSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddDailyWorkoutFailedCopyWith<$Res>
    implements $PlanDetailStateCopyWith<$Res> {
  factory _$$_AddDailyWorkoutFailedCopyWith(_$_AddDailyWorkoutFailed value,
          $Res Function(_$_AddDailyWorkoutFailed) then) =
      __$$_AddDailyWorkoutFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlanDetailData data, String message});

  @override
  $PlanDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_AddDailyWorkoutFailedCopyWithImpl<$Res>
    extends _$PlanDetailStateCopyWithImpl<$Res, _$_AddDailyWorkoutFailed>
    implements _$$_AddDailyWorkoutFailedCopyWith<$Res> {
  __$$_AddDailyWorkoutFailedCopyWithImpl(_$_AddDailyWorkoutFailed _value,
      $Res Function(_$_AddDailyWorkoutFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_AddDailyWorkoutFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PlanDetailData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddDailyWorkoutFailed implements _AddDailyWorkoutFailed {
  const _$_AddDailyWorkoutFailed({required this.data, required this.message});

  @override
  final PlanDetailData data;
  @override
  final String message;

  @override
  String toString() {
    return 'PlanDetailState.addDailyWorkoutFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddDailyWorkoutFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddDailyWorkoutFailedCopyWith<_$_AddDailyWorkoutFailed> get copyWith =>
      __$$_AddDailyWorkoutFailedCopyWithImpl<_$_AddDailyWorkoutFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlanDetailData data) initial,
    required TResult Function(PlanDetailData data) success,
    required TResult Function(PlanDetailData data) loading,
    required TResult Function(PlanDetailData data) getPlanDetailSuccess,
    required TResult Function(PlanDetailData data, String message)
        getPlanDetailFailed,
    required TResult Function(PlanDetailData data) addDailyWorkoutSuccess,
    required TResult Function(PlanDetailData data, String message)
        addDailyWorkoutFailed,
  }) {
    return addDailyWorkoutFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlanDetailData data)? initial,
    TResult? Function(PlanDetailData data)? success,
    TResult? Function(PlanDetailData data)? loading,
    TResult? Function(PlanDetailData data)? getPlanDetailSuccess,
    TResult? Function(PlanDetailData data, String message)? getPlanDetailFailed,
    TResult? Function(PlanDetailData data)? addDailyWorkoutSuccess,
    TResult? Function(PlanDetailData data, String message)?
        addDailyWorkoutFailed,
  }) {
    return addDailyWorkoutFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlanDetailData data)? initial,
    TResult Function(PlanDetailData data)? success,
    TResult Function(PlanDetailData data)? loading,
    TResult Function(PlanDetailData data)? getPlanDetailSuccess,
    TResult Function(PlanDetailData data, String message)? getPlanDetailFailed,
    TResult Function(PlanDetailData data)? addDailyWorkoutSuccess,
    TResult Function(PlanDetailData data, String message)?
        addDailyWorkoutFailed,
    required TResult orElse(),
  }) {
    if (addDailyWorkoutFailed != null) {
      return addDailyWorkoutFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetPlanDetailSuccess value) getPlanDetailSuccess,
    required TResult Function(_GetPlanDetailFailed value) getPlanDetailFailed,
    required TResult Function(_AddDailyWorkoutSuccess value)
        addDailyWorkoutSuccess,
    required TResult Function(_AddDailyWorkoutFailed value)
        addDailyWorkoutFailed,
  }) {
    return addDailyWorkoutFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetPlanDetailSuccess value)? getPlanDetailSuccess,
    TResult? Function(_GetPlanDetailFailed value)? getPlanDetailFailed,
    TResult? Function(_AddDailyWorkoutSuccess value)? addDailyWorkoutSuccess,
    TResult? Function(_AddDailyWorkoutFailed value)? addDailyWorkoutFailed,
  }) {
    return addDailyWorkoutFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetPlanDetailSuccess value)? getPlanDetailSuccess,
    TResult Function(_GetPlanDetailFailed value)? getPlanDetailFailed,
    TResult Function(_AddDailyWorkoutSuccess value)? addDailyWorkoutSuccess,
    TResult Function(_AddDailyWorkoutFailed value)? addDailyWorkoutFailed,
    required TResult orElse(),
  }) {
    if (addDailyWorkoutFailed != null) {
      return addDailyWorkoutFailed(this);
    }
    return orElse();
  }
}

abstract class _AddDailyWorkoutFailed implements PlanDetailState {
  const factory _AddDailyWorkoutFailed(
      {required final PlanDetailData data,
      required final String message}) = _$_AddDailyWorkoutFailed;

  @override
  PlanDetailData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_AddDailyWorkoutFailedCopyWith<_$_AddDailyWorkoutFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

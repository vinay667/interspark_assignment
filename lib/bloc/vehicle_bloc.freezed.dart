// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VehicleStateTearOff {
  const _$VehicleStateTearOff();

  _VehicleState call(
      {bool isLoading = false,
      bool isLoadingPagination = false,
      String errorMsg = "",
      List<Data> list = const [],
      Data? empData,
      bool loadMoreData = true}) {
    return _VehicleState(
      isLoading: isLoading,
      isLoadingPagination: isLoadingPagination,
      errorMsg: errorMsg,
      list: list,
      empData: empData,
      loadMoreData: loadMoreData,
    );
  }
}

/// @nodoc
const $VehicleState = _$VehicleStateTearOff();

/// @nodoc
mixin _$VehicleState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingPagination => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;
  List<Data> get list => throw _privateConstructorUsedError;
  Data? get empData => throw _privateConstructorUsedError;
  bool get loadMoreData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleStateCopyWith<VehicleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleStateCopyWith<$Res> {
  factory $VehicleStateCopyWith(
          VehicleState value, $Res Function(VehicleState) then) =
      _$VehicleStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isLoadingPagination,
      String errorMsg,
      List<Data> list,
      Data? empData,
      bool loadMoreData});
}

/// @nodoc
class _$VehicleStateCopyWithImpl<$Res> implements $VehicleStateCopyWith<$Res> {
  _$VehicleStateCopyWithImpl(this._value, this._then);

  final VehicleState _value;
  // ignore: unused_field
  final $Res Function(VehicleState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isLoadingPagination = freezed,
    Object? errorMsg = freezed,
    Object? list = freezed,
    Object? empData = freezed,
    Object? loadMoreData = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingPagination: isLoadingPagination == freezed
          ? _value.isLoadingPagination
          : isLoadingPagination // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      empData: empData == freezed
          ? _value.empData
          : empData // ignore: cast_nullable_to_non_nullable
              as Data?,
      loadMoreData: loadMoreData == freezed
          ? _value.loadMoreData
          : loadMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$VehicleStateCopyWith<$Res>
    implements $VehicleStateCopyWith<$Res> {
  factory _$VehicleStateCopyWith(
          _VehicleState value, $Res Function(_VehicleState) then) =
      __$VehicleStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isLoadingPagination,
      String errorMsg,
      List<Data> list,
      Data? empData,
      bool loadMoreData});
}

/// @nodoc
class __$VehicleStateCopyWithImpl<$Res> extends _$VehicleStateCopyWithImpl<$Res>
    implements _$VehicleStateCopyWith<$Res> {
  __$VehicleStateCopyWithImpl(
      _VehicleState _value, $Res Function(_VehicleState) _then)
      : super(_value, (v) => _then(v as _VehicleState));

  @override
  _VehicleState get _value => super._value as _VehicleState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isLoadingPagination = freezed,
    Object? errorMsg = freezed,
    Object? list = freezed,
    Object? empData = freezed,
    Object? loadMoreData = freezed,
  }) {
    return _then(_VehicleState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingPagination: isLoadingPagination == freezed
          ? _value.isLoadingPagination
          : isLoadingPagination // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      empData: empData == freezed
          ? _value.empData
          : empData // ignore: cast_nullable_to_non_nullable
              as Data?,
      loadMoreData: loadMoreData == freezed
          ? _value.loadMoreData
          : loadMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VehicleState implements _VehicleState {
  const _$_VehicleState(
      {this.isLoading = false,
      this.isLoadingPagination = false,
      this.errorMsg = "",
      this.list = const [],
      this.empData,
      this.loadMoreData = true});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool isLoadingPagination;
  @JsonKey()
  @override
  final String errorMsg;
  @JsonKey()
  @override
  final List<Data> list;
  @override
  final Data? empData;
  @JsonKey()
  @override
  final bool loadMoreData;

  @override
  String toString() {
    return 'VehicleState(isLoading: $isLoading, isLoadingPagination: $isLoadingPagination, errorMsg: $errorMsg, list: $list, empData: $empData, loadMoreData: $loadMoreData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VehicleState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isLoadingPagination, isLoadingPagination) &&
            const DeepCollectionEquality().equals(other.errorMsg, errorMsg) &&
            const DeepCollectionEquality().equals(other.list, list) &&
            const DeepCollectionEquality().equals(other.empData, empData) &&
            const DeepCollectionEquality()
                .equals(other.loadMoreData, loadMoreData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isLoadingPagination),
      const DeepCollectionEquality().hash(errorMsg),
      const DeepCollectionEquality().hash(list),
      const DeepCollectionEquality().hash(empData),
      const DeepCollectionEquality().hash(loadMoreData));

  @JsonKey(ignore: true)
  @override
  _$VehicleStateCopyWith<_VehicleState> get copyWith =>
      __$VehicleStateCopyWithImpl<_VehicleState>(this, _$identity);
}

abstract class _VehicleState implements VehicleState {
  const factory _VehicleState(
      {bool isLoading,
      bool isLoadingPagination,
      String errorMsg,
      List<Data> list,
      Data? empData,
      bool loadMoreData}) = _$_VehicleState;

  @override
  bool get isLoading;
  @override
  bool get isLoadingPagination;
  @override
  String get errorMsg;
  @override
  List<Data> get list;
  @override
  Data? get empData;
  @override
  bool get loadMoreData;
  @override
  @JsonKey(ignore: true)
  _$VehicleStateCopyWith<_VehicleState> get copyWith =>
      throw _privateConstructorUsedError;
}

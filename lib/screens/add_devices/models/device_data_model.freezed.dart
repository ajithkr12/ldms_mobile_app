// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeviceDataModel {
  String? get id => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  String? get deviceName => throw _privateConstructorUsedError;
  DateTime? get implementDate => throw _privateConstructorUsedError;
  String? get deviceType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceDataModelCopyWith<DeviceDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDataModelCopyWith<$Res> {
  factory $DeviceDataModelCopyWith(
          DeviceDataModel value, $Res Function(DeviceDataModel) then) =
      _$DeviceDataModelCopyWithImpl<$Res, DeviceDataModel>;
  @useResult
  $Res call(
      {String? id,
      String? serialNumber,
      String? deviceName,
      DateTime? implementDate,
      String? deviceType});
}

/// @nodoc
class _$DeviceDataModelCopyWithImpl<$Res, $Val extends DeviceDataModel>
    implements $DeviceDataModelCopyWith<$Res> {
  _$DeviceDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? serialNumber = freezed,
    Object? deviceName = freezed,
    Object? implementDate = freezed,
    Object? deviceType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      implementDate: freezed == implementDate
          ? _value.implementDate
          : implementDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deviceType: freezed == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceDataModelImplCopyWith<$Res>
    implements $DeviceDataModelCopyWith<$Res> {
  factory _$$DeviceDataModelImplCopyWith(_$DeviceDataModelImpl value,
          $Res Function(_$DeviceDataModelImpl) then) =
      __$$DeviceDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? serialNumber,
      String? deviceName,
      DateTime? implementDate,
      String? deviceType});
}

/// @nodoc
class __$$DeviceDataModelImplCopyWithImpl<$Res>
    extends _$DeviceDataModelCopyWithImpl<$Res, _$DeviceDataModelImpl>
    implements _$$DeviceDataModelImplCopyWith<$Res> {
  __$$DeviceDataModelImplCopyWithImpl(
      _$DeviceDataModelImpl _value, $Res Function(_$DeviceDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? serialNumber = freezed,
    Object? deviceName = freezed,
    Object? implementDate = freezed,
    Object? deviceType = freezed,
  }) {
    return _then(_$DeviceDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      implementDate: freezed == implementDate
          ? _value.implementDate
          : implementDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deviceType: freezed == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeviceDataModelImpl implements _DeviceDataModel {
  _$DeviceDataModelImpl(
      {this.id,
      this.serialNumber,
      this.deviceName,
      this.implementDate,
      this.deviceType});

  @override
  final String? id;
  @override
  final String? serialNumber;
  @override
  final String? deviceName;
  @override
  final DateTime? implementDate;
  @override
  final String? deviceType;

  @override
  String toString() {
    return 'DeviceDataModel(id: $id, serialNumber: $serialNumber, deviceName: $deviceName, implementDate: $implementDate, deviceType: $deviceType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.implementDate, implementDate) ||
                other.implementDate == implementDate) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, serialNumber, deviceName, implementDate, deviceType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceDataModelImplCopyWith<_$DeviceDataModelImpl> get copyWith =>
      __$$DeviceDataModelImplCopyWithImpl<_$DeviceDataModelImpl>(
          this, _$identity);
}

abstract class _DeviceDataModel implements DeviceDataModel {
  factory _DeviceDataModel(
      {final String? id,
      final String? serialNumber,
      final String? deviceName,
      final DateTime? implementDate,
      final String? deviceType}) = _$DeviceDataModelImpl;

  @override
  String? get id;
  @override
  String? get serialNumber;
  @override
  String? get deviceName;
  @override
  DateTime? get implementDate;
  @override
  String? get deviceType;
  @override
  @JsonKey(ignore: true)
  _$$DeviceDataModelImplCopyWith<_$DeviceDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ResponseModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResponseModelCopyWith<ResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseModelCopyWith<$Res> {
  factory $ResponseModelCopyWith(
          ResponseModel value, $Res Function(ResponseModel) then) =
      _$ResponseModelCopyWithImpl<$Res, ResponseModel>;
  @useResult
  $Res call({bool? success, String? message});
}

/// @nodoc
class _$ResponseModelCopyWithImpl<$Res, $Val extends ResponseModel>
    implements $ResponseModelCopyWith<$Res> {
  _$ResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseModelImplCopyWith<$Res>
    implements $ResponseModelCopyWith<$Res> {
  factory _$$ResponseModelImplCopyWith(
          _$ResponseModelImpl value, $Res Function(_$ResponseModelImpl) then) =
      __$$ResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message});
}

/// @nodoc
class __$$ResponseModelImplCopyWithImpl<$Res>
    extends _$ResponseModelCopyWithImpl<$Res, _$ResponseModelImpl>
    implements _$$ResponseModelImplCopyWith<$Res> {
  __$$ResponseModelImplCopyWithImpl(
      _$ResponseModelImpl _value, $Res Function(_$ResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ResponseModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ResponseModelImpl implements _ResponseModel {
  _$ResponseModelImpl({this.success, this.message});

  @override
  final bool? success;
  @override
  final String? message;

  @override
  String toString() {
    return 'ResponseModel(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseModelImplCopyWith<_$ResponseModelImpl> get copyWith =>
      __$$ResponseModelImplCopyWithImpl<_$ResponseModelImpl>(this, _$identity);
}

abstract class _ResponseModel implements ResponseModel {
  factory _ResponseModel({final bool? success, final String? message}) =
      _$ResponseModelImpl;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ResponseModelImplCopyWith<_$ResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderDataModel {
  String? get id => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  DateTime? get orderDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderDataModelCopyWith<OrderDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDataModelCopyWith<$Res> {
  factory $OrderDataModelCopyWith(
          OrderDataModel value, $Res Function(OrderDataModel) then) =
      _$OrderDataModelCopyWithImpl<$Res, OrderDataModel>;
  @useResult
  $Res call({String? id, String? deviceId, DateTime? orderDate});
}

/// @nodoc
class _$OrderDataModelCopyWithImpl<$Res, $Val extends OrderDataModel>
    implements $OrderDataModelCopyWith<$Res> {
  _$OrderDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? deviceId = freezed,
    Object? orderDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDataModelImplCopyWith<$Res>
    implements $OrderDataModelCopyWith<$Res> {
  factory _$$OrderDataModelImplCopyWith(_$OrderDataModelImpl value,
          $Res Function(_$OrderDataModelImpl) then) =
      __$$OrderDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? deviceId, DateTime? orderDate});
}

/// @nodoc
class __$$OrderDataModelImplCopyWithImpl<$Res>
    extends _$OrderDataModelCopyWithImpl<$Res, _$OrderDataModelImpl>
    implements _$$OrderDataModelImplCopyWith<$Res> {
  __$$OrderDataModelImplCopyWithImpl(
      _$OrderDataModelImpl _value, $Res Function(_$OrderDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? deviceId = freezed,
    Object? orderDate = freezed,
  }) {
    return _then(_$OrderDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$OrderDataModelImpl implements _OrderDataModel {
  _$OrderDataModelImpl({this.id, this.deviceId, this.orderDate});

  @override
  final String? id;
  @override
  final String? deviceId;
  @override
  final DateTime? orderDate;

  @override
  String toString() {
    return 'OrderDataModel(id: $id, deviceId: $deviceId, orderDate: $orderDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, deviceId, orderDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDataModelImplCopyWith<_$OrderDataModelImpl> get copyWith =>
      __$$OrderDataModelImplCopyWithImpl<_$OrderDataModelImpl>(
          this, _$identity);
}

abstract class _OrderDataModel implements OrderDataModel {
  factory _OrderDataModel(
      {final String? id,
      final String? deviceId,
      final DateTime? orderDate}) = _$OrderDataModelImpl;

  @override
  String? get id;
  @override
  String? get deviceId;
  @override
  DateTime? get orderDate;
  @override
  @JsonKey(ignore: true)
  _$$OrderDataModelImplCopyWith<_$OrderDataModelImpl> get copyWith =>
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

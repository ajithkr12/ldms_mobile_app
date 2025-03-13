// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setLoading,
    required TResult Function() submitOrderDetails,
    required TResult Function(DateTime orderDate) onChangeOrderDate,
    required TResult Function(String deviceId) onChangeResourceId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setLoading,
    TResult? Function()? submitOrderDetails,
    TResult? Function(DateTime orderDate)? onChangeOrderDate,
    TResult? Function(String deviceId)? onChangeResourceId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setLoading,
    TResult Function()? submitOrderDetails,
    TResult Function(DateTime orderDate)? onChangeOrderDate,
    TResult Function(String deviceId)? onChangeResourceId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SetLoading value) setLoading,
    required TResult Function(SubmitOrderDetails value) submitOrderDetails,
    required TResult Function(OnChangeOrderDate value) onChangeOrderDate,
    required TResult Function(OnChangeResourceId value) onChangeResourceId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SetLoading value)? setLoading,
    TResult? Function(SubmitOrderDetails value)? submitOrderDetails,
    TResult? Function(OnChangeOrderDate value)? onChangeOrderDate,
    TResult? Function(OnChangeResourceId value)? onChangeResourceId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetLoading value)? setLoading,
    TResult Function(SubmitOrderDetails value)? submitOrderDetails,
    TResult Function(OnChangeOrderDate value)? onChangeOrderDate,
    TResult Function(OnChangeResourceId value)? onChangeResourceId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryEventCopyWith<$Res> {
  factory $OrderHistoryEventCopyWith(
          OrderHistoryEvent value, $Res Function(OrderHistoryEvent) then) =
      _$OrderHistoryEventCopyWithImpl<$Res, OrderHistoryEvent>;
}

/// @nodoc
class _$OrderHistoryEventCopyWithImpl<$Res, $Val extends OrderHistoryEvent>
    implements $OrderHistoryEventCopyWith<$Res> {
  _$OrderHistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$OrderHistoryEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'OrderHistoryEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setLoading,
    required TResult Function() submitOrderDetails,
    required TResult Function(DateTime orderDate) onChangeOrderDate,
    required TResult Function(String deviceId) onChangeResourceId,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setLoading,
    TResult? Function()? submitOrderDetails,
    TResult? Function(DateTime orderDate)? onChangeOrderDate,
    TResult? Function(String deviceId)? onChangeResourceId,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setLoading,
    TResult Function()? submitOrderDetails,
    TResult Function(DateTime orderDate)? onChangeOrderDate,
    TResult Function(String deviceId)? onChangeResourceId,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SetLoading value) setLoading,
    required TResult Function(SubmitOrderDetails value) submitOrderDetails,
    required TResult Function(OnChangeOrderDate value) onChangeOrderDate,
    required TResult Function(OnChangeResourceId value) onChangeResourceId,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SetLoading value)? setLoading,
    TResult? Function(SubmitOrderDetails value)? submitOrderDetails,
    TResult? Function(OnChangeOrderDate value)? onChangeOrderDate,
    TResult? Function(OnChangeResourceId value)? onChangeResourceId,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetLoading value)? setLoading,
    TResult Function(SubmitOrderDetails value)? submitOrderDetails,
    TResult Function(OnChangeOrderDate value)? onChangeOrderDate,
    TResult Function(OnChangeResourceId value)? onChangeResourceId,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OrderHistoryEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SetLoadingImplCopyWith<$Res> {
  factory _$$SetLoadingImplCopyWith(
          _$SetLoadingImpl value, $Res Function(_$SetLoadingImpl) then) =
      __$$SetLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetLoadingImplCopyWithImpl<$Res>
    extends _$OrderHistoryEventCopyWithImpl<$Res, _$SetLoadingImpl>
    implements _$$SetLoadingImplCopyWith<$Res> {
  __$$SetLoadingImplCopyWithImpl(
      _$SetLoadingImpl _value, $Res Function(_$SetLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetLoadingImpl implements SetLoading {
  _$SetLoadingImpl();

  @override
  String toString() {
    return 'OrderHistoryEvent.setLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setLoading,
    required TResult Function() submitOrderDetails,
    required TResult Function(DateTime orderDate) onChangeOrderDate,
    required TResult Function(String deviceId) onChangeResourceId,
  }) {
    return setLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setLoading,
    TResult? Function()? submitOrderDetails,
    TResult? Function(DateTime orderDate)? onChangeOrderDate,
    TResult? Function(String deviceId)? onChangeResourceId,
  }) {
    return setLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setLoading,
    TResult Function()? submitOrderDetails,
    TResult Function(DateTime orderDate)? onChangeOrderDate,
    TResult Function(String deviceId)? onChangeResourceId,
    required TResult orElse(),
  }) {
    if (setLoading != null) {
      return setLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SetLoading value) setLoading,
    required TResult Function(SubmitOrderDetails value) submitOrderDetails,
    required TResult Function(OnChangeOrderDate value) onChangeOrderDate,
    required TResult Function(OnChangeResourceId value) onChangeResourceId,
  }) {
    return setLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SetLoading value)? setLoading,
    TResult? Function(SubmitOrderDetails value)? submitOrderDetails,
    TResult? Function(OnChangeOrderDate value)? onChangeOrderDate,
    TResult? Function(OnChangeResourceId value)? onChangeResourceId,
  }) {
    return setLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetLoading value)? setLoading,
    TResult Function(SubmitOrderDetails value)? submitOrderDetails,
    TResult Function(OnChangeOrderDate value)? onChangeOrderDate,
    TResult Function(OnChangeResourceId value)? onChangeResourceId,
    required TResult orElse(),
  }) {
    if (setLoading != null) {
      return setLoading(this);
    }
    return orElse();
  }
}

abstract class SetLoading implements OrderHistoryEvent {
  factory SetLoading() = _$SetLoadingImpl;
}

/// @nodoc
abstract class _$$SubmitOrderDetailsImplCopyWith<$Res> {
  factory _$$SubmitOrderDetailsImplCopyWith(_$SubmitOrderDetailsImpl value,
          $Res Function(_$SubmitOrderDetailsImpl) then) =
      __$$SubmitOrderDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitOrderDetailsImplCopyWithImpl<$Res>
    extends _$OrderHistoryEventCopyWithImpl<$Res, _$SubmitOrderDetailsImpl>
    implements _$$SubmitOrderDetailsImplCopyWith<$Res> {
  __$$SubmitOrderDetailsImplCopyWithImpl(_$SubmitOrderDetailsImpl _value,
      $Res Function(_$SubmitOrderDetailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitOrderDetailsImpl implements SubmitOrderDetails {
  _$SubmitOrderDetailsImpl();

  @override
  String toString() {
    return 'OrderHistoryEvent.submitOrderDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitOrderDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setLoading,
    required TResult Function() submitOrderDetails,
    required TResult Function(DateTime orderDate) onChangeOrderDate,
    required TResult Function(String deviceId) onChangeResourceId,
  }) {
    return submitOrderDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setLoading,
    TResult? Function()? submitOrderDetails,
    TResult? Function(DateTime orderDate)? onChangeOrderDate,
    TResult? Function(String deviceId)? onChangeResourceId,
  }) {
    return submitOrderDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setLoading,
    TResult Function()? submitOrderDetails,
    TResult Function(DateTime orderDate)? onChangeOrderDate,
    TResult Function(String deviceId)? onChangeResourceId,
    required TResult orElse(),
  }) {
    if (submitOrderDetails != null) {
      return submitOrderDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SetLoading value) setLoading,
    required TResult Function(SubmitOrderDetails value) submitOrderDetails,
    required TResult Function(OnChangeOrderDate value) onChangeOrderDate,
    required TResult Function(OnChangeResourceId value) onChangeResourceId,
  }) {
    return submitOrderDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SetLoading value)? setLoading,
    TResult? Function(SubmitOrderDetails value)? submitOrderDetails,
    TResult? Function(OnChangeOrderDate value)? onChangeOrderDate,
    TResult? Function(OnChangeResourceId value)? onChangeResourceId,
  }) {
    return submitOrderDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetLoading value)? setLoading,
    TResult Function(SubmitOrderDetails value)? submitOrderDetails,
    TResult Function(OnChangeOrderDate value)? onChangeOrderDate,
    TResult Function(OnChangeResourceId value)? onChangeResourceId,
    required TResult orElse(),
  }) {
    if (submitOrderDetails != null) {
      return submitOrderDetails(this);
    }
    return orElse();
  }
}

abstract class SubmitOrderDetails implements OrderHistoryEvent {
  factory SubmitOrderDetails() = _$SubmitOrderDetailsImpl;
}

/// @nodoc
abstract class _$$OnChangeOrderDateImplCopyWith<$Res> {
  factory _$$OnChangeOrderDateImplCopyWith(_$OnChangeOrderDateImpl value,
          $Res Function(_$OnChangeOrderDateImpl) then) =
      __$$OnChangeOrderDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime orderDate});
}

/// @nodoc
class __$$OnChangeOrderDateImplCopyWithImpl<$Res>
    extends _$OrderHistoryEventCopyWithImpl<$Res, _$OnChangeOrderDateImpl>
    implements _$$OnChangeOrderDateImplCopyWith<$Res> {
  __$$OnChangeOrderDateImplCopyWithImpl(_$OnChangeOrderDateImpl _value,
      $Res Function(_$OnChangeOrderDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDate = null,
  }) {
    return _then(_$OnChangeOrderDateImpl(
      null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$OnChangeOrderDateImpl implements OnChangeOrderDate {
  _$OnChangeOrderDateImpl(this.orderDate);

  @override
  final DateTime orderDate;

  @override
  String toString() {
    return 'OrderHistoryEvent.onChangeOrderDate(orderDate: $orderDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangeOrderDateImpl &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangeOrderDateImplCopyWith<_$OnChangeOrderDateImpl> get copyWith =>
      __$$OnChangeOrderDateImplCopyWithImpl<_$OnChangeOrderDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setLoading,
    required TResult Function() submitOrderDetails,
    required TResult Function(DateTime orderDate) onChangeOrderDate,
    required TResult Function(String deviceId) onChangeResourceId,
  }) {
    return onChangeOrderDate(orderDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setLoading,
    TResult? Function()? submitOrderDetails,
    TResult? Function(DateTime orderDate)? onChangeOrderDate,
    TResult? Function(String deviceId)? onChangeResourceId,
  }) {
    return onChangeOrderDate?.call(orderDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setLoading,
    TResult Function()? submitOrderDetails,
    TResult Function(DateTime orderDate)? onChangeOrderDate,
    TResult Function(String deviceId)? onChangeResourceId,
    required TResult orElse(),
  }) {
    if (onChangeOrderDate != null) {
      return onChangeOrderDate(orderDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SetLoading value) setLoading,
    required TResult Function(SubmitOrderDetails value) submitOrderDetails,
    required TResult Function(OnChangeOrderDate value) onChangeOrderDate,
    required TResult Function(OnChangeResourceId value) onChangeResourceId,
  }) {
    return onChangeOrderDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SetLoading value)? setLoading,
    TResult? Function(SubmitOrderDetails value)? submitOrderDetails,
    TResult? Function(OnChangeOrderDate value)? onChangeOrderDate,
    TResult? Function(OnChangeResourceId value)? onChangeResourceId,
  }) {
    return onChangeOrderDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetLoading value)? setLoading,
    TResult Function(SubmitOrderDetails value)? submitOrderDetails,
    TResult Function(OnChangeOrderDate value)? onChangeOrderDate,
    TResult Function(OnChangeResourceId value)? onChangeResourceId,
    required TResult orElse(),
  }) {
    if (onChangeOrderDate != null) {
      return onChangeOrderDate(this);
    }
    return orElse();
  }
}

abstract class OnChangeOrderDate implements OrderHistoryEvent {
  factory OnChangeOrderDate(final DateTime orderDate) = _$OnChangeOrderDateImpl;

  DateTime get orderDate;
  @JsonKey(ignore: true)
  _$$OnChangeOrderDateImplCopyWith<_$OnChangeOrderDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnChangeResourceIdImplCopyWith<$Res> {
  factory _$$OnChangeResourceIdImplCopyWith(_$OnChangeResourceIdImpl value,
          $Res Function(_$OnChangeResourceIdImpl) then) =
      __$$OnChangeResourceIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String deviceId});
}

/// @nodoc
class __$$OnChangeResourceIdImplCopyWithImpl<$Res>
    extends _$OrderHistoryEventCopyWithImpl<$Res, _$OnChangeResourceIdImpl>
    implements _$$OnChangeResourceIdImplCopyWith<$Res> {
  __$$OnChangeResourceIdImplCopyWithImpl(_$OnChangeResourceIdImpl _value,
      $Res Function(_$OnChangeResourceIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
  }) {
    return _then(_$OnChangeResourceIdImpl(
      null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnChangeResourceIdImpl implements OnChangeResourceId {
  _$OnChangeResourceIdImpl(this.deviceId);

  @override
  final String deviceId;

  @override
  String toString() {
    return 'OrderHistoryEvent.onChangeResourceId(deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangeResourceIdImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangeResourceIdImplCopyWith<_$OnChangeResourceIdImpl> get copyWith =>
      __$$OnChangeResourceIdImplCopyWithImpl<_$OnChangeResourceIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setLoading,
    required TResult Function() submitOrderDetails,
    required TResult Function(DateTime orderDate) onChangeOrderDate,
    required TResult Function(String deviceId) onChangeResourceId,
  }) {
    return onChangeResourceId(deviceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setLoading,
    TResult? Function()? submitOrderDetails,
    TResult? Function(DateTime orderDate)? onChangeOrderDate,
    TResult? Function(String deviceId)? onChangeResourceId,
  }) {
    return onChangeResourceId?.call(deviceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setLoading,
    TResult Function()? submitOrderDetails,
    TResult Function(DateTime orderDate)? onChangeOrderDate,
    TResult Function(String deviceId)? onChangeResourceId,
    required TResult orElse(),
  }) {
    if (onChangeResourceId != null) {
      return onChangeResourceId(deviceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SetLoading value) setLoading,
    required TResult Function(SubmitOrderDetails value) submitOrderDetails,
    required TResult Function(OnChangeOrderDate value) onChangeOrderDate,
    required TResult Function(OnChangeResourceId value) onChangeResourceId,
  }) {
    return onChangeResourceId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SetLoading value)? setLoading,
    TResult? Function(SubmitOrderDetails value)? submitOrderDetails,
    TResult? Function(OnChangeOrderDate value)? onChangeOrderDate,
    TResult? Function(OnChangeResourceId value)? onChangeResourceId,
  }) {
    return onChangeResourceId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetLoading value)? setLoading,
    TResult Function(SubmitOrderDetails value)? submitOrderDetails,
    TResult Function(OnChangeOrderDate value)? onChangeOrderDate,
    TResult Function(OnChangeResourceId value)? onChangeResourceId,
    required TResult orElse(),
  }) {
    if (onChangeResourceId != null) {
      return onChangeResourceId(this);
    }
    return orElse();
  }
}

abstract class OnChangeResourceId implements OrderHistoryEvent {
  factory OnChangeResourceId(final String deviceId) = _$OnChangeResourceIdImpl;

  String get deviceId;
  @JsonKey(ignore: true)
  _$$OnChangeResourceIdImplCopyWith<_$OnChangeResourceIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderHistoryState {
  ResponseModel get submitStatus => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  bool get isSubmitted => throw _privateConstructorUsedError;
  OrderModel? get placeOrderData => throw _privateConstructorUsedError;
  List<OrderModel>? get orderHistoryList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderHistoryStateCopyWith<OrderHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryStateCopyWith<$Res> {
  factory $OrderHistoryStateCopyWith(
          OrderHistoryState value, $Res Function(OrderHistoryState) then) =
      _$OrderHistoryStateCopyWithImpl<$Res, OrderHistoryState>;
  @useResult
  $Res call(
      {ResponseModel submitStatus,
      bool isLoading,
      bool isLoaded,
      bool isSubmitted,
      OrderModel? placeOrderData,
      List<OrderModel>? orderHistoryList});

  $ResponseModelCopyWith<$Res> get submitStatus;
}

/// @nodoc
class _$OrderHistoryStateCopyWithImpl<$Res, $Val extends OrderHistoryState>
    implements $OrderHistoryStateCopyWith<$Res> {
  _$OrderHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitStatus = null,
    Object? isLoading = null,
    Object? isLoaded = null,
    Object? isSubmitted = null,
    Object? placeOrderData = freezed,
    Object? orderHistoryList = freezed,
  }) {
    return _then(_value.copyWith(
      submitStatus: null == submitStatus
          ? _value.submitStatus
          : submitStatus // ignore: cast_nullable_to_non_nullable
              as ResponseModel,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitted: null == isSubmitted
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      placeOrderData: freezed == placeOrderData
          ? _value.placeOrderData
          : placeOrderData // ignore: cast_nullable_to_non_nullable
              as OrderModel?,
      orderHistoryList: freezed == orderHistoryList
          ? _value.orderHistoryList
          : orderHistoryList // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<$Res> get submitStatus {
    return $ResponseModelCopyWith<$Res>(_value.submitStatus, (value) {
      return _then(_value.copyWith(submitStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderHistoryStateImplCopyWith<$Res>
    implements $OrderHistoryStateCopyWith<$Res> {
  factory _$$OrderHistoryStateImplCopyWith(_$OrderHistoryStateImpl value,
          $Res Function(_$OrderHistoryStateImpl) then) =
      __$$OrderHistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseModel submitStatus,
      bool isLoading,
      bool isLoaded,
      bool isSubmitted,
      OrderModel? placeOrderData,
      List<OrderModel>? orderHistoryList});

  @override
  $ResponseModelCopyWith<$Res> get submitStatus;
}

/// @nodoc
class __$$OrderHistoryStateImplCopyWithImpl<$Res>
    extends _$OrderHistoryStateCopyWithImpl<$Res, _$OrderHistoryStateImpl>
    implements _$$OrderHistoryStateImplCopyWith<$Res> {
  __$$OrderHistoryStateImplCopyWithImpl(_$OrderHistoryStateImpl _value,
      $Res Function(_$OrderHistoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitStatus = null,
    Object? isLoading = null,
    Object? isLoaded = null,
    Object? isSubmitted = null,
    Object? placeOrderData = freezed,
    Object? orderHistoryList = freezed,
  }) {
    return _then(_$OrderHistoryStateImpl(
      submitStatus: null == submitStatus
          ? _value.submitStatus
          : submitStatus // ignore: cast_nullable_to_non_nullable
              as ResponseModel,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitted: null == isSubmitted
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      placeOrderData: freezed == placeOrderData
          ? _value.placeOrderData
          : placeOrderData // ignore: cast_nullable_to_non_nullable
              as OrderModel?,
      orderHistoryList: freezed == orderHistoryList
          ? _value._orderHistoryList
          : orderHistoryList // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
    ));
  }
}

/// @nodoc

class _$OrderHistoryStateImpl implements _OrderHistoryState {
  _$OrderHistoryStateImpl(
      {required this.submitStatus,
      required this.isLoading,
      required this.isLoaded,
      required this.isSubmitted,
      this.placeOrderData,
      final List<OrderModel>? orderHistoryList})
      : _orderHistoryList = orderHistoryList;

  @override
  final ResponseModel submitStatus;
  @override
  final bool isLoading;
  @override
  final bool isLoaded;
  @override
  final bool isSubmitted;
  @override
  final OrderModel? placeOrderData;
  final List<OrderModel>? _orderHistoryList;
  @override
  List<OrderModel>? get orderHistoryList {
    final value = _orderHistoryList;
    if (value == null) return null;
    if (_orderHistoryList is EqualUnmodifiableListView)
      return _orderHistoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderHistoryState(submitStatus: $submitStatus, isLoading: $isLoading, isLoaded: $isLoaded, isSubmitted: $isSubmitted, placeOrderData: $placeOrderData, orderHistoryList: $orderHistoryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderHistoryStateImpl &&
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            (identical(other.isSubmitted, isSubmitted) ||
                other.isSubmitted == isSubmitted) &&
            (identical(other.placeOrderData, placeOrderData) ||
                other.placeOrderData == placeOrderData) &&
            const DeepCollectionEquality()
                .equals(other._orderHistoryList, _orderHistoryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      submitStatus,
      isLoading,
      isLoaded,
      isSubmitted,
      placeOrderData,
      const DeepCollectionEquality().hash(_orderHistoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderHistoryStateImplCopyWith<_$OrderHistoryStateImpl> get copyWith =>
      __$$OrderHistoryStateImplCopyWithImpl<_$OrderHistoryStateImpl>(
          this, _$identity);
}

abstract class _OrderHistoryState implements OrderHistoryState {
  factory _OrderHistoryState(
      {required final ResponseModel submitStatus,
      required final bool isLoading,
      required final bool isLoaded,
      required final bool isSubmitted,
      final OrderModel? placeOrderData,
      final List<OrderModel>? orderHistoryList}) = _$OrderHistoryStateImpl;

  @override
  ResponseModel get submitStatus;
  @override
  bool get isLoading;
  @override
  bool get isLoaded;
  @override
  bool get isSubmitted;
  @override
  OrderModel? get placeOrderData;
  @override
  List<OrderModel>? get orderHistoryList;
  @override
  @JsonKey(ignore: true)
  _$$OrderHistoryStateImplCopyWith<_$OrderHistoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

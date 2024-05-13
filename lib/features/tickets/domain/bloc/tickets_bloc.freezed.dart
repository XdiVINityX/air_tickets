// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String query) inputDestinationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String query)? inputDestinationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String query)? inputDestinationChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsEvent$Initial value) initial,
    required TResult Function(TicketsEvent$Loading value) loading,
    required TResult Function(InputDestination$Changed value)
        inputDestinationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsEvent$Initial value)? initial,
    TResult? Function(TicketsEvent$Loading value)? loading,
    TResult? Function(InputDestination$Changed value)? inputDestinationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsEvent$Initial value)? initial,
    TResult Function(TicketsEvent$Loading value)? loading,
    TResult Function(InputDestination$Changed value)? inputDestinationChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsEventCopyWith<$Res> {
  factory $TicketsEventCopyWith(
          TicketsEvent value, $Res Function(TicketsEvent) then) =
      _$TicketsEventCopyWithImpl<$Res, TicketsEvent>;
}

/// @nodoc
class _$TicketsEventCopyWithImpl<$Res, $Val extends TicketsEvent>
    implements $TicketsEventCopyWith<$Res> {
  _$TicketsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TicketsEvent$InitialImplCopyWith<$Res> {
  factory _$$TicketsEvent$InitialImplCopyWith(_$TicketsEvent$InitialImpl value,
          $Res Function(_$TicketsEvent$InitialImpl) then) =
      __$$TicketsEvent$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketsEvent$InitialImplCopyWithImpl<$Res>
    extends _$TicketsEventCopyWithImpl<$Res, _$TicketsEvent$InitialImpl>
    implements _$$TicketsEvent$InitialImplCopyWith<$Res> {
  __$$TicketsEvent$InitialImplCopyWithImpl(_$TicketsEvent$InitialImpl _value,
      $Res Function(_$TicketsEvent$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketsEvent$InitialImpl implements TicketsEvent$Initial {
  const _$TicketsEvent$InitialImpl();

  @override
  String toString() {
    return 'TicketsEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsEvent$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String query) inputDestinationChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String query)? inputDestinationChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String query)? inputDestinationChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsEvent$Initial value) initial,
    required TResult Function(TicketsEvent$Loading value) loading,
    required TResult Function(InputDestination$Changed value)
        inputDestinationChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsEvent$Initial value)? initial,
    TResult? Function(TicketsEvent$Loading value)? loading,
    TResult? Function(InputDestination$Changed value)? inputDestinationChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsEvent$Initial value)? initial,
    TResult Function(TicketsEvent$Loading value)? loading,
    TResult Function(InputDestination$Changed value)? inputDestinationChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TicketsEvent$Initial implements TicketsEvent {
  const factory TicketsEvent$Initial() = _$TicketsEvent$InitialImpl;
}

/// @nodoc
abstract class _$$TicketsEvent$LoadingImplCopyWith<$Res> {
  factory _$$TicketsEvent$LoadingImplCopyWith(_$TicketsEvent$LoadingImpl value,
          $Res Function(_$TicketsEvent$LoadingImpl) then) =
      __$$TicketsEvent$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketsEvent$LoadingImplCopyWithImpl<$Res>
    extends _$TicketsEventCopyWithImpl<$Res, _$TicketsEvent$LoadingImpl>
    implements _$$TicketsEvent$LoadingImplCopyWith<$Res> {
  __$$TicketsEvent$LoadingImplCopyWithImpl(_$TicketsEvent$LoadingImpl _value,
      $Res Function(_$TicketsEvent$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketsEvent$LoadingImpl implements TicketsEvent$Loading {
  const _$TicketsEvent$LoadingImpl();

  @override
  String toString() {
    return 'TicketsEvent.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsEvent$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String query) inputDestinationChanged,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String query)? inputDestinationChanged,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String query)? inputDestinationChanged,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsEvent$Initial value) initial,
    required TResult Function(TicketsEvent$Loading value) loading,
    required TResult Function(InputDestination$Changed value)
        inputDestinationChanged,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsEvent$Initial value)? initial,
    TResult? Function(TicketsEvent$Loading value)? loading,
    TResult? Function(InputDestination$Changed value)? inputDestinationChanged,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsEvent$Initial value)? initial,
    TResult Function(TicketsEvent$Loading value)? loading,
    TResult Function(InputDestination$Changed value)? inputDestinationChanged,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TicketsEvent$Loading implements TicketsEvent {
  const factory TicketsEvent$Loading() = _$TicketsEvent$LoadingImpl;
}

/// @nodoc
abstract class _$$InputDestination$ChangedImplCopyWith<$Res> {
  factory _$$InputDestination$ChangedImplCopyWith(
          _$InputDestination$ChangedImpl value,
          $Res Function(_$InputDestination$ChangedImpl) then) =
      __$$InputDestination$ChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$InputDestination$ChangedImplCopyWithImpl<$Res>
    extends _$TicketsEventCopyWithImpl<$Res, _$InputDestination$ChangedImpl>
    implements _$$InputDestination$ChangedImplCopyWith<$Res> {
  __$$InputDestination$ChangedImplCopyWithImpl(
      _$InputDestination$ChangedImpl _value,
      $Res Function(_$InputDestination$ChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$InputDestination$ChangedImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InputDestination$ChangedImpl implements InputDestination$Changed {
  const _$InputDestination$ChangedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'TicketsEvent.inputDestinationChanged(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputDestination$ChangedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputDestination$ChangedImplCopyWith<_$InputDestination$ChangedImpl>
      get copyWith => __$$InputDestination$ChangedImplCopyWithImpl<
          _$InputDestination$ChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String query) inputDestinationChanged,
  }) {
    return inputDestinationChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String query)? inputDestinationChanged,
  }) {
    return inputDestinationChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String query)? inputDestinationChanged,
    required TResult orElse(),
  }) {
    if (inputDestinationChanged != null) {
      return inputDestinationChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsEvent$Initial value) initial,
    required TResult Function(TicketsEvent$Loading value) loading,
    required TResult Function(InputDestination$Changed value)
        inputDestinationChanged,
  }) {
    return inputDestinationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsEvent$Initial value)? initial,
    TResult? Function(TicketsEvent$Loading value)? loading,
    TResult? Function(InputDestination$Changed value)? inputDestinationChanged,
  }) {
    return inputDestinationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsEvent$Initial value)? initial,
    TResult Function(TicketsEvent$Loading value)? loading,
    TResult Function(InputDestination$Changed value)? inputDestinationChanged,
    required TResult orElse(),
  }) {
    if (inputDestinationChanged != null) {
      return inputDestinationChanged(this);
    }
    return orElse();
  }
}

abstract class InputDestination$Changed implements TicketsEvent {
  const factory InputDestination$Changed(final String query) =
      _$InputDestination$ChangedImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$InputDestination$ChangedImplCopyWith<_$InputDestination$ChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicketsState {
  List<Offer> get offers => throw _privateConstructorUsedError;
  String? get queryDestination => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Offer> offers, String? queryDestination)
        initial,
    required TResult Function(List<Offer> offers, String? queryDestination)
        loading,
    required TResult Function(List<Offer> offers, String? queryDestination)
        loadingSuccess,
    required TResult Function(
            List<Offer> offers, String? queryDestination, String message)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Offer> offers, String? queryDestination)? initial,
    TResult? Function(List<Offer> offers, String? queryDestination)? loading,
    TResult? Function(List<Offer> offers, String? queryDestination)?
        loadingSuccess,
    TResult? Function(
            List<Offer> offers, String? queryDestination, String message)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Offer> offers, String? queryDestination)? initial,
    TResult Function(List<Offer> offers, String? queryDestination)? loading,
    TResult Function(List<Offer> offers, String? queryDestination)?
        loadingSuccess,
    TResult Function(
            List<Offer> offers, String? queryDestination, String message)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsState$Initial value) initial,
    required TResult Function(TicketsState$Loading value) loading,
    required TResult Function(TicketsState$loadingSuccess value) loadingSuccess,
    required TResult Function(TicketsState$Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsState$Initial value)? initial,
    TResult? Function(TicketsState$Loading value)? loading,
    TResult? Function(TicketsState$loadingSuccess value)? loadingSuccess,
    TResult? Function(TicketsState$Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsState$Initial value)? initial,
    TResult Function(TicketsState$Loading value)? loading,
    TResult Function(TicketsState$loadingSuccess value)? loadingSuccess,
    TResult Function(TicketsState$Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketsStateCopyWith<TicketsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsStateCopyWith<$Res> {
  factory $TicketsStateCopyWith(
          TicketsState value, $Res Function(TicketsState) then) =
      _$TicketsStateCopyWithImpl<$Res, TicketsState>;
  @useResult
  $Res call({List<Offer> offers, String? queryDestination});
}

/// @nodoc
class _$TicketsStateCopyWithImpl<$Res, $Val extends TicketsState>
    implements $TicketsStateCopyWith<$Res> {
  _$TicketsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = null,
    Object? queryDestination = freezed,
  }) {
    return _then(_value.copyWith(
      offers: null == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      queryDestination: freezed == queryDestination
          ? _value.queryDestination
          : queryDestination // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketsState$InitialImplCopyWith<$Res>
    implements $TicketsStateCopyWith<$Res> {
  factory _$$TicketsState$InitialImplCopyWith(_$TicketsState$InitialImpl value,
          $Res Function(_$TicketsState$InitialImpl) then) =
      __$$TicketsState$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Offer> offers, String? queryDestination});
}

/// @nodoc
class __$$TicketsState$InitialImplCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$TicketsState$InitialImpl>
    implements _$$TicketsState$InitialImplCopyWith<$Res> {
  __$$TicketsState$InitialImplCopyWithImpl(_$TicketsState$InitialImpl _value,
      $Res Function(_$TicketsState$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = null,
    Object? queryDestination = freezed,
  }) {
    return _then(_$TicketsState$InitialImpl(
      offers: null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      queryDestination: freezed == queryDestination
          ? _value.queryDestination
          : queryDestination // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TicketsState$InitialImpl implements TicketsState$Initial {
  const _$TicketsState$InitialImpl(
      {final List<Offer> offers = const [], this.queryDestination = ''})
      : _offers = offers;

  final List<Offer> _offers;
  @override
  @JsonKey()
  List<Offer> get offers {
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  @override
  @JsonKey()
  final String? queryDestination;

  @override
  String toString() {
    return 'TicketsState.initial(offers: $offers, queryDestination: $queryDestination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsState$InitialImpl &&
            const DeepCollectionEquality().equals(other._offers, _offers) &&
            (identical(other.queryDestination, queryDestination) ||
                other.queryDestination == queryDestination));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_offers), queryDestination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketsState$InitialImplCopyWith<_$TicketsState$InitialImpl>
      get copyWith =>
          __$$TicketsState$InitialImplCopyWithImpl<_$TicketsState$InitialImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Offer> offers, String? queryDestination)
        initial,
    required TResult Function(List<Offer> offers, String? queryDestination)
        loading,
    required TResult Function(List<Offer> offers, String? queryDestination)
        loadingSuccess,
    required TResult Function(
            List<Offer> offers, String? queryDestination, String message)
        error,
  }) {
    return initial(offers, queryDestination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Offer> offers, String? queryDestination)? initial,
    TResult? Function(List<Offer> offers, String? queryDestination)? loading,
    TResult? Function(List<Offer> offers, String? queryDestination)?
        loadingSuccess,
    TResult? Function(
            List<Offer> offers, String? queryDestination, String message)?
        error,
  }) {
    return initial?.call(offers, queryDestination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Offer> offers, String? queryDestination)? initial,
    TResult Function(List<Offer> offers, String? queryDestination)? loading,
    TResult Function(List<Offer> offers, String? queryDestination)?
        loadingSuccess,
    TResult Function(
            List<Offer> offers, String? queryDestination, String message)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(offers, queryDestination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsState$Initial value) initial,
    required TResult Function(TicketsState$Loading value) loading,
    required TResult Function(TicketsState$loadingSuccess value) loadingSuccess,
    required TResult Function(TicketsState$Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsState$Initial value)? initial,
    TResult? Function(TicketsState$Loading value)? loading,
    TResult? Function(TicketsState$loadingSuccess value)? loadingSuccess,
    TResult? Function(TicketsState$Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsState$Initial value)? initial,
    TResult Function(TicketsState$Loading value)? loading,
    TResult Function(TicketsState$loadingSuccess value)? loadingSuccess,
    TResult Function(TicketsState$Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TicketsState$Initial implements TicketsState {
  const factory TicketsState$Initial(
      {final List<Offer> offers,
      final String? queryDestination}) = _$TicketsState$InitialImpl;

  @override
  List<Offer> get offers;
  @override
  String? get queryDestination;
  @override
  @JsonKey(ignore: true)
  _$$TicketsState$InitialImplCopyWith<_$TicketsState$InitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketsState$LoadingImplCopyWith<$Res>
    implements $TicketsStateCopyWith<$Res> {
  factory _$$TicketsState$LoadingImplCopyWith(_$TicketsState$LoadingImpl value,
          $Res Function(_$TicketsState$LoadingImpl) then) =
      __$$TicketsState$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Offer> offers, String? queryDestination});
}

/// @nodoc
class __$$TicketsState$LoadingImplCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$TicketsState$LoadingImpl>
    implements _$$TicketsState$LoadingImplCopyWith<$Res> {
  __$$TicketsState$LoadingImplCopyWithImpl(_$TicketsState$LoadingImpl _value,
      $Res Function(_$TicketsState$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = null,
    Object? queryDestination = freezed,
  }) {
    return _then(_$TicketsState$LoadingImpl(
      offers: null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      queryDestination: freezed == queryDestination
          ? _value.queryDestination
          : queryDestination // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TicketsState$LoadingImpl implements TicketsState$Loading {
  const _$TicketsState$LoadingImpl(
      {final List<Offer> offers = const [], this.queryDestination = ''})
      : _offers = offers;

  final List<Offer> _offers;
  @override
  @JsonKey()
  List<Offer> get offers {
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  @override
  @JsonKey()
  final String? queryDestination;

  @override
  String toString() {
    return 'TicketsState.loading(offers: $offers, queryDestination: $queryDestination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsState$LoadingImpl &&
            const DeepCollectionEquality().equals(other._offers, _offers) &&
            (identical(other.queryDestination, queryDestination) ||
                other.queryDestination == queryDestination));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_offers), queryDestination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketsState$LoadingImplCopyWith<_$TicketsState$LoadingImpl>
      get copyWith =>
          __$$TicketsState$LoadingImplCopyWithImpl<_$TicketsState$LoadingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Offer> offers, String? queryDestination)
        initial,
    required TResult Function(List<Offer> offers, String? queryDestination)
        loading,
    required TResult Function(List<Offer> offers, String? queryDestination)
        loadingSuccess,
    required TResult Function(
            List<Offer> offers, String? queryDestination, String message)
        error,
  }) {
    return loading(offers, queryDestination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Offer> offers, String? queryDestination)? initial,
    TResult? Function(List<Offer> offers, String? queryDestination)? loading,
    TResult? Function(List<Offer> offers, String? queryDestination)?
        loadingSuccess,
    TResult? Function(
            List<Offer> offers, String? queryDestination, String message)?
        error,
  }) {
    return loading?.call(offers, queryDestination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Offer> offers, String? queryDestination)? initial,
    TResult Function(List<Offer> offers, String? queryDestination)? loading,
    TResult Function(List<Offer> offers, String? queryDestination)?
        loadingSuccess,
    TResult Function(
            List<Offer> offers, String? queryDestination, String message)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(offers, queryDestination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsState$Initial value) initial,
    required TResult Function(TicketsState$Loading value) loading,
    required TResult Function(TicketsState$loadingSuccess value) loadingSuccess,
    required TResult Function(TicketsState$Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsState$Initial value)? initial,
    TResult? Function(TicketsState$Loading value)? loading,
    TResult? Function(TicketsState$loadingSuccess value)? loadingSuccess,
    TResult? Function(TicketsState$Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsState$Initial value)? initial,
    TResult Function(TicketsState$Loading value)? loading,
    TResult Function(TicketsState$loadingSuccess value)? loadingSuccess,
    TResult Function(TicketsState$Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TicketsState$Loading implements TicketsState {
  const factory TicketsState$Loading(
      {final List<Offer> offers,
      final String? queryDestination}) = _$TicketsState$LoadingImpl;

  @override
  List<Offer> get offers;
  @override
  String? get queryDestination;
  @override
  @JsonKey(ignore: true)
  _$$TicketsState$LoadingImplCopyWith<_$TicketsState$LoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketsState$loadingSuccessImplCopyWith<$Res>
    implements $TicketsStateCopyWith<$Res> {
  factory _$$TicketsState$loadingSuccessImplCopyWith(
          _$TicketsState$loadingSuccessImpl value,
          $Res Function(_$TicketsState$loadingSuccessImpl) then) =
      __$$TicketsState$loadingSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Offer> offers, String? queryDestination});
}

/// @nodoc
class __$$TicketsState$loadingSuccessImplCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$TicketsState$loadingSuccessImpl>
    implements _$$TicketsState$loadingSuccessImplCopyWith<$Res> {
  __$$TicketsState$loadingSuccessImplCopyWithImpl(
      _$TicketsState$loadingSuccessImpl _value,
      $Res Function(_$TicketsState$loadingSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = null,
    Object? queryDestination = freezed,
  }) {
    return _then(_$TicketsState$loadingSuccessImpl(
      offers: null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      queryDestination: freezed == queryDestination
          ? _value.queryDestination
          : queryDestination // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TicketsState$loadingSuccessImpl implements TicketsState$loadingSuccess {
  const _$TicketsState$loadingSuccessImpl(
      {required final List<Offer> offers, this.queryDestination = ''})
      : _offers = offers;

  final List<Offer> _offers;
  @override
  List<Offer> get offers {
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  @override
  @JsonKey()
  final String? queryDestination;

  @override
  String toString() {
    return 'TicketsState.loadingSuccess(offers: $offers, queryDestination: $queryDestination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsState$loadingSuccessImpl &&
            const DeepCollectionEquality().equals(other._offers, _offers) &&
            (identical(other.queryDestination, queryDestination) ||
                other.queryDestination == queryDestination));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_offers), queryDestination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketsState$loadingSuccessImplCopyWith<_$TicketsState$loadingSuccessImpl>
      get copyWith => __$$TicketsState$loadingSuccessImplCopyWithImpl<
          _$TicketsState$loadingSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Offer> offers, String? queryDestination)
        initial,
    required TResult Function(List<Offer> offers, String? queryDestination)
        loading,
    required TResult Function(List<Offer> offers, String? queryDestination)
        loadingSuccess,
    required TResult Function(
            List<Offer> offers, String? queryDestination, String message)
        error,
  }) {
    return loadingSuccess(offers, queryDestination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Offer> offers, String? queryDestination)? initial,
    TResult? Function(List<Offer> offers, String? queryDestination)? loading,
    TResult? Function(List<Offer> offers, String? queryDestination)?
        loadingSuccess,
    TResult? Function(
            List<Offer> offers, String? queryDestination, String message)?
        error,
  }) {
    return loadingSuccess?.call(offers, queryDestination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Offer> offers, String? queryDestination)? initial,
    TResult Function(List<Offer> offers, String? queryDestination)? loading,
    TResult Function(List<Offer> offers, String? queryDestination)?
        loadingSuccess,
    TResult Function(
            List<Offer> offers, String? queryDestination, String message)?
        error,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(offers, queryDestination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsState$Initial value) initial,
    required TResult Function(TicketsState$Loading value) loading,
    required TResult Function(TicketsState$loadingSuccess value) loadingSuccess,
    required TResult Function(TicketsState$Error value) error,
  }) {
    return loadingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsState$Initial value)? initial,
    TResult? Function(TicketsState$Loading value)? loading,
    TResult? Function(TicketsState$loadingSuccess value)? loadingSuccess,
    TResult? Function(TicketsState$Error value)? error,
  }) {
    return loadingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsState$Initial value)? initial,
    TResult Function(TicketsState$Loading value)? loading,
    TResult Function(TicketsState$loadingSuccess value)? loadingSuccess,
    TResult Function(TicketsState$Error value)? error,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(this);
    }
    return orElse();
  }
}

abstract class TicketsState$loadingSuccess implements TicketsState {
  const factory TicketsState$loadingSuccess(
      {required final List<Offer> offers,
      final String? queryDestination}) = _$TicketsState$loadingSuccessImpl;

  @override
  List<Offer> get offers;
  @override
  String? get queryDestination;
  @override
  @JsonKey(ignore: true)
  _$$TicketsState$loadingSuccessImplCopyWith<_$TicketsState$loadingSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketsState$ErrorImplCopyWith<$Res>
    implements $TicketsStateCopyWith<$Res> {
  factory _$$TicketsState$ErrorImplCopyWith(_$TicketsState$ErrorImpl value,
          $Res Function(_$TicketsState$ErrorImpl) then) =
      __$$TicketsState$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Offer> offers, String? queryDestination, String message});
}

/// @nodoc
class __$$TicketsState$ErrorImplCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$TicketsState$ErrorImpl>
    implements _$$TicketsState$ErrorImplCopyWith<$Res> {
  __$$TicketsState$ErrorImplCopyWithImpl(_$TicketsState$ErrorImpl _value,
      $Res Function(_$TicketsState$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = null,
    Object? queryDestination = freezed,
    Object? message = null,
  }) {
    return _then(_$TicketsState$ErrorImpl(
      offers: null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      queryDestination: freezed == queryDestination
          ? _value.queryDestination
          : queryDestination // ignore: cast_nullable_to_non_nullable
              as String?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TicketsState$ErrorImpl implements TicketsState$Error {
  const _$TicketsState$ErrorImpl(
      {final List<Offer> offers = const [],
      this.queryDestination = '',
      required this.message})
      : _offers = offers;

  final List<Offer> _offers;
  @override
  @JsonKey()
  List<Offer> get offers {
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  @override
  @JsonKey()
  final String? queryDestination;
  @override
  final String message;

  @override
  String toString() {
    return 'TicketsState.error(offers: $offers, queryDestination: $queryDestination, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsState$ErrorImpl &&
            const DeepCollectionEquality().equals(other._offers, _offers) &&
            (identical(other.queryDestination, queryDestination) ||
                other.queryDestination == queryDestination) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_offers), queryDestination, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketsState$ErrorImplCopyWith<_$TicketsState$ErrorImpl> get copyWith =>
      __$$TicketsState$ErrorImplCopyWithImpl<_$TicketsState$ErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Offer> offers, String? queryDestination)
        initial,
    required TResult Function(List<Offer> offers, String? queryDestination)
        loading,
    required TResult Function(List<Offer> offers, String? queryDestination)
        loadingSuccess,
    required TResult Function(
            List<Offer> offers, String? queryDestination, String message)
        error,
  }) {
    return error(offers, queryDestination, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Offer> offers, String? queryDestination)? initial,
    TResult? Function(List<Offer> offers, String? queryDestination)? loading,
    TResult? Function(List<Offer> offers, String? queryDestination)?
        loadingSuccess,
    TResult? Function(
            List<Offer> offers, String? queryDestination, String message)?
        error,
  }) {
    return error?.call(offers, queryDestination, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Offer> offers, String? queryDestination)? initial,
    TResult Function(List<Offer> offers, String? queryDestination)? loading,
    TResult Function(List<Offer> offers, String? queryDestination)?
        loadingSuccess,
    TResult Function(
            List<Offer> offers, String? queryDestination, String message)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(offers, queryDestination, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsState$Initial value) initial,
    required TResult Function(TicketsState$Loading value) loading,
    required TResult Function(TicketsState$loadingSuccess value) loadingSuccess,
    required TResult Function(TicketsState$Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsState$Initial value)? initial,
    TResult? Function(TicketsState$Loading value)? loading,
    TResult? Function(TicketsState$loadingSuccess value)? loadingSuccess,
    TResult? Function(TicketsState$Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsState$Initial value)? initial,
    TResult Function(TicketsState$Loading value)? loading,
    TResult Function(TicketsState$loadingSuccess value)? loadingSuccess,
    TResult Function(TicketsState$Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TicketsState$Error implements TicketsState {
  const factory TicketsState$Error(
      {final List<Offer> offers,
      final String? queryDestination,
      required final String message}) = _$TicketsState$ErrorImpl;

  @override
  List<Offer> get offers;
  @override
  String? get queryDestination;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$TicketsState$ErrorImplCopyWith<_$TicketsState$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

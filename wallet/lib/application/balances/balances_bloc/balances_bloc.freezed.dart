// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balances_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BalancesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address, List<TokenBalance> balances,
            PageInfo loadedPageInfo, void Function() onSuccess)
        addFetchedBalances,
    required TResult Function() resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address, List<TokenBalance> balances,
            PageInfo loadedPageInfo, void Function() onSuccess)?
        addFetchedBalances,
    TResult? Function()? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, List<TokenBalance> balances,
            PageInfo loadedPageInfo, void Function() onSuccess)?
        addFetchedBalances,
    TResult Function()? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFetchedBalances value) addFetchedBalances,
    required TResult Function(_ResetState value) resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFetchedBalances value)? addFetchedBalances,
    TResult? Function(_ResetState value)? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFetchedBalances value)? addFetchedBalances,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalancesEventCopyWith<$Res> {
  factory $BalancesEventCopyWith(
          BalancesEvent value, $Res Function(BalancesEvent) then) =
      _$BalancesEventCopyWithImpl<$Res, BalancesEvent>;
}

/// @nodoc
class _$BalancesEventCopyWithImpl<$Res, $Val extends BalancesEvent>
    implements $BalancesEventCopyWith<$Res> {
  _$BalancesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AddFetchedBalancesCopyWith<$Res> {
  factory _$$_AddFetchedBalancesCopyWith(_$_AddFetchedBalances value,
          $Res Function(_$_AddFetchedBalances) then) =
      __$$_AddFetchedBalancesCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String address,
      List<TokenBalance> balances,
      PageInfo loadedPageInfo,
      void Function() onSuccess});
}

/// @nodoc
class __$$_AddFetchedBalancesCopyWithImpl<$Res>
    extends _$BalancesEventCopyWithImpl<$Res, _$_AddFetchedBalances>
    implements _$$_AddFetchedBalancesCopyWith<$Res> {
  __$$_AddFetchedBalancesCopyWithImpl(
      _$_AddFetchedBalances _value, $Res Function(_$_AddFetchedBalances) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? balances = null,
    Object? loadedPageInfo = null,
    Object? onSuccess = null,
  }) {
    return _then(_$_AddFetchedBalances(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      null == balances
          ? _value._balances
          : balances // ignore: cast_nullable_to_non_nullable
              as List<TokenBalance>,
      null == loadedPageInfo
          ? _value.loadedPageInfo
          : loadedPageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
      null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as void Function(),
    ));
  }
}

/// @nodoc

class _$_AddFetchedBalances implements _AddFetchedBalances {
  const _$_AddFetchedBalances(this.address, final List<TokenBalance> balances,
      this.loadedPageInfo, this.onSuccess)
      : _balances = balances;

  @override
  final String address;
  final List<TokenBalance> _balances;
  @override
  List<TokenBalance> get balances {
    if (_balances is EqualUnmodifiableListView) return _balances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_balances);
  }

  @override
  final PageInfo loadedPageInfo;
  @override
  final void Function() onSuccess;

  @override
  String toString() {
    return 'BalancesEvent.addFetchedBalances(address: $address, balances: $balances, loadedPageInfo: $loadedPageInfo, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddFetchedBalances &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._balances, _balances) &&
            (identical(other.loadedPageInfo, loadedPageInfo) ||
                other.loadedPageInfo == loadedPageInfo) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      const DeepCollectionEquality().hash(_balances),
      loadedPageInfo,
      onSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddFetchedBalancesCopyWith<_$_AddFetchedBalances> get copyWith =>
      __$$_AddFetchedBalancesCopyWithImpl<_$_AddFetchedBalances>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address, List<TokenBalance> balances,
            PageInfo loadedPageInfo, void Function() onSuccess)
        addFetchedBalances,
    required TResult Function() resetState,
  }) {
    return addFetchedBalances(address, balances, loadedPageInfo, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address, List<TokenBalance> balances,
            PageInfo loadedPageInfo, void Function() onSuccess)?
        addFetchedBalances,
    TResult? Function()? resetState,
  }) {
    return addFetchedBalances?.call(
        address, balances, loadedPageInfo, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, List<TokenBalance> balances,
            PageInfo loadedPageInfo, void Function() onSuccess)?
        addFetchedBalances,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (addFetchedBalances != null) {
      return addFetchedBalances(address, balances, loadedPageInfo, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFetchedBalances value) addFetchedBalances,
    required TResult Function(_ResetState value) resetState,
  }) {
    return addFetchedBalances(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFetchedBalances value)? addFetchedBalances,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return addFetchedBalances?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFetchedBalances value)? addFetchedBalances,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (addFetchedBalances != null) {
      return addFetchedBalances(this);
    }
    return orElse();
  }
}

abstract class _AddFetchedBalances implements BalancesEvent {
  const factory _AddFetchedBalances(
      final String address,
      final List<TokenBalance> balances,
      final PageInfo loadedPageInfo,
      final void Function() onSuccess) = _$_AddFetchedBalances;

  String get address;
  List<TokenBalance> get balances;
  PageInfo get loadedPageInfo;
  void Function() get onSuccess;
  @JsonKey(ignore: true)
  _$$_AddFetchedBalancesCopyWith<_$_AddFetchedBalances> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetStateCopyWith<$Res> {
  factory _$$_ResetStateCopyWith(
          _$_ResetState value, $Res Function(_$_ResetState) then) =
      __$$_ResetStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetStateCopyWithImpl<$Res>
    extends _$BalancesEventCopyWithImpl<$Res, _$_ResetState>
    implements _$$_ResetStateCopyWith<$Res> {
  __$$_ResetStateCopyWithImpl(
      _$_ResetState _value, $Res Function(_$_ResetState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResetState implements _ResetState {
  const _$_ResetState();

  @override
  String toString() {
    return 'BalancesEvent.resetState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address, List<TokenBalance> balances,
            PageInfo loadedPageInfo, void Function() onSuccess)
        addFetchedBalances,
    required TResult Function() resetState,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address, List<TokenBalance> balances,
            PageInfo loadedPageInfo, void Function() onSuccess)?
        addFetchedBalances,
    TResult? Function()? resetState,
  }) {
    return resetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, List<TokenBalance> balances,
            PageInfo loadedPageInfo, void Function() onSuccess)?
        addFetchedBalances,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFetchedBalances value) addFetchedBalances,
    required TResult Function(_ResetState value) resetState,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFetchedBalances value)? addFetchedBalances,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return resetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFetchedBalances value)? addFetchedBalances,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class _ResetState implements BalancesEvent {
  const factory _ResetState() = _$_ResetState;
}

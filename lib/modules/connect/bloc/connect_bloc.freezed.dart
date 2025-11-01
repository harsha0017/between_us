// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connect_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConnectStateStore {

 bool get loading;
/// Create a copy of ConnectStateStore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectStateStoreCopyWith<ConnectStateStore> get copyWith => _$ConnectStateStoreCopyWithImpl<ConnectStateStore>(this as ConnectStateStore, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectStateStore&&(identical(other.loading, loading) || other.loading == loading));
}


@override
int get hashCode => Object.hash(runtimeType,loading);

@override
String toString() {
  return 'ConnectStateStore(loading: $loading)';
}


}

/// @nodoc
abstract mixin class $ConnectStateStoreCopyWith<$Res>  {
  factory $ConnectStateStoreCopyWith(ConnectStateStore value, $Res Function(ConnectStateStore) _then) = _$ConnectStateStoreCopyWithImpl;
@useResult
$Res call({
 bool loading
});




}
/// @nodoc
class _$ConnectStateStoreCopyWithImpl<$Res>
    implements $ConnectStateStoreCopyWith<$Res> {
  _$ConnectStateStoreCopyWithImpl(this._self, this._then);

  final ConnectStateStore _self;
  final $Res Function(ConnectStateStore) _then;

/// Create a copy of ConnectStateStore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loading = null,}) {
  return _then(_self.copyWith(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ConnectStateStore].
extension ConnectStateStorePatterns on ConnectStateStore {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConnectStateStore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectStateStore() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConnectStateStore value)  $default,){
final _that = this;
switch (_that) {
case _ConnectStateStore():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConnectStateStore value)?  $default,){
final _that = this;
switch (_that) {
case _ConnectStateStore() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool loading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectStateStore() when $default != null:
return $default(_that.loading);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool loading)  $default,) {final _that = this;
switch (_that) {
case _ConnectStateStore():
return $default(_that.loading);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool loading)?  $default,) {final _that = this;
switch (_that) {
case _ConnectStateStore() when $default != null:
return $default(_that.loading);case _:
  return null;

}
}

}

/// @nodoc


class _ConnectStateStore implements ConnectStateStore {
  const _ConnectStateStore({this.loading = false});
  

@override@JsonKey() final  bool loading;

/// Create a copy of ConnectStateStore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectStateStoreCopyWith<_ConnectStateStore> get copyWith => __$ConnectStateStoreCopyWithImpl<_ConnectStateStore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectStateStore&&(identical(other.loading, loading) || other.loading == loading));
}


@override
int get hashCode => Object.hash(runtimeType,loading);

@override
String toString() {
  return 'ConnectStateStore(loading: $loading)';
}


}

/// @nodoc
abstract mixin class _$ConnectStateStoreCopyWith<$Res> implements $ConnectStateStoreCopyWith<$Res> {
  factory _$ConnectStateStoreCopyWith(_ConnectStateStore value, $Res Function(_ConnectStateStore) _then) = __$ConnectStateStoreCopyWithImpl;
@override @useResult
$Res call({
 bool loading
});




}
/// @nodoc
class __$ConnectStateStoreCopyWithImpl<$Res>
    implements _$ConnectStateStoreCopyWith<$Res> {
  __$ConnectStateStoreCopyWithImpl(this._self, this._then);

  final _ConnectStateStore _self;
  final $Res Function(_ConnectStateStore) _then;

/// Create a copy of ConnectStateStore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loading = null,}) {
  return _then(_ConnectStateStore(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

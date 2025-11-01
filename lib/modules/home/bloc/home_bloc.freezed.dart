// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeStateStore {

 bool get loading; List<Post> get posts;
/// Create a copy of HomeStateStore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateStoreCopyWith<HomeStateStore> get copyWith => _$HomeStateStoreCopyWithImpl<HomeStateStore>(this as HomeStateStore, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeStateStore&&(identical(other.loading, loading) || other.loading == loading)&&const DeepCollectionEquality().equals(other.posts, posts));
}


@override
int get hashCode => Object.hash(runtimeType,loading,const DeepCollectionEquality().hash(posts));

@override
String toString() {
  return 'HomeStateStore(loading: $loading, posts: $posts)';
}


}

/// @nodoc
abstract mixin class $HomeStateStoreCopyWith<$Res>  {
  factory $HomeStateStoreCopyWith(HomeStateStore value, $Res Function(HomeStateStore) _then) = _$HomeStateStoreCopyWithImpl;
@useResult
$Res call({
 bool loading, List<Post> posts
});




}
/// @nodoc
class _$HomeStateStoreCopyWithImpl<$Res>
    implements $HomeStateStoreCopyWith<$Res> {
  _$HomeStateStoreCopyWithImpl(this._self, this._then);

  final HomeStateStore _self;
  final $Res Function(HomeStateStore) _then;

/// Create a copy of HomeStateStore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loading = null,Object? posts = null,}) {
  return _then(_self.copyWith(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,posts: null == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as List<Post>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeStateStore].
extension HomeStateStorePatterns on HomeStateStore {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeStateStore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeStateStore() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeStateStore value)  $default,){
final _that = this;
switch (_that) {
case _HomeStateStore():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeStateStore value)?  $default,){
final _that = this;
switch (_that) {
case _HomeStateStore() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool loading,  List<Post> posts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeStateStore() when $default != null:
return $default(_that.loading,_that.posts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool loading,  List<Post> posts)  $default,) {final _that = this;
switch (_that) {
case _HomeStateStore():
return $default(_that.loading,_that.posts);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool loading,  List<Post> posts)?  $default,) {final _that = this;
switch (_that) {
case _HomeStateStore() when $default != null:
return $default(_that.loading,_that.posts);case _:
  return null;

}
}

}

/// @nodoc


class _HomeStateStore implements HomeStateStore {
  const _HomeStateStore({this.loading = false, final  List<Post> posts = const []}): _posts = posts;
  

@override@JsonKey() final  bool loading;
 final  List<Post> _posts;
@override@JsonKey() List<Post> get posts {
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_posts);
}


/// Create a copy of HomeStateStore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateStoreCopyWith<_HomeStateStore> get copyWith => __$HomeStateStoreCopyWithImpl<_HomeStateStore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeStateStore&&(identical(other.loading, loading) || other.loading == loading)&&const DeepCollectionEquality().equals(other._posts, _posts));
}


@override
int get hashCode => Object.hash(runtimeType,loading,const DeepCollectionEquality().hash(_posts));

@override
String toString() {
  return 'HomeStateStore(loading: $loading, posts: $posts)';
}


}

/// @nodoc
abstract mixin class _$HomeStateStoreCopyWith<$Res> implements $HomeStateStoreCopyWith<$Res> {
  factory _$HomeStateStoreCopyWith(_HomeStateStore value, $Res Function(_HomeStateStore) _then) = __$HomeStateStoreCopyWithImpl;
@override @useResult
$Res call({
 bool loading, List<Post> posts
});




}
/// @nodoc
class __$HomeStateStoreCopyWithImpl<$Res>
    implements _$HomeStateStoreCopyWith<$Res> {
  __$HomeStateStoreCopyWithImpl(this._self, this._then);

  final _HomeStateStore _self;
  final $Res Function(_HomeStateStore) _then;

/// Create a copy of HomeStateStore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loading = null,Object? posts = null,}) {
  return _then(_HomeStateStore(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,posts: null == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<Post>,
  ));
}


}

// dart format on

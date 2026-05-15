// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_usage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MediaUsage {

 int? get used; int? get count;
/// Create a copy of MediaUsage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaUsageCopyWith<MediaUsage> get copyWith => _$MediaUsageCopyWithImpl<MediaUsage>(this as MediaUsage, _$identity);

  /// Serializes this MediaUsage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaUsage&&(identical(other.used, used) || other.used == used)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,used,count);

@override
String toString() {
  return 'MediaUsage(used: $used, count: $count)';
}


}

/// @nodoc
abstract mixin class $MediaUsageCopyWith<$Res>  {
  factory $MediaUsageCopyWith(MediaUsage value, $Res Function(MediaUsage) _then) = _$MediaUsageCopyWithImpl;
@useResult
$Res call({
 int? used, int? count
});




}
/// @nodoc
class _$MediaUsageCopyWithImpl<$Res>
    implements $MediaUsageCopyWith<$Res> {
  _$MediaUsageCopyWithImpl(this._self, this._then);

  final MediaUsage _self;
  final $Res Function(MediaUsage) _then;

/// Create a copy of MediaUsage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? used = freezed,Object? count = freezed,}) {
  return _then(_self.copyWith(
used: freezed == used ? _self.used : used // ignore: cast_nullable_to_non_nullable
as int?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaUsage].
extension MediaUsagePatterns on MediaUsage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaUsage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaUsage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaUsage value)  $default,){
final _that = this;
switch (_that) {
case _MediaUsage():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaUsage value)?  $default,){
final _that = this;
switch (_that) {
case _MediaUsage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? used,  int? count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaUsage() when $default != null:
return $default(_that.used,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? used,  int? count)  $default,) {final _that = this;
switch (_that) {
case _MediaUsage():
return $default(_that.used,_that.count);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? used,  int? count)?  $default,) {final _that = this;
switch (_that) {
case _MediaUsage() when $default != null:
return $default(_that.used,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaUsage implements MediaUsage {
  const _MediaUsage({this.used, this.count});
  factory _MediaUsage.fromJson(Map<String, dynamic> json) => _$MediaUsageFromJson(json);

@override final  int? used;
@override final  int? count;

/// Create a copy of MediaUsage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaUsageCopyWith<_MediaUsage> get copyWith => __$MediaUsageCopyWithImpl<_MediaUsage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaUsageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaUsage&&(identical(other.used, used) || other.used == used)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,used,count);

@override
String toString() {
  return 'MediaUsage(used: $used, count: $count)';
}


}

/// @nodoc
abstract mixin class _$MediaUsageCopyWith<$Res> implements $MediaUsageCopyWith<$Res> {
  factory _$MediaUsageCopyWith(_MediaUsage value, $Res Function(_MediaUsage) _then) = __$MediaUsageCopyWithImpl;
@override @useResult
$Res call({
 int? used, int? count
});




}
/// @nodoc
class __$MediaUsageCopyWithImpl<$Res>
    implements _$MediaUsageCopyWith<$Res> {
  __$MediaUsageCopyWithImpl(this._self, this._then);

  final _MediaUsage _self;
  final $Res Function(_MediaUsage) _then;

/// Create a copy of MediaUsage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? used = freezed,Object? count = freezed,}) {
  return _then(_MediaUsage(
used: freezed == used ? _self.used : used // ignore: cast_nullable_to_non_nullable
as int?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

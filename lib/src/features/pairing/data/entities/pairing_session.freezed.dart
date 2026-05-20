// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pairing_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PairingSession {

 String? get userId;@JsonKey(name: 'pairingId') String? get id; DateTime? get expiresAt; String? get code;@PairingStatusConverter() PairingStatus? get status;
/// Create a copy of PairingSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PairingSessionCopyWith<PairingSession> get copyWith => _$PairingSessionCopyWithImpl<PairingSession>(this as PairingSession, _$identity);

  /// Serializes this PairingSession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PairingSession&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.id, id) || other.id == id)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.code, code) || other.code == code)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,id,expiresAt,code,status);

@override
String toString() {
  return 'PairingSession(userId: $userId, id: $id, expiresAt: $expiresAt, code: $code, status: $status)';
}


}

/// @nodoc
abstract mixin class $PairingSessionCopyWith<$Res>  {
  factory $PairingSessionCopyWith(PairingSession value, $Res Function(PairingSession) _then) = _$PairingSessionCopyWithImpl;
@useResult
$Res call({
 String? userId,@JsonKey(name: 'pairingId') String? id, DateTime? expiresAt, String? code,@PairingStatusConverter() PairingStatus? status
});




}
/// @nodoc
class _$PairingSessionCopyWithImpl<$Res>
    implements $PairingSessionCopyWith<$Res> {
  _$PairingSessionCopyWithImpl(this._self, this._then);

  final PairingSession _self;
  final $Res Function(PairingSession) _then;

/// Create a copy of PairingSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? id = freezed,Object? expiresAt = freezed,Object? code = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PairingStatus?,
  ));
}

}


/// Adds pattern-matching-related methods to [PairingSession].
extension PairingSessionPatterns on PairingSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PairingSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PairingSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PairingSession value)  $default,){
final _that = this;
switch (_that) {
case _PairingSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PairingSession value)?  $default,){
final _that = this;
switch (_that) {
case _PairingSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? userId, @JsonKey(name: 'pairingId')  String? id,  DateTime? expiresAt,  String? code, @PairingStatusConverter()  PairingStatus? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PairingSession() when $default != null:
return $default(_that.userId,_that.id,_that.expiresAt,_that.code,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? userId, @JsonKey(name: 'pairingId')  String? id,  DateTime? expiresAt,  String? code, @PairingStatusConverter()  PairingStatus? status)  $default,) {final _that = this;
switch (_that) {
case _PairingSession():
return $default(_that.userId,_that.id,_that.expiresAt,_that.code,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? userId, @JsonKey(name: 'pairingId')  String? id,  DateTime? expiresAt,  String? code, @PairingStatusConverter()  PairingStatus? status)?  $default,) {final _that = this;
switch (_that) {
case _PairingSession() when $default != null:
return $default(_that.userId,_that.id,_that.expiresAt,_that.code,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PairingSession implements PairingSession {
  const _PairingSession({this.userId, @JsonKey(name: 'pairingId') this.id, this.expiresAt, this.code, @PairingStatusConverter() this.status});
  factory _PairingSession.fromJson(Map<String, dynamic> json) => _$PairingSessionFromJson(json);

@override final  String? userId;
@override@JsonKey(name: 'pairingId') final  String? id;
@override final  DateTime? expiresAt;
@override final  String? code;
@override@PairingStatusConverter() final  PairingStatus? status;

/// Create a copy of PairingSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PairingSessionCopyWith<_PairingSession> get copyWith => __$PairingSessionCopyWithImpl<_PairingSession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PairingSessionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PairingSession&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.id, id) || other.id == id)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.code, code) || other.code == code)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,id,expiresAt,code,status);

@override
String toString() {
  return 'PairingSession(userId: $userId, id: $id, expiresAt: $expiresAt, code: $code, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PairingSessionCopyWith<$Res> implements $PairingSessionCopyWith<$Res> {
  factory _$PairingSessionCopyWith(_PairingSession value, $Res Function(_PairingSession) _then) = __$PairingSessionCopyWithImpl;
@override @useResult
$Res call({
 String? userId,@JsonKey(name: 'pairingId') String? id, DateTime? expiresAt, String? code,@PairingStatusConverter() PairingStatus? status
});




}
/// @nodoc
class __$PairingSessionCopyWithImpl<$Res>
    implements _$PairingSessionCopyWith<$Res> {
  __$PairingSessionCopyWithImpl(this._self, this._then);

  final _PairingSession _self;
  final $Res Function(_PairingSession) _then;

/// Create a copy of PairingSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? id = freezed,Object? expiresAt = freezed,Object? code = freezed,Object? status = freezed,}) {
  return _then(_PairingSession(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PairingStatus?,
  ));
}


}

// dart format on

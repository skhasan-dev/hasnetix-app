// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_storage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserStorage {

 String? get userId; MediaUsage? get image; MediaUsage? get video; MediaUsage? get document; MediaUsage? get other; int? get totalUsed;
/// Create a copy of UserStorage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserStorageCopyWith<UserStorage> get copyWith => _$UserStorageCopyWithImpl<UserStorage>(this as UserStorage, _$identity);

  /// Serializes this UserStorage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserStorage&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.image, image) || other.image == image)&&(identical(other.video, video) || other.video == video)&&(identical(other.document, document) || other.document == document)&&(identical(other.other, this.other) || other.other == this.other)&&(identical(other.totalUsed, totalUsed) || other.totalUsed == totalUsed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,image,video,document,other,totalUsed);

@override
String toString() {
  return 'UserStorage(userId: $userId, image: $image, video: $video, document: $document, other: $other, totalUsed: $totalUsed)';
}


}

/// @nodoc
abstract mixin class $UserStorageCopyWith<$Res>  {
  factory $UserStorageCopyWith(UserStorage value, $Res Function(UserStorage) _then) = _$UserStorageCopyWithImpl;
@useResult
$Res call({
 String? userId, MediaUsage? image, MediaUsage? video, MediaUsage? document, MediaUsage? other, int? totalUsed
});


$MediaUsageCopyWith<$Res>? get image;$MediaUsageCopyWith<$Res>? get video;$MediaUsageCopyWith<$Res>? get document;$MediaUsageCopyWith<$Res>? get other;

}
/// @nodoc
class _$UserStorageCopyWithImpl<$Res>
    implements $UserStorageCopyWith<$Res> {
  _$UserStorageCopyWithImpl(this._self, this._then);

  final UserStorage _self;
  final $Res Function(UserStorage) _then;

/// Create a copy of UserStorage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? image = freezed,Object? video = freezed,Object? document = freezed,Object? other = freezed,Object? totalUsed = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as MediaUsage?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as MediaUsage?,document: freezed == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as MediaUsage?,other: freezed == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as MediaUsage?,totalUsed: freezed == totalUsed ? _self.totalUsed : totalUsed // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of UserStorage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaUsageCopyWith<$Res>? get image {
    if (_self.image == null) {
    return null;
  }

  return $MediaUsageCopyWith<$Res>(_self.image!, (value) {
    return _then(_self.copyWith(image: value));
  });
}/// Create a copy of UserStorage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaUsageCopyWith<$Res>? get video {
    if (_self.video == null) {
    return null;
  }

  return $MediaUsageCopyWith<$Res>(_self.video!, (value) {
    return _then(_self.copyWith(video: value));
  });
}/// Create a copy of UserStorage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaUsageCopyWith<$Res>? get document {
    if (_self.document == null) {
    return null;
  }

  return $MediaUsageCopyWith<$Res>(_self.document!, (value) {
    return _then(_self.copyWith(document: value));
  });
}/// Create a copy of UserStorage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaUsageCopyWith<$Res>? get other {
    if (_self.other == null) {
    return null;
  }

  return $MediaUsageCopyWith<$Res>(_self.other!, (value) {
    return _then(_self.copyWith(other: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserStorage].
extension UserStoragePatterns on UserStorage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserStorage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserStorage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserStorage value)  $default,){
final _that = this;
switch (_that) {
case _UserStorage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserStorage value)?  $default,){
final _that = this;
switch (_that) {
case _UserStorage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? userId,  MediaUsage? image,  MediaUsage? video,  MediaUsage? document,  MediaUsage? other,  int? totalUsed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserStorage() when $default != null:
return $default(_that.userId,_that.image,_that.video,_that.document,_that.other,_that.totalUsed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? userId,  MediaUsage? image,  MediaUsage? video,  MediaUsage? document,  MediaUsage? other,  int? totalUsed)  $default,) {final _that = this;
switch (_that) {
case _UserStorage():
return $default(_that.userId,_that.image,_that.video,_that.document,_that.other,_that.totalUsed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? userId,  MediaUsage? image,  MediaUsage? video,  MediaUsage? document,  MediaUsage? other,  int? totalUsed)?  $default,) {final _that = this;
switch (_that) {
case _UserStorage() when $default != null:
return $default(_that.userId,_that.image,_that.video,_that.document,_that.other,_that.totalUsed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserStorage implements UserStorage {
  const _UserStorage({this.userId, this.image, this.video, this.document, this.other, this.totalUsed});
  factory _UserStorage.fromJson(Map<String, dynamic> json) => _$UserStorageFromJson(json);

@override final  String? userId;
@override final  MediaUsage? image;
@override final  MediaUsage? video;
@override final  MediaUsage? document;
@override final  MediaUsage? other;
@override final  int? totalUsed;

/// Create a copy of UserStorage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserStorageCopyWith<_UserStorage> get copyWith => __$UserStorageCopyWithImpl<_UserStorage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserStorageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserStorage&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.image, image) || other.image == image)&&(identical(other.video, video) || other.video == video)&&(identical(other.document, document) || other.document == document)&&(identical(other.other, this.other) || other.other == this.other)&&(identical(other.totalUsed, totalUsed) || other.totalUsed == totalUsed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,image,video,document,other,totalUsed);

@override
String toString() {
  return 'UserStorage(userId: $userId, image: $image, video: $video, document: $document, other: $other, totalUsed: $totalUsed)';
}


}

/// @nodoc
abstract mixin class _$UserStorageCopyWith<$Res> implements $UserStorageCopyWith<$Res> {
  factory _$UserStorageCopyWith(_UserStorage value, $Res Function(_UserStorage) _then) = __$UserStorageCopyWithImpl;
@override @useResult
$Res call({
 String? userId, MediaUsage? image, MediaUsage? video, MediaUsage? document, MediaUsage? other, int? totalUsed
});


@override $MediaUsageCopyWith<$Res>? get image;@override $MediaUsageCopyWith<$Res>? get video;@override $MediaUsageCopyWith<$Res>? get document;@override $MediaUsageCopyWith<$Res>? get other;

}
/// @nodoc
class __$UserStorageCopyWithImpl<$Res>
    implements _$UserStorageCopyWith<$Res> {
  __$UserStorageCopyWithImpl(this._self, this._then);

  final _UserStorage _self;
  final $Res Function(_UserStorage) _then;

/// Create a copy of UserStorage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? image = freezed,Object? video = freezed,Object? document = freezed,Object? other = freezed,Object? totalUsed = freezed,}) {
  return _then(_UserStorage(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as MediaUsage?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as MediaUsage?,document: freezed == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as MediaUsage?,other: freezed == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as MediaUsage?,totalUsed: freezed == totalUsed ? _self.totalUsed : totalUsed // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of UserStorage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaUsageCopyWith<$Res>? get image {
    if (_self.image == null) {
    return null;
  }

  return $MediaUsageCopyWith<$Res>(_self.image!, (value) {
    return _then(_self.copyWith(image: value));
  });
}/// Create a copy of UserStorage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaUsageCopyWith<$Res>? get video {
    if (_self.video == null) {
    return null;
  }

  return $MediaUsageCopyWith<$Res>(_self.video!, (value) {
    return _then(_self.copyWith(video: value));
  });
}/// Create a copy of UserStorage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaUsageCopyWith<$Res>? get document {
    if (_self.document == null) {
    return null;
  }

  return $MediaUsageCopyWith<$Res>(_self.document!, (value) {
    return _then(_self.copyWith(document: value));
  });
}/// Create a copy of UserStorage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaUsageCopyWith<$Res>? get other {
    if (_self.other == null) {
    return null;
  }

  return $MediaUsageCopyWith<$Res>(_self.other!, (value) {
    return _then(_self.copyWith(other: value));
  });
}
}

// dart format on

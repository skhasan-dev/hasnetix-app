// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MediaFile {

@JsonKey(name: '_id') String? get id; String? get fileId; String? get originalName; String? get downloadUrl; int? get size;@FileTypesConverter() FileTypes? get fileType; String? get userId; DateTime? get expiresAt;@FileStatusConverter() FileStatus? get status; DateTime? get createdAt;
/// Create a copy of MediaFile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaFileCopyWith<MediaFile> get copyWith => _$MediaFileCopyWithImpl<MediaFile>(this as MediaFile, _$identity);

  /// Serializes this MediaFile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaFile&&(identical(other.id, id) || other.id == id)&&(identical(other.fileId, fileId) || other.fileId == fileId)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl)&&(identical(other.size, size) || other.size == size)&&(identical(other.fileType, fileType) || other.fileType == fileType)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fileId,originalName,downloadUrl,size,fileType,userId,expiresAt,status,createdAt);

@override
String toString() {
  return 'MediaFile(id: $id, fileId: $fileId, originalName: $originalName, downloadUrl: $downloadUrl, size: $size, fileType: $fileType, userId: $userId, expiresAt: $expiresAt, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $MediaFileCopyWith<$Res>  {
  factory $MediaFileCopyWith(MediaFile value, $Res Function(MediaFile) _then) = _$MediaFileCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String? id, String? fileId, String? originalName, String? downloadUrl, int? size,@FileTypesConverter() FileTypes? fileType, String? userId, DateTime? expiresAt,@FileStatusConverter() FileStatus? status, DateTime? createdAt
});




}
/// @nodoc
class _$MediaFileCopyWithImpl<$Res>
    implements $MediaFileCopyWith<$Res> {
  _$MediaFileCopyWithImpl(this._self, this._then);

  final MediaFile _self;
  final $Res Function(MediaFile) _then;

/// Create a copy of MediaFile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? fileId = freezed,Object? originalName = freezed,Object? downloadUrl = freezed,Object? size = freezed,Object? fileType = freezed,Object? userId = freezed,Object? expiresAt = freezed,Object? status = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,fileId: freezed == fileId ? _self.fileId : fileId // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,downloadUrl: freezed == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,fileType: freezed == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as FileTypes?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FileStatus?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaFile].
extension MediaFilePatterns on MediaFile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaFile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaFile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaFile value)  $default,){
final _that = this;
switch (_that) {
case _MediaFile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaFile value)?  $default,){
final _that = this;
switch (_that) {
case _MediaFile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id,  String? fileId,  String? originalName,  String? downloadUrl,  int? size, @FileTypesConverter()  FileTypes? fileType,  String? userId,  DateTime? expiresAt, @FileStatusConverter()  FileStatus? status,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaFile() when $default != null:
return $default(_that.id,_that.fileId,_that.originalName,_that.downloadUrl,_that.size,_that.fileType,_that.userId,_that.expiresAt,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id,  String? fileId,  String? originalName,  String? downloadUrl,  int? size, @FileTypesConverter()  FileTypes? fileType,  String? userId,  DateTime? expiresAt, @FileStatusConverter()  FileStatus? status,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _MediaFile():
return $default(_that.id,_that.fileId,_that.originalName,_that.downloadUrl,_that.size,_that.fileType,_that.userId,_that.expiresAt,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String? id,  String? fileId,  String? originalName,  String? downloadUrl,  int? size, @FileTypesConverter()  FileTypes? fileType,  String? userId,  DateTime? expiresAt, @FileStatusConverter()  FileStatus? status,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _MediaFile() when $default != null:
return $default(_that.id,_that.fileId,_that.originalName,_that.downloadUrl,_that.size,_that.fileType,_that.userId,_that.expiresAt,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaFile implements MediaFile {
  const _MediaFile({@JsonKey(name: '_id') this.id, this.fileId, this.originalName, this.downloadUrl, this.size, @FileTypesConverter() this.fileType, this.userId, this.expiresAt, @FileStatusConverter() this.status, this.createdAt});
  factory _MediaFile.fromJson(Map<String, dynamic> json) => _$MediaFileFromJson(json);

@override@JsonKey(name: '_id') final  String? id;
@override final  String? fileId;
@override final  String? originalName;
@override final  String? downloadUrl;
@override final  int? size;
@override@FileTypesConverter() final  FileTypes? fileType;
@override final  String? userId;
@override final  DateTime? expiresAt;
@override@FileStatusConverter() final  FileStatus? status;
@override final  DateTime? createdAt;

/// Create a copy of MediaFile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaFileCopyWith<_MediaFile> get copyWith => __$MediaFileCopyWithImpl<_MediaFile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaFileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaFile&&(identical(other.id, id) || other.id == id)&&(identical(other.fileId, fileId) || other.fileId == fileId)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl)&&(identical(other.size, size) || other.size == size)&&(identical(other.fileType, fileType) || other.fileType == fileType)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fileId,originalName,downloadUrl,size,fileType,userId,expiresAt,status,createdAt);

@override
String toString() {
  return 'MediaFile(id: $id, fileId: $fileId, originalName: $originalName, downloadUrl: $downloadUrl, size: $size, fileType: $fileType, userId: $userId, expiresAt: $expiresAt, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MediaFileCopyWith<$Res> implements $MediaFileCopyWith<$Res> {
  factory _$MediaFileCopyWith(_MediaFile value, $Res Function(_MediaFile) _then) = __$MediaFileCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String? id, String? fileId, String? originalName, String? downloadUrl, int? size,@FileTypesConverter() FileTypes? fileType, String? userId, DateTime? expiresAt,@FileStatusConverter() FileStatus? status, DateTime? createdAt
});




}
/// @nodoc
class __$MediaFileCopyWithImpl<$Res>
    implements _$MediaFileCopyWith<$Res> {
  __$MediaFileCopyWithImpl(this._self, this._then);

  final _MediaFile _self;
  final $Res Function(_MediaFile) _then;

/// Create a copy of MediaFile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? fileId = freezed,Object? originalName = freezed,Object? downloadUrl = freezed,Object? size = freezed,Object? fileType = freezed,Object? userId = freezed,Object? expiresAt = freezed,Object? status = freezed,Object? createdAt = freezed,}) {
  return _then(_MediaFile(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,fileId: freezed == fileId ? _self.fileId : fileId // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,downloadUrl: freezed == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,fileType: freezed == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as FileTypes?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FileStatus?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on

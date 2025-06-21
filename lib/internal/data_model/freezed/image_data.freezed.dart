// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageData _$ImageDataFromJson(Map<String, dynamic> json) {
  return _ImageData.fromJson(json);
}

/// @nodoc
mixin _$ImageData {
  @JsonKey(name: "img_id")
  String? get imgId => throw _privateConstructorUsedError;
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get img => throw _privateConstructorUsedError;

  /// Serializes this ImageData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageDataCopyWith<ImageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDataCopyWith<$Res> {
  factory $ImageDataCopyWith(ImageData value, $Res Function(ImageData) then) =
      _$ImageDataCopyWithImpl<$Res, ImageData>;
  @useResult
  $Res call(
      {@JsonKey(name: "img_id") String? imgId,
      @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? img});
}

/// @nodoc
class _$ImageDataCopyWithImpl<$Res, $Val extends ImageData>
    implements $ImageDataCopyWith<$Res> {
  _$ImageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgId = freezed,
    Object? img = freezed,
  }) {
    return _then(_value.copyWith(
      imgId: freezed == imgId
          ? _value.imgId
          : imgId // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageDataImplCopyWith<$Res>
    implements $ImageDataCopyWith<$Res> {
  factory _$$ImageDataImplCopyWith(
          _$ImageDataImpl value, $Res Function(_$ImageDataImpl) then) =
      __$$ImageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "img_id") String? imgId,
      @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? img});
}

/// @nodoc
class __$$ImageDataImplCopyWithImpl<$Res>
    extends _$ImageDataCopyWithImpl<$Res, _$ImageDataImpl>
    implements _$$ImageDataImplCopyWith<$Res> {
  __$$ImageDataImplCopyWithImpl(
      _$ImageDataImpl _value, $Res Function(_$ImageDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgId = freezed,
    Object? img = freezed,
  }) {
    return _then(_$ImageDataImpl(
      imgId: freezed == imgId
          ? _value.imgId
          : imgId // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageDataImpl implements _ImageData {
  _$ImageDataImpl(
      {@JsonKey(name: "img_id") this.imgId,
      @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      this.img});

  factory _$ImageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageDataImplFromJson(json);

  @override
  @JsonKey(name: "img_id")
  final String? imgId;
  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  final Uint8List? img;

  @override
  String toString() {
    return 'ImageData(imgId: $imgId, img: $img)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDataImpl &&
            (identical(other.imgId, imgId) || other.imgId == imgId) &&
            const DeepCollectionEquality().equals(other.img, img));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, imgId, const DeepCollectionEquality().hash(img));

  /// Create a copy of ImageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDataImplCopyWith<_$ImageDataImpl> get copyWith =>
      __$$ImageDataImplCopyWithImpl<_$ImageDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageDataImplToJson(
      this,
    );
  }
}

abstract class _ImageData implements ImageData {
  factory _ImageData(
      {@JsonKey(name: "img_id") final String? imgId,
      @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      final Uint8List? img}) = _$ImageDataImpl;

  factory _ImageData.fromJson(Map<String, dynamic> json) =
      _$ImageDataImpl.fromJson;

  @override
  @JsonKey(name: "img_id")
  String? get imgId;
  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get img;

  /// Create a copy of ImageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageDataImplCopyWith<_$ImageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageProdVarData _$ImageProdVarDataFromJson(Map<String, dynamic> json) {
  return _ImageProdVarData.fromJson(json);
}

/// @nodoc
mixin _$ImageProdVarData {
  @JsonKey(name: "img_id")
  String? get imgId => throw _privateConstructorUsedError;
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get img => throw _privateConstructorUsedError;

  /// Serializes this ImageProdVarData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageProdVarData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageProdVarDataCopyWith<ImageProdVarData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageProdVarDataCopyWith<$Res> {
  factory $ImageProdVarDataCopyWith(
          ImageProdVarData value, $Res Function(ImageProdVarData) then) =
      _$ImageProdVarDataCopyWithImpl<$Res, ImageProdVarData>;
  @useResult
  $Res call(
      {@JsonKey(name: "img_id") String? imgId,
      @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? img});
}

/// @nodoc
class _$ImageProdVarDataCopyWithImpl<$Res, $Val extends ImageProdVarData>
    implements $ImageProdVarDataCopyWith<$Res> {
  _$ImageProdVarDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageProdVarData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgId = freezed,
    Object? img = freezed,
  }) {
    return _then(_value.copyWith(
      imgId: freezed == imgId
          ? _value.imgId
          : imgId // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageProdVarDataImplCopyWith<$Res>
    implements $ImageProdVarDataCopyWith<$Res> {
  factory _$$ImageProdVarDataImplCopyWith(_$ImageProdVarDataImpl value,
          $Res Function(_$ImageProdVarDataImpl) then) =
      __$$ImageProdVarDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "img_id") String? imgId,
      @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? img});
}

/// @nodoc
class __$$ImageProdVarDataImplCopyWithImpl<$Res>
    extends _$ImageProdVarDataCopyWithImpl<$Res, _$ImageProdVarDataImpl>
    implements _$$ImageProdVarDataImplCopyWith<$Res> {
  __$$ImageProdVarDataImplCopyWithImpl(_$ImageProdVarDataImpl _value,
      $Res Function(_$ImageProdVarDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageProdVarData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgId = freezed,
    Object? img = freezed,
  }) {
    return _then(_$ImageProdVarDataImpl(
      imgId: freezed == imgId
          ? _value.imgId
          : imgId // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageProdVarDataImpl implements _ImageProdVarData {
  _$ImageProdVarDataImpl(
      {@JsonKey(name: "img_id") this.imgId,
      @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      this.img});

  factory _$ImageProdVarDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageProdVarDataImplFromJson(json);

  @override
  @JsonKey(name: "img_id")
  final String? imgId;
  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  final Uint8List? img;

  @override
  String toString() {
    return 'ImageProdVarData(imgId: $imgId, img: $img)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageProdVarDataImpl &&
            (identical(other.imgId, imgId) || other.imgId == imgId) &&
            const DeepCollectionEquality().equals(other.img, img));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, imgId, const DeepCollectionEquality().hash(img));

  /// Create a copy of ImageProdVarData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageProdVarDataImplCopyWith<_$ImageProdVarDataImpl> get copyWith =>
      __$$ImageProdVarDataImplCopyWithImpl<_$ImageProdVarDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageProdVarDataImplToJson(
      this,
    );
  }
}

abstract class _ImageProdVarData implements ImageProdVarData {
  factory _ImageProdVarData(
      {@JsonKey(name: "img_id") final String? imgId,
      @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      final Uint8List? img}) = _$ImageProdVarDataImpl;

  factory _ImageProdVarData.fromJson(Map<String, dynamic> json) =
      _$ImageProdVarDataImpl.fromJson;

  @override
  @JsonKey(name: "img_id")
  String? get imgId;
  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get img;

  /// Create a copy of ImageProdVarData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageProdVarDataImplCopyWith<_$ImageProdVarDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageDatawSub _$ImageDatawSubFromJson(Map<String, dynamic> json) {
  return _ImageDatawSub.fromJson(json);
}

/// @nodoc
mixin _$ImageDatawSub {
  @JsonKey(name: "prod_id")
  String? get prodId => throw _privateConstructorUsedError;
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get img => throw _privateConstructorUsedError;
  @JsonKey(name: "tag")
  String? get tag => throw _privateConstructorUsedError;

  /// Serializes this ImageDatawSub to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageDatawSub
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageDatawSubCopyWith<ImageDatawSub> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDatawSubCopyWith<$Res> {
  factory $ImageDatawSubCopyWith(
          ImageDatawSub value, $Res Function(ImageDatawSub) then) =
      _$ImageDatawSubCopyWithImpl<$Res, ImageDatawSub>;
  @useResult
  $Res call(
      {@JsonKey(name: "prod_id") String? prodId,
      @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? img,
      @JsonKey(name: "tag") String? tag});
}

/// @nodoc
class _$ImageDatawSubCopyWithImpl<$Res, $Val extends ImageDatawSub>
    implements $ImageDatawSubCopyWith<$Res> {
  _$ImageDatawSubCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageDatawSub
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodId = freezed,
    Object? img = freezed,
    Object? tag = freezed,
  }) {
    return _then(_value.copyWith(
      prodId: freezed == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageDatawSubImplCopyWith<$Res>
    implements $ImageDatawSubCopyWith<$Res> {
  factory _$$ImageDatawSubImplCopyWith(
          _$ImageDatawSubImpl value, $Res Function(_$ImageDatawSubImpl) then) =
      __$$ImageDatawSubImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "prod_id") String? prodId,
      @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? img,
      @JsonKey(name: "tag") String? tag});
}

/// @nodoc
class __$$ImageDatawSubImplCopyWithImpl<$Res>
    extends _$ImageDatawSubCopyWithImpl<$Res, _$ImageDatawSubImpl>
    implements _$$ImageDatawSubImplCopyWith<$Res> {
  __$$ImageDatawSubImplCopyWithImpl(
      _$ImageDatawSubImpl _value, $Res Function(_$ImageDatawSubImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageDatawSub
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodId = freezed,
    Object? img = freezed,
    Object? tag = freezed,
  }) {
    return _then(_$ImageDatawSubImpl(
      prodId: freezed == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageDatawSubImpl implements _ImageDatawSub {
  _$ImageDatawSubImpl(
      {@JsonKey(name: "prod_id") this.prodId,
      @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      this.img,
      @JsonKey(name: "tag") this.tag});

  factory _$ImageDatawSubImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageDatawSubImplFromJson(json);

  @override
  @JsonKey(name: "prod_id")
  final String? prodId;
  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  final Uint8List? img;
  @override
  @JsonKey(name: "tag")
  final String? tag;

  @override
  String toString() {
    return 'ImageDatawSub(prodId: $prodId, img: $img, tag: $tag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDatawSubImpl &&
            (identical(other.prodId, prodId) || other.prodId == prodId) &&
            const DeepCollectionEquality().equals(other.img, img) &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, prodId, const DeepCollectionEquality().hash(img), tag);

  /// Create a copy of ImageDatawSub
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDatawSubImplCopyWith<_$ImageDatawSubImpl> get copyWith =>
      __$$ImageDatawSubImplCopyWithImpl<_$ImageDatawSubImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageDatawSubImplToJson(
      this,
    );
  }
}

abstract class _ImageDatawSub implements ImageDatawSub {
  factory _ImageDatawSub(
      {@JsonKey(name: "prod_id") final String? prodId,
      @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      final Uint8List? img,
      @JsonKey(name: "tag") final String? tag}) = _$ImageDatawSubImpl;

  factory _ImageDatawSub.fromJson(Map<String, dynamic> json) =
      _$ImageDatawSubImpl.fromJson;

  @override
  @JsonKey(name: "prod_id")
  String? get prodId;
  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get img;
  @override
  @JsonKey(name: "tag")
  String? get tag;

  /// Create a copy of ImageDatawSub
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageDatawSubImplCopyWith<_$ImageDatawSubImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prdct_admin_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductAdminData _$ProductAdminDataFromJson(Map<String, dynamic> json) {
  return _ProductAdminData.fromJson(json);
}

/// @nodoc
mixin _$ProductAdminData {
  @JsonKey(
      name: "json_data",
      fromJson: _productDataFromJson,
      toJson: _productDataToJson)
  List<ProductData>? get productData => throw _privateConstructorUsedError;

  /// Serializes this ProductAdminData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductAdminData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductAdminDataCopyWith<ProductAdminData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAdminDataCopyWith<$Res> {
  factory $ProductAdminDataCopyWith(
          ProductAdminData value, $Res Function(ProductAdminData) then) =
      _$ProductAdminDataCopyWithImpl<$Res, ProductAdminData>;
  @useResult
  $Res call(
      {@JsonKey(
          name: "json_data",
          fromJson: _productDataFromJson,
          toJson: _productDataToJson)
      List<ProductData>? productData});
}

/// @nodoc
class _$ProductAdminDataCopyWithImpl<$Res, $Val extends ProductAdminData>
    implements $ProductAdminDataCopyWith<$Res> {
  _$ProductAdminDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductAdminData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productData = freezed,
  }) {
    return _then(_value.copyWith(
      productData: freezed == productData
          ? _value.productData
          : productData // ignore: cast_nullable_to_non_nullable
              as List<ProductData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductAdminDataImplCopyWith<$Res>
    implements $ProductAdminDataCopyWith<$Res> {
  factory _$$ProductAdminDataImplCopyWith(_$ProductAdminDataImpl value,
          $Res Function(_$ProductAdminDataImpl) then) =
      __$$ProductAdminDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: "json_data",
          fromJson: _productDataFromJson,
          toJson: _productDataToJson)
      List<ProductData>? productData});
}

/// @nodoc
class __$$ProductAdminDataImplCopyWithImpl<$Res>
    extends _$ProductAdminDataCopyWithImpl<$Res, _$ProductAdminDataImpl>
    implements _$$ProductAdminDataImplCopyWith<$Res> {
  __$$ProductAdminDataImplCopyWithImpl(_$ProductAdminDataImpl _value,
      $Res Function(_$ProductAdminDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductAdminData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productData = freezed,
  }) {
    return _then(_$ProductAdminDataImpl(
      productData: freezed == productData
          ? _value._productData
          : productData // ignore: cast_nullable_to_non_nullable
              as List<ProductData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductAdminDataImpl implements _ProductAdminData {
  _$ProductAdminDataImpl(
      {@JsonKey(
          name: "json_data",
          fromJson: _productDataFromJson,
          toJson: _productDataToJson)
      final List<ProductData>? productData})
      : _productData = productData;

  factory _$ProductAdminDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductAdminDataImplFromJson(json);

  final List<ProductData>? _productData;
  @override
  @JsonKey(
      name: "json_data",
      fromJson: _productDataFromJson,
      toJson: _productDataToJson)
  List<ProductData>? get productData {
    final value = _productData;
    if (value == null) return null;
    if (_productData is EqualUnmodifiableListView) return _productData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductAdminData(productData: $productData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAdminDataImpl &&
            const DeepCollectionEquality()
                .equals(other._productData, _productData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productData));

  /// Create a copy of ProductAdminData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductAdminDataImplCopyWith<_$ProductAdminDataImpl> get copyWith =>
      __$$ProductAdminDataImplCopyWithImpl<_$ProductAdminDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductAdminDataImplToJson(
      this,
    );
  }
}

abstract class _ProductAdminData implements ProductAdminData {
  factory _ProductAdminData(
      {@JsonKey(
          name: "json_data",
          fromJson: _productDataFromJson,
          toJson: _productDataToJson)
      final List<ProductData>? productData}) = _$ProductAdminDataImpl;

  factory _ProductAdminData.fromJson(Map<String, dynamic> json) =
      _$ProductAdminDataImpl.fromJson;

  @override
  @JsonKey(
      name: "json_data",
      fromJson: _productDataFromJson,
      toJson: _productDataToJson)
  List<ProductData>? get productData;

  /// Create a copy of ProductAdminData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductAdminDataImplCopyWith<_$ProductAdminDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return _ProductData.fromJson(json);
}

/// @nodoc
mixin _$ProductData {
  @JsonKey(name: "prod_id")
  String? get prodId => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_name")
  String? get prodName => throw _privateConstructorUsedError;
  @JsonKey(name: "cat_name")
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(
      name: "nested_specs_key",
      fromJson: _prodKeyValFromJson,
      toJson: _prodKeyValToJson)
  List<ProductKeyValue>? get prodKeyVal => throw _privateConstructorUsedError;
  @JsonKey(
      name: "nested_p_img_key",
      fromJson: _imageDataFromJson,
      toJson: _imageDataToJson)
  List<ImageData>? get prodImg =>
      throw _privateConstructorUsedError; // List of images with id
  @JsonKey(
      name: "nested_p_tag_key",
      fromJson: _prodPromoTagFromJson,
      toJson: _prodPromoTagToJson)
  List<ProductPromoTag>? get prodPromoTag => throw _privateConstructorUsedError;
  @JsonKey(name: "orig_price")
  double? get origPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_price")
  double? get discPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "value_added_tax")
  double? get valueAddedTax => throw _privateConstructorUsedError;
  @JsonKey(name: "stock")
  int? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: "availability")
  bool? get availability => throw _privateConstructorUsedError;
  @JsonKey(name: "desc_data")
  String? get prodDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id_modifier")
  String? get userIdModifier => throw _privateConstructorUsedError;

  /// Serializes this ProductData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDataCopyWith<ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataCopyWith<$Res> {
  factory $ProductDataCopyWith(
          ProductData value, $Res Function(ProductData) then) =
      _$ProductDataCopyWithImpl<$Res, ProductData>;
  @useResult
  $Res call(
      {@JsonKey(name: "prod_id") String? prodId,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "cat_name") String? category,
      @JsonKey(
          name: "nested_specs_key",
          fromJson: _prodKeyValFromJson,
          toJson: _prodKeyValToJson)
      List<ProductKeyValue>? prodKeyVal,
      @JsonKey(
          name: "nested_p_img_key",
          fromJson: _imageDataFromJson,
          toJson: _imageDataToJson)
      List<ImageData>? prodImg,
      @JsonKey(
          name: "nested_p_tag_key",
          fromJson: _prodPromoTagFromJson,
          toJson: _prodPromoTagToJson)
      List<ProductPromoTag>? prodPromoTag,
      @JsonKey(name: "orig_price") double? origPrice,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "value_added_tax") double? valueAddedTax,
      @JsonKey(name: "stock") int? stock,
      @JsonKey(name: "availability") bool? availability,
      @JsonKey(name: "desc_data") String? prodDescription,
      @JsonKey(name: "user_id_modifier") String? userIdModifier});
}

/// @nodoc
class _$ProductDataCopyWithImpl<$Res, $Val extends ProductData>
    implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodId = freezed,
    Object? prodName = freezed,
    Object? category = freezed,
    Object? prodKeyVal = freezed,
    Object? prodImg = freezed,
    Object? prodPromoTag = freezed,
    Object? origPrice = freezed,
    Object? discPrice = freezed,
    Object? valueAddedTax = freezed,
    Object? stock = freezed,
    Object? availability = freezed,
    Object? prodDescription = freezed,
    Object? userIdModifier = freezed,
  }) {
    return _then(_value.copyWith(
      prodId: freezed == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      prodKeyVal: freezed == prodKeyVal
          ? _value.prodKeyVal
          : prodKeyVal // ignore: cast_nullable_to_non_nullable
              as List<ProductKeyValue>?,
      prodImg: freezed == prodImg
          ? _value.prodImg
          : prodImg // ignore: cast_nullable_to_non_nullable
              as List<ImageData>?,
      prodPromoTag: freezed == prodPromoTag
          ? _value.prodPromoTag
          : prodPromoTag // ignore: cast_nullable_to_non_nullable
              as List<ProductPromoTag>?,
      origPrice: freezed == origPrice
          ? _value.origPrice
          : origPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      valueAddedTax: freezed == valueAddedTax
          ? _value.valueAddedTax
          : valueAddedTax // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as bool?,
      prodDescription: freezed == prodDescription
          ? _value.prodDescription
          : prodDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      userIdModifier: freezed == userIdModifier
          ? _value.userIdModifier
          : userIdModifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDataImplCopyWith<$Res>
    implements $ProductDataCopyWith<$Res> {
  factory _$$ProductDataImplCopyWith(
          _$ProductDataImpl value, $Res Function(_$ProductDataImpl) then) =
      __$$ProductDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "prod_id") String? prodId,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "cat_name") String? category,
      @JsonKey(
          name: "nested_specs_key",
          fromJson: _prodKeyValFromJson,
          toJson: _prodKeyValToJson)
      List<ProductKeyValue>? prodKeyVal,
      @JsonKey(
          name: "nested_p_img_key",
          fromJson: _imageDataFromJson,
          toJson: _imageDataToJson)
      List<ImageData>? prodImg,
      @JsonKey(
          name: "nested_p_tag_key",
          fromJson: _prodPromoTagFromJson,
          toJson: _prodPromoTagToJson)
      List<ProductPromoTag>? prodPromoTag,
      @JsonKey(name: "orig_price") double? origPrice,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "value_added_tax") double? valueAddedTax,
      @JsonKey(name: "stock") int? stock,
      @JsonKey(name: "availability") bool? availability,
      @JsonKey(name: "desc_data") String? prodDescription,
      @JsonKey(name: "user_id_modifier") String? userIdModifier});
}

/// @nodoc
class __$$ProductDataImplCopyWithImpl<$Res>
    extends _$ProductDataCopyWithImpl<$Res, _$ProductDataImpl>
    implements _$$ProductDataImplCopyWith<$Res> {
  __$$ProductDataImplCopyWithImpl(
      _$ProductDataImpl _value, $Res Function(_$ProductDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodId = freezed,
    Object? prodName = freezed,
    Object? category = freezed,
    Object? prodKeyVal = freezed,
    Object? prodImg = freezed,
    Object? prodPromoTag = freezed,
    Object? origPrice = freezed,
    Object? discPrice = freezed,
    Object? valueAddedTax = freezed,
    Object? stock = freezed,
    Object? availability = freezed,
    Object? prodDescription = freezed,
    Object? userIdModifier = freezed,
  }) {
    return _then(_$ProductDataImpl(
      prodId: freezed == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      prodKeyVal: freezed == prodKeyVal
          ? _value._prodKeyVal
          : prodKeyVal // ignore: cast_nullable_to_non_nullable
              as List<ProductKeyValue>?,
      prodImg: freezed == prodImg
          ? _value._prodImg
          : prodImg // ignore: cast_nullable_to_non_nullable
              as List<ImageData>?,
      prodPromoTag: freezed == prodPromoTag
          ? _value._prodPromoTag
          : prodPromoTag // ignore: cast_nullable_to_non_nullable
              as List<ProductPromoTag>?,
      origPrice: freezed == origPrice
          ? _value.origPrice
          : origPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      valueAddedTax: freezed == valueAddedTax
          ? _value.valueAddedTax
          : valueAddedTax // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as bool?,
      prodDescription: freezed == prodDescription
          ? _value.prodDescription
          : prodDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      userIdModifier: freezed == userIdModifier
          ? _value.userIdModifier
          : userIdModifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDataImpl implements _ProductData {
  _$ProductDataImpl(
      {@JsonKey(name: "prod_id") this.prodId,
      @JsonKey(name: "prod_name") this.prodName,
      @JsonKey(name: "cat_name") this.category,
      @JsonKey(
          name: "nested_specs_key",
          fromJson: _prodKeyValFromJson,
          toJson: _prodKeyValToJson)
      final List<ProductKeyValue>? prodKeyVal,
      @JsonKey(
          name: "nested_p_img_key",
          fromJson: _imageDataFromJson,
          toJson: _imageDataToJson)
      final List<ImageData>? prodImg,
      @JsonKey(
          name: "nested_p_tag_key",
          fromJson: _prodPromoTagFromJson,
          toJson: _prodPromoTagToJson)
      final List<ProductPromoTag>? prodPromoTag,
      @JsonKey(name: "orig_price") this.origPrice,
      @JsonKey(name: "disc_price") this.discPrice,
      @JsonKey(name: "value_added_tax") this.valueAddedTax,
      @JsonKey(name: "stock") this.stock,
      @JsonKey(name: "availability") this.availability,
      @JsonKey(name: "desc_data") this.prodDescription,
      @JsonKey(name: "user_id_modifier") this.userIdModifier})
      : _prodKeyVal = prodKeyVal,
        _prodImg = prodImg,
        _prodPromoTag = prodPromoTag;

  factory _$ProductDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDataImplFromJson(json);

  @override
  @JsonKey(name: "prod_id")
  final String? prodId;
  @override
  @JsonKey(name: "prod_name")
  final String? prodName;
  @override
  @JsonKey(name: "cat_name")
  final String? category;
  final List<ProductKeyValue>? _prodKeyVal;
  @override
  @JsonKey(
      name: "nested_specs_key",
      fromJson: _prodKeyValFromJson,
      toJson: _prodKeyValToJson)
  List<ProductKeyValue>? get prodKeyVal {
    final value = _prodKeyVal;
    if (value == null) return null;
    if (_prodKeyVal is EqualUnmodifiableListView) return _prodKeyVal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImageData>? _prodImg;
  @override
  @JsonKey(
      name: "nested_p_img_key",
      fromJson: _imageDataFromJson,
      toJson: _imageDataToJson)
  List<ImageData>? get prodImg {
    final value = _prodImg;
    if (value == null) return null;
    if (_prodImg is EqualUnmodifiableListView) return _prodImg;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// List of images with id
  final List<ProductPromoTag>? _prodPromoTag;
// List of images with id
  @override
  @JsonKey(
      name: "nested_p_tag_key",
      fromJson: _prodPromoTagFromJson,
      toJson: _prodPromoTagToJson)
  List<ProductPromoTag>? get prodPromoTag {
    final value = _prodPromoTag;
    if (value == null) return null;
    if (_prodPromoTag is EqualUnmodifiableListView) return _prodPromoTag;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "orig_price")
  final double? origPrice;
  @override
  @JsonKey(name: "disc_price")
  final double? discPrice;
  @override
  @JsonKey(name: "value_added_tax")
  final double? valueAddedTax;
  @override
  @JsonKey(name: "stock")
  final int? stock;
  @override
  @JsonKey(name: "availability")
  final bool? availability;
  @override
  @JsonKey(name: "desc_data")
  final String? prodDescription;
  @override
  @JsonKey(name: "user_id_modifier")
  final String? userIdModifier;

  @override
  String toString() {
    return 'ProductData(prodId: $prodId, prodName: $prodName, category: $category, prodKeyVal: $prodKeyVal, prodImg: $prodImg, prodPromoTag: $prodPromoTag, origPrice: $origPrice, discPrice: $discPrice, valueAddedTax: $valueAddedTax, stock: $stock, availability: $availability, prodDescription: $prodDescription, userIdModifier: $userIdModifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDataImpl &&
            (identical(other.prodId, prodId) || other.prodId == prodId) &&
            (identical(other.prodName, prodName) ||
                other.prodName == prodName) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._prodKeyVal, _prodKeyVal) &&
            const DeepCollectionEquality().equals(other._prodImg, _prodImg) &&
            const DeepCollectionEquality()
                .equals(other._prodPromoTag, _prodPromoTag) &&
            (identical(other.origPrice, origPrice) ||
                other.origPrice == origPrice) &&
            (identical(other.discPrice, discPrice) ||
                other.discPrice == discPrice) &&
            (identical(other.valueAddedTax, valueAddedTax) ||
                other.valueAddedTax == valueAddedTax) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.prodDescription, prodDescription) ||
                other.prodDescription == prodDescription) &&
            (identical(other.userIdModifier, userIdModifier) ||
                other.userIdModifier == userIdModifier));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      prodId,
      prodName,
      category,
      const DeepCollectionEquality().hash(_prodKeyVal),
      const DeepCollectionEquality().hash(_prodImg),
      const DeepCollectionEquality().hash(_prodPromoTag),
      origPrice,
      discPrice,
      valueAddedTax,
      stock,
      availability,
      prodDescription,
      userIdModifier);

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      __$$ProductDataImplCopyWithImpl<_$ProductDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDataImplToJson(
      this,
    );
  }
}

abstract class _ProductData implements ProductData {
  factory _ProductData(
          {@JsonKey(name: "prod_id") final String? prodId,
          @JsonKey(name: "prod_name") final String? prodName,
          @JsonKey(name: "cat_name") final String? category,
          @JsonKey(
              name: "nested_specs_key",
              fromJson: _prodKeyValFromJson,
              toJson: _prodKeyValToJson)
          final List<ProductKeyValue>? prodKeyVal,
          @JsonKey(
              name: "nested_p_img_key",
              fromJson: _imageDataFromJson,
              toJson: _imageDataToJson)
          final List<ImageData>? prodImg,
          @JsonKey(
              name: "nested_p_tag_key",
              fromJson: _prodPromoTagFromJson,
              toJson: _prodPromoTagToJson)
          final List<ProductPromoTag>? prodPromoTag,
          @JsonKey(name: "orig_price") final double? origPrice,
          @JsonKey(name: "disc_price") final double? discPrice,
          @JsonKey(name: "value_added_tax") final double? valueAddedTax,
          @JsonKey(name: "stock") final int? stock,
          @JsonKey(name: "availability") final bool? availability,
          @JsonKey(name: "desc_data") final String? prodDescription,
          @JsonKey(name: "user_id_modifier") final String? userIdModifier}) =
      _$ProductDataImpl;

  factory _ProductData.fromJson(Map<String, dynamic> json) =
      _$ProductDataImpl.fromJson;

  @override
  @JsonKey(name: "prod_id")
  String? get prodId;
  @override
  @JsonKey(name: "prod_name")
  String? get prodName;
  @override
  @JsonKey(name: "cat_name")
  String? get category;
  @override
  @JsonKey(
      name: "nested_specs_key",
      fromJson: _prodKeyValFromJson,
      toJson: _prodKeyValToJson)
  List<ProductKeyValue>? get prodKeyVal;
  @override
  @JsonKey(
      name: "nested_p_img_key",
      fromJson: _imageDataFromJson,
      toJson: _imageDataToJson)
  List<ImageData>? get prodImg; // List of images with id
  @override
  @JsonKey(
      name: "nested_p_tag_key",
      fromJson: _prodPromoTagFromJson,
      toJson: _prodPromoTagToJson)
  List<ProductPromoTag>? get prodPromoTag;
  @override
  @JsonKey(name: "orig_price")
  double? get origPrice;
  @override
  @JsonKey(name: "disc_price")
  double? get discPrice;
  @override
  @JsonKey(name: "value_added_tax")
  double? get valueAddedTax;
  @override
  @JsonKey(name: "stock")
  int? get stock;
  @override
  @JsonKey(name: "availability")
  bool? get availability;
  @override
  @JsonKey(name: "desc_data")
  String? get prodDescription;
  @override
  @JsonKey(name: "user_id_modifier")
  String? get userIdModifier;

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductVarAdminData _$ProductVarAdminDataFromJson(Map<String, dynamic> json) {
  return _ProductVarAdminData.fromJson(json);
}

/// @nodoc
mixin _$ProductVarAdminData {
  @JsonKey(name: "pv_key_name_id")
  String? get keyNameID => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get keyValue => throw _privateConstructorUsedError;
  @JsonKey(name: "orig_price")
  double? get origPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_price")
  double? get discPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "value_added_tax")
  double? get valueAddedTax => throw _privateConstructorUsedError;
  @JsonKey(name: "stock")
  int? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: "availability")
  bool? get availability => throw _privateConstructorUsedError;
  List<ImageData>? get prodImg =>
      throw _privateConstructorUsedError; // List of images with sizes
  @JsonKey(name: "user_id_modifier")
  String? get userIdModifier => throw _privateConstructorUsedError;

  /// Serializes this ProductVarAdminData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductVarAdminData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductVarAdminDataCopyWith<ProductVarAdminData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVarAdminDataCopyWith<$Res> {
  factory $ProductVarAdminDataCopyWith(
          ProductVarAdminData value, $Res Function(ProductVarAdminData) then) =
      _$ProductVarAdminDataCopyWithImpl<$Res, ProductVarAdminData>;
  @useResult
  $Res call(
      {@JsonKey(name: "pv_key_name_id") String? keyNameID,
      @JsonKey(name: "value") String? keyValue,
      @JsonKey(name: "orig_price") double? origPrice,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "value_added_tax") double? valueAddedTax,
      @JsonKey(name: "stock") int? stock,
      @JsonKey(name: "availability") bool? availability,
      List<ImageData>? prodImg,
      @JsonKey(name: "user_id_modifier") String? userIdModifier});
}

/// @nodoc
class _$ProductVarAdminDataCopyWithImpl<$Res, $Val extends ProductVarAdminData>
    implements $ProductVarAdminDataCopyWith<$Res> {
  _$ProductVarAdminDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductVarAdminData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyNameID = freezed,
    Object? keyValue = freezed,
    Object? origPrice = freezed,
    Object? discPrice = freezed,
    Object? valueAddedTax = freezed,
    Object? stock = freezed,
    Object? availability = freezed,
    Object? prodImg = freezed,
    Object? userIdModifier = freezed,
  }) {
    return _then(_value.copyWith(
      keyNameID: freezed == keyNameID
          ? _value.keyNameID
          : keyNameID // ignore: cast_nullable_to_non_nullable
              as String?,
      keyValue: freezed == keyValue
          ? _value.keyValue
          : keyValue // ignore: cast_nullable_to_non_nullable
              as String?,
      origPrice: freezed == origPrice
          ? _value.origPrice
          : origPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      valueAddedTax: freezed == valueAddedTax
          ? _value.valueAddedTax
          : valueAddedTax // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as bool?,
      prodImg: freezed == prodImg
          ? _value.prodImg
          : prodImg // ignore: cast_nullable_to_non_nullable
              as List<ImageData>?,
      userIdModifier: freezed == userIdModifier
          ? _value.userIdModifier
          : userIdModifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductVarAdminDataImplCopyWith<$Res>
    implements $ProductVarAdminDataCopyWith<$Res> {
  factory _$$ProductVarAdminDataImplCopyWith(_$ProductVarAdminDataImpl value,
          $Res Function(_$ProductVarAdminDataImpl) then) =
      __$$ProductVarAdminDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "pv_key_name_id") String? keyNameID,
      @JsonKey(name: "value") String? keyValue,
      @JsonKey(name: "orig_price") double? origPrice,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "value_added_tax") double? valueAddedTax,
      @JsonKey(name: "stock") int? stock,
      @JsonKey(name: "availability") bool? availability,
      List<ImageData>? prodImg,
      @JsonKey(name: "user_id_modifier") String? userIdModifier});
}

/// @nodoc
class __$$ProductVarAdminDataImplCopyWithImpl<$Res>
    extends _$ProductVarAdminDataCopyWithImpl<$Res, _$ProductVarAdminDataImpl>
    implements _$$ProductVarAdminDataImplCopyWith<$Res> {
  __$$ProductVarAdminDataImplCopyWithImpl(_$ProductVarAdminDataImpl _value,
      $Res Function(_$ProductVarAdminDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductVarAdminData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyNameID = freezed,
    Object? keyValue = freezed,
    Object? origPrice = freezed,
    Object? discPrice = freezed,
    Object? valueAddedTax = freezed,
    Object? stock = freezed,
    Object? availability = freezed,
    Object? prodImg = freezed,
    Object? userIdModifier = freezed,
  }) {
    return _then(_$ProductVarAdminDataImpl(
      keyNameID: freezed == keyNameID
          ? _value.keyNameID
          : keyNameID // ignore: cast_nullable_to_non_nullable
              as String?,
      keyValue: freezed == keyValue
          ? _value.keyValue
          : keyValue // ignore: cast_nullable_to_non_nullable
              as String?,
      origPrice: freezed == origPrice
          ? _value.origPrice
          : origPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      valueAddedTax: freezed == valueAddedTax
          ? _value.valueAddedTax
          : valueAddedTax // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as bool?,
      prodImg: freezed == prodImg
          ? _value._prodImg
          : prodImg // ignore: cast_nullable_to_non_nullable
              as List<ImageData>?,
      userIdModifier: freezed == userIdModifier
          ? _value.userIdModifier
          : userIdModifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductVarAdminDataImpl implements _ProductVarAdminData {
  _$ProductVarAdminDataImpl(
      {@JsonKey(name: "pv_key_name_id") this.keyNameID,
      @JsonKey(name: "value") this.keyValue,
      @JsonKey(name: "orig_price") this.origPrice,
      @JsonKey(name: "disc_price") this.discPrice,
      @JsonKey(name: "value_added_tax") this.valueAddedTax,
      @JsonKey(name: "stock") this.stock,
      @JsonKey(name: "availability") this.availability,
      final List<ImageData>? prodImg,
      @JsonKey(name: "user_id_modifier") this.userIdModifier})
      : _prodImg = prodImg;

  factory _$ProductVarAdminDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductVarAdminDataImplFromJson(json);

  @override
  @JsonKey(name: "pv_key_name_id")
  final String? keyNameID;
  @override
  @JsonKey(name: "value")
  final String? keyValue;
  @override
  @JsonKey(name: "orig_price")
  final double? origPrice;
  @override
  @JsonKey(name: "disc_price")
  final double? discPrice;
  @override
  @JsonKey(name: "value_added_tax")
  final double? valueAddedTax;
  @override
  @JsonKey(name: "stock")
  final int? stock;
  @override
  @JsonKey(name: "availability")
  final bool? availability;
  final List<ImageData>? _prodImg;
  @override
  List<ImageData>? get prodImg {
    final value = _prodImg;
    if (value == null) return null;
    if (_prodImg is EqualUnmodifiableListView) return _prodImg;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// List of images with sizes
  @override
  @JsonKey(name: "user_id_modifier")
  final String? userIdModifier;

  @override
  String toString() {
    return 'ProductVarAdminData(keyNameID: $keyNameID, keyValue: $keyValue, origPrice: $origPrice, discPrice: $discPrice, valueAddedTax: $valueAddedTax, stock: $stock, availability: $availability, prodImg: $prodImg, userIdModifier: $userIdModifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVarAdminDataImpl &&
            (identical(other.keyNameID, keyNameID) ||
                other.keyNameID == keyNameID) &&
            (identical(other.keyValue, keyValue) ||
                other.keyValue == keyValue) &&
            (identical(other.origPrice, origPrice) ||
                other.origPrice == origPrice) &&
            (identical(other.discPrice, discPrice) ||
                other.discPrice == discPrice) &&
            (identical(other.valueAddedTax, valueAddedTax) ||
                other.valueAddedTax == valueAddedTax) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            const DeepCollectionEquality().equals(other._prodImg, _prodImg) &&
            (identical(other.userIdModifier, userIdModifier) ||
                other.userIdModifier == userIdModifier));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      keyNameID,
      keyValue,
      origPrice,
      discPrice,
      valueAddedTax,
      stock,
      availability,
      const DeepCollectionEquality().hash(_prodImg),
      userIdModifier);

  /// Create a copy of ProductVarAdminData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVarAdminDataImplCopyWith<_$ProductVarAdminDataImpl> get copyWith =>
      __$$ProductVarAdminDataImplCopyWithImpl<_$ProductVarAdminDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVarAdminDataImplToJson(
      this,
    );
  }
}

abstract class _ProductVarAdminData implements ProductVarAdminData {
  factory _ProductVarAdminData(
          {@JsonKey(name: "pv_key_name_id") final String? keyNameID,
          @JsonKey(name: "value") final String? keyValue,
          @JsonKey(name: "orig_price") final double? origPrice,
          @JsonKey(name: "disc_price") final double? discPrice,
          @JsonKey(name: "value_added_tax") final double? valueAddedTax,
          @JsonKey(name: "stock") final int? stock,
          @JsonKey(name: "availability") final bool? availability,
          final List<ImageData>? prodImg,
          @JsonKey(name: "user_id_modifier") final String? userIdModifier}) =
      _$ProductVarAdminDataImpl;

  factory _ProductVarAdminData.fromJson(Map<String, dynamic> json) =
      _$ProductVarAdminDataImpl.fromJson;

  @override
  @JsonKey(name: "pv_key_name_id")
  String? get keyNameID;
  @override
  @JsonKey(name: "value")
  String? get keyValue;
  @override
  @JsonKey(name: "orig_price")
  double? get origPrice;
  @override
  @JsonKey(name: "disc_price")
  double? get discPrice;
  @override
  @JsonKey(name: "value_added_tax")
  double? get valueAddedTax;
  @override
  @JsonKey(name: "stock")
  int? get stock;
  @override
  @JsonKey(name: "availability")
  bool? get availability;
  @override
  List<ImageData>? get prodImg; // List of images with sizes
  @override
  @JsonKey(name: "user_id_modifier")
  String? get userIdModifier;

  /// Create a copy of ProductVarAdminData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductVarAdminDataImplCopyWith<_$ProductVarAdminDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductKeyNames _$ProductKeyNamesFromJson(Map<String, dynamic> json) {
  return _ProductKeyNames.fromJson(json);
}

/// @nodoc
mixin _$ProductKeyNames {
  List<ProductKeyName>? get productKeyName =>
      throw _privateConstructorUsedError;
  List<ProductVarKeyName>? get productVarKeyName =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductKeyNames to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductKeyNames
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductKeyNamesCopyWith<ProductKeyNames> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductKeyNamesCopyWith<$Res> {
  factory $ProductKeyNamesCopyWith(
          ProductKeyNames value, $Res Function(ProductKeyNames) then) =
      _$ProductKeyNamesCopyWithImpl<$Res, ProductKeyNames>;
  @useResult
  $Res call(
      {List<ProductKeyName>? productKeyName,
      List<ProductVarKeyName>? productVarKeyName});
}

/// @nodoc
class _$ProductKeyNamesCopyWithImpl<$Res, $Val extends ProductKeyNames>
    implements $ProductKeyNamesCopyWith<$Res> {
  _$ProductKeyNamesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductKeyNames
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productKeyName = freezed,
    Object? productVarKeyName = freezed,
  }) {
    return _then(_value.copyWith(
      productKeyName: freezed == productKeyName
          ? _value.productKeyName
          : productKeyName // ignore: cast_nullable_to_non_nullable
              as List<ProductKeyName>?,
      productVarKeyName: freezed == productVarKeyName
          ? _value.productVarKeyName
          : productVarKeyName // ignore: cast_nullable_to_non_nullable
              as List<ProductVarKeyName>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductKeyNamesImplCopyWith<$Res>
    implements $ProductKeyNamesCopyWith<$Res> {
  factory _$$ProductKeyNamesImplCopyWith(_$ProductKeyNamesImpl value,
          $Res Function(_$ProductKeyNamesImpl) then) =
      __$$ProductKeyNamesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductKeyName>? productKeyName,
      List<ProductVarKeyName>? productVarKeyName});
}

/// @nodoc
class __$$ProductKeyNamesImplCopyWithImpl<$Res>
    extends _$ProductKeyNamesCopyWithImpl<$Res, _$ProductKeyNamesImpl>
    implements _$$ProductKeyNamesImplCopyWith<$Res> {
  __$$ProductKeyNamesImplCopyWithImpl(
      _$ProductKeyNamesImpl _value, $Res Function(_$ProductKeyNamesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductKeyNames
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productKeyName = freezed,
    Object? productVarKeyName = freezed,
  }) {
    return _then(_$ProductKeyNamesImpl(
      productKeyName: freezed == productKeyName
          ? _value._productKeyName
          : productKeyName // ignore: cast_nullable_to_non_nullable
              as List<ProductKeyName>?,
      productVarKeyName: freezed == productVarKeyName
          ? _value._productVarKeyName
          : productVarKeyName // ignore: cast_nullable_to_non_nullable
              as List<ProductVarKeyName>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductKeyNamesImpl implements _ProductKeyNames {
  _$ProductKeyNamesImpl(
      {final List<ProductKeyName>? productKeyName,
      final List<ProductVarKeyName>? productVarKeyName})
      : _productKeyName = productKeyName,
        _productVarKeyName = productVarKeyName;

  factory _$ProductKeyNamesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductKeyNamesImplFromJson(json);

  final List<ProductKeyName>? _productKeyName;
  @override
  List<ProductKeyName>? get productKeyName {
    final value = _productKeyName;
    if (value == null) return null;
    if (_productKeyName is EqualUnmodifiableListView) return _productKeyName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductVarKeyName>? _productVarKeyName;
  @override
  List<ProductVarKeyName>? get productVarKeyName {
    final value = _productVarKeyName;
    if (value == null) return null;
    if (_productVarKeyName is EqualUnmodifiableListView)
      return _productVarKeyName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductKeyNames(productKeyName: $productKeyName, productVarKeyName: $productVarKeyName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductKeyNamesImpl &&
            const DeepCollectionEquality()
                .equals(other._productKeyName, _productKeyName) &&
            const DeepCollectionEquality()
                .equals(other._productVarKeyName, _productVarKeyName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_productKeyName),
      const DeepCollectionEquality().hash(_productVarKeyName));

  /// Create a copy of ProductKeyNames
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductKeyNamesImplCopyWith<_$ProductKeyNamesImpl> get copyWith =>
      __$$ProductKeyNamesImplCopyWithImpl<_$ProductKeyNamesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductKeyNamesImplToJson(
      this,
    );
  }
}

abstract class _ProductKeyNames implements ProductKeyNames {
  factory _ProductKeyNames(
          {final List<ProductKeyName>? productKeyName,
          final List<ProductVarKeyName>? productVarKeyName}) =
      _$ProductKeyNamesImpl;

  factory _ProductKeyNames.fromJson(Map<String, dynamic> json) =
      _$ProductKeyNamesImpl.fromJson;

  @override
  List<ProductKeyName>? get productKeyName;
  @override
  List<ProductVarKeyName>? get productVarKeyName;

  /// Create a copy of ProductKeyNames
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductKeyNamesImplCopyWith<_$ProductKeyNamesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductKeyName _$ProductKeyNameFromJson(Map<String, dynamic> json) {
  return _ProductKeyName.fromJson(json);
}

/// @nodoc
mixin _$ProductKeyName {
  @JsonKey(name: "p_key_name_id")
  String? get prodKeyNameID => throw _privateConstructorUsedError;
  @JsonKey(name: "key_name")
  String? get prodKeyName => throw _privateConstructorUsedError;

  /// Serializes this ProductKeyName to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductKeyName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductKeyNameCopyWith<ProductKeyName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductKeyNameCopyWith<$Res> {
  factory $ProductKeyNameCopyWith(
          ProductKeyName value, $Res Function(ProductKeyName) then) =
      _$ProductKeyNameCopyWithImpl<$Res, ProductKeyName>;
  @useResult
  $Res call(
      {@JsonKey(name: "p_key_name_id") String? prodKeyNameID,
      @JsonKey(name: "key_name") String? prodKeyName});
}

/// @nodoc
class _$ProductKeyNameCopyWithImpl<$Res, $Val extends ProductKeyName>
    implements $ProductKeyNameCopyWith<$Res> {
  _$ProductKeyNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductKeyName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodKeyNameID = freezed,
    Object? prodKeyName = freezed,
  }) {
    return _then(_value.copyWith(
      prodKeyNameID: freezed == prodKeyNameID
          ? _value.prodKeyNameID
          : prodKeyNameID // ignore: cast_nullable_to_non_nullable
              as String?,
      prodKeyName: freezed == prodKeyName
          ? _value.prodKeyName
          : prodKeyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductKeyNameImplCopyWith<$Res>
    implements $ProductKeyNameCopyWith<$Res> {
  factory _$$ProductKeyNameImplCopyWith(_$ProductKeyNameImpl value,
          $Res Function(_$ProductKeyNameImpl) then) =
      __$$ProductKeyNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "p_key_name_id") String? prodKeyNameID,
      @JsonKey(name: "key_name") String? prodKeyName});
}

/// @nodoc
class __$$ProductKeyNameImplCopyWithImpl<$Res>
    extends _$ProductKeyNameCopyWithImpl<$Res, _$ProductKeyNameImpl>
    implements _$$ProductKeyNameImplCopyWith<$Res> {
  __$$ProductKeyNameImplCopyWithImpl(
      _$ProductKeyNameImpl _value, $Res Function(_$ProductKeyNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductKeyName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodKeyNameID = freezed,
    Object? prodKeyName = freezed,
  }) {
    return _then(_$ProductKeyNameImpl(
      prodKeyNameID: freezed == prodKeyNameID
          ? _value.prodKeyNameID
          : prodKeyNameID // ignore: cast_nullable_to_non_nullable
              as String?,
      prodKeyName: freezed == prodKeyName
          ? _value.prodKeyName
          : prodKeyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductKeyNameImpl implements _ProductKeyName {
  _$ProductKeyNameImpl(
      {@JsonKey(name: "p_key_name_id") this.prodKeyNameID,
      @JsonKey(name: "key_name") this.prodKeyName});

  factory _$ProductKeyNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductKeyNameImplFromJson(json);

  @override
  @JsonKey(name: "p_key_name_id")
  final String? prodKeyNameID;
  @override
  @JsonKey(name: "key_name")
  final String? prodKeyName;

  @override
  String toString() {
    return 'ProductKeyName(prodKeyNameID: $prodKeyNameID, prodKeyName: $prodKeyName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductKeyNameImpl &&
            (identical(other.prodKeyNameID, prodKeyNameID) ||
                other.prodKeyNameID == prodKeyNameID) &&
            (identical(other.prodKeyName, prodKeyName) ||
                other.prodKeyName == prodKeyName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, prodKeyNameID, prodKeyName);

  /// Create a copy of ProductKeyName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductKeyNameImplCopyWith<_$ProductKeyNameImpl> get copyWith =>
      __$$ProductKeyNameImplCopyWithImpl<_$ProductKeyNameImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductKeyNameImplToJson(
      this,
    );
  }
}

abstract class _ProductKeyName implements ProductKeyName {
  factory _ProductKeyName(
          {@JsonKey(name: "p_key_name_id") final String? prodKeyNameID,
          @JsonKey(name: "key_name") final String? prodKeyName}) =
      _$ProductKeyNameImpl;

  factory _ProductKeyName.fromJson(Map<String, dynamic> json) =
      _$ProductKeyNameImpl.fromJson;

  @override
  @JsonKey(name: "p_key_name_id")
  String? get prodKeyNameID;
  @override
  @JsonKey(name: "key_name")
  String? get prodKeyName;

  /// Create a copy of ProductKeyName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductKeyNameImplCopyWith<_$ProductKeyNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductVarKeyName _$ProductVarKeyNameFromJson(Map<String, dynamic> json) {
  return _ProductVarKeyName.fromJson(json);
}

/// @nodoc
mixin _$ProductVarKeyName {
  @JsonKey(name: "pv_key_name_id")
  String? get prodVarKeyNameID => throw _privateConstructorUsedError;
  @JsonKey(name: "key_name")
  String? get prodVarKeyName => throw _privateConstructorUsedError;

  /// Serializes this ProductVarKeyName to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductVarKeyName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductVarKeyNameCopyWith<ProductVarKeyName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVarKeyNameCopyWith<$Res> {
  factory $ProductVarKeyNameCopyWith(
          ProductVarKeyName value, $Res Function(ProductVarKeyName) then) =
      _$ProductVarKeyNameCopyWithImpl<$Res, ProductVarKeyName>;
  @useResult
  $Res call(
      {@JsonKey(name: "pv_key_name_id") String? prodVarKeyNameID,
      @JsonKey(name: "key_name") String? prodVarKeyName});
}

/// @nodoc
class _$ProductVarKeyNameCopyWithImpl<$Res, $Val extends ProductVarKeyName>
    implements $ProductVarKeyNameCopyWith<$Res> {
  _$ProductVarKeyNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductVarKeyName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodVarKeyNameID = freezed,
    Object? prodVarKeyName = freezed,
  }) {
    return _then(_value.copyWith(
      prodVarKeyNameID: freezed == prodVarKeyNameID
          ? _value.prodVarKeyNameID
          : prodVarKeyNameID // ignore: cast_nullable_to_non_nullable
              as String?,
      prodVarKeyName: freezed == prodVarKeyName
          ? _value.prodVarKeyName
          : prodVarKeyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductVarKeyNameImplCopyWith<$Res>
    implements $ProductVarKeyNameCopyWith<$Res> {
  factory _$$ProductVarKeyNameImplCopyWith(_$ProductVarKeyNameImpl value,
          $Res Function(_$ProductVarKeyNameImpl) then) =
      __$$ProductVarKeyNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "pv_key_name_id") String? prodVarKeyNameID,
      @JsonKey(name: "key_name") String? prodVarKeyName});
}

/// @nodoc
class __$$ProductVarKeyNameImplCopyWithImpl<$Res>
    extends _$ProductVarKeyNameCopyWithImpl<$Res, _$ProductVarKeyNameImpl>
    implements _$$ProductVarKeyNameImplCopyWith<$Res> {
  __$$ProductVarKeyNameImplCopyWithImpl(_$ProductVarKeyNameImpl _value,
      $Res Function(_$ProductVarKeyNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductVarKeyName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodVarKeyNameID = freezed,
    Object? prodVarKeyName = freezed,
  }) {
    return _then(_$ProductVarKeyNameImpl(
      prodVarKeyNameID: freezed == prodVarKeyNameID
          ? _value.prodVarKeyNameID
          : prodVarKeyNameID // ignore: cast_nullable_to_non_nullable
              as String?,
      prodVarKeyName: freezed == prodVarKeyName
          ? _value.prodVarKeyName
          : prodVarKeyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductVarKeyNameImpl implements _ProductVarKeyName {
  _$ProductVarKeyNameImpl(
      {@JsonKey(name: "pv_key_name_id") this.prodVarKeyNameID,
      @JsonKey(name: "key_name") this.prodVarKeyName});

  factory _$ProductVarKeyNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductVarKeyNameImplFromJson(json);

  @override
  @JsonKey(name: "pv_key_name_id")
  final String? prodVarKeyNameID;
  @override
  @JsonKey(name: "key_name")
  final String? prodVarKeyName;

  @override
  String toString() {
    return 'ProductVarKeyName(prodVarKeyNameID: $prodVarKeyNameID, prodVarKeyName: $prodVarKeyName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVarKeyNameImpl &&
            (identical(other.prodVarKeyNameID, prodVarKeyNameID) ||
                other.prodVarKeyNameID == prodVarKeyNameID) &&
            (identical(other.prodVarKeyName, prodVarKeyName) ||
                other.prodVarKeyName == prodVarKeyName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, prodVarKeyNameID, prodVarKeyName);

  /// Create a copy of ProductVarKeyName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVarKeyNameImplCopyWith<_$ProductVarKeyNameImpl> get copyWith =>
      __$$ProductVarKeyNameImplCopyWithImpl<_$ProductVarKeyNameImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVarKeyNameImplToJson(
      this,
    );
  }
}

abstract class _ProductVarKeyName implements ProductVarKeyName {
  factory _ProductVarKeyName(
          {@JsonKey(name: "pv_key_name_id") final String? prodVarKeyNameID,
          @JsonKey(name: "key_name") final String? prodVarKeyName}) =
      _$ProductVarKeyNameImpl;

  factory _ProductVarKeyName.fromJson(Map<String, dynamic> json) =
      _$ProductVarKeyNameImpl.fromJson;

  @override
  @JsonKey(name: "pv_key_name_id")
  String? get prodVarKeyNameID;
  @override
  @JsonKey(name: "key_name")
  String? get prodVarKeyName;

  /// Create a copy of ProductVarKeyName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductVarKeyNameImplCopyWith<_$ProductVarKeyNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductKeyValue _$ProductKeyValueFromJson(Map<String, dynamic> json) {
  return _ProductKeyValue.fromJson(json);
}

/// @nodoc
mixin _$ProductKeyValue {
  @JsonKey(name: "p_key_name_id")
  String? get prodKeyNameID => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get value => throw _privateConstructorUsedError;

  /// Serializes this ProductKeyValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductKeyValueCopyWith<ProductKeyValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductKeyValueCopyWith<$Res> {
  factory $ProductKeyValueCopyWith(
          ProductKeyValue value, $Res Function(ProductKeyValue) then) =
      _$ProductKeyValueCopyWithImpl<$Res, ProductKeyValue>;
  @useResult
  $Res call(
      {@JsonKey(name: "p_key_name_id") String? prodKeyNameID,
      @JsonKey(name: "value") String? value});
}

/// @nodoc
class _$ProductKeyValueCopyWithImpl<$Res, $Val extends ProductKeyValue>
    implements $ProductKeyValueCopyWith<$Res> {
  _$ProductKeyValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodKeyNameID = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      prodKeyNameID: freezed == prodKeyNameID
          ? _value.prodKeyNameID
          : prodKeyNameID // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductKeyValueImplCopyWith<$Res>
    implements $ProductKeyValueCopyWith<$Res> {
  factory _$$ProductKeyValueImplCopyWith(_$ProductKeyValueImpl value,
          $Res Function(_$ProductKeyValueImpl) then) =
      __$$ProductKeyValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "p_key_name_id") String? prodKeyNameID,
      @JsonKey(name: "value") String? value});
}

/// @nodoc
class __$$ProductKeyValueImplCopyWithImpl<$Res>
    extends _$ProductKeyValueCopyWithImpl<$Res, _$ProductKeyValueImpl>
    implements _$$ProductKeyValueImplCopyWith<$Res> {
  __$$ProductKeyValueImplCopyWithImpl(
      _$ProductKeyValueImpl _value, $Res Function(_$ProductKeyValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodKeyNameID = freezed,
    Object? value = freezed,
  }) {
    return _then(_$ProductKeyValueImpl(
      prodKeyNameID: freezed == prodKeyNameID
          ? _value.prodKeyNameID
          : prodKeyNameID // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductKeyValueImpl implements _ProductKeyValue {
  _$ProductKeyValueImpl(
      {@JsonKey(name: "p_key_name_id") this.prodKeyNameID,
      @JsonKey(name: "value") this.value});

  factory _$ProductKeyValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductKeyValueImplFromJson(json);

  @override
  @JsonKey(name: "p_key_name_id")
  final String? prodKeyNameID;
  @override
  @JsonKey(name: "value")
  final String? value;

  @override
  String toString() {
    return 'ProductKeyValue(prodKeyNameID: $prodKeyNameID, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductKeyValueImpl &&
            (identical(other.prodKeyNameID, prodKeyNameID) ||
                other.prodKeyNameID == prodKeyNameID) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, prodKeyNameID, value);

  /// Create a copy of ProductKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductKeyValueImplCopyWith<_$ProductKeyValueImpl> get copyWith =>
      __$$ProductKeyValueImplCopyWithImpl<_$ProductKeyValueImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductKeyValueImplToJson(
      this,
    );
  }
}

abstract class _ProductKeyValue implements ProductKeyValue {
  factory _ProductKeyValue(
      {@JsonKey(name: "p_key_name_id") final String? prodKeyNameID,
      @JsonKey(name: "value") final String? value}) = _$ProductKeyValueImpl;

  factory _ProductKeyValue.fromJson(Map<String, dynamic> json) =
      _$ProductKeyValueImpl.fromJson;

  @override
  @JsonKey(name: "p_key_name_id")
  String? get prodKeyNameID;
  @override
  @JsonKey(name: "value")
  String? get value;

  /// Create a copy of ProductKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductKeyValueImplCopyWith<_$ProductKeyValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductPromoTag _$ProductPromoTagFromJson(Map<String, dynamic> json) {
  return _ProductPromoTag.fromJson(json);
}

/// @nodoc
mixin _$ProductPromoTag {
  @JsonKey(name: "promo_tag_id")
  String? get promoTagID => throw _privateConstructorUsedError;
  @JsonKey(name: "tag_values")
  String? get tagValue => throw _privateConstructorUsedError;

  /// Serializes this ProductPromoTag to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductPromoTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductPromoTagCopyWith<ProductPromoTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPromoTagCopyWith<$Res> {
  factory $ProductPromoTagCopyWith(
          ProductPromoTag value, $Res Function(ProductPromoTag) then) =
      _$ProductPromoTagCopyWithImpl<$Res, ProductPromoTag>;
  @useResult
  $Res call(
      {@JsonKey(name: "promo_tag_id") String? promoTagID,
      @JsonKey(name: "tag_values") String? tagValue});
}

/// @nodoc
class _$ProductPromoTagCopyWithImpl<$Res, $Val extends ProductPromoTag>
    implements $ProductPromoTagCopyWith<$Res> {
  _$ProductPromoTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductPromoTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promoTagID = freezed,
    Object? tagValue = freezed,
  }) {
    return _then(_value.copyWith(
      promoTagID: freezed == promoTagID
          ? _value.promoTagID
          : promoTagID // ignore: cast_nullable_to_non_nullable
              as String?,
      tagValue: freezed == tagValue
          ? _value.tagValue
          : tagValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductPromoTagImplCopyWith<$Res>
    implements $ProductPromoTagCopyWith<$Res> {
  factory _$$ProductPromoTagImplCopyWith(_$ProductPromoTagImpl value,
          $Res Function(_$ProductPromoTagImpl) then) =
      __$$ProductPromoTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "promo_tag_id") String? promoTagID,
      @JsonKey(name: "tag_values") String? tagValue});
}

/// @nodoc
class __$$ProductPromoTagImplCopyWithImpl<$Res>
    extends _$ProductPromoTagCopyWithImpl<$Res, _$ProductPromoTagImpl>
    implements _$$ProductPromoTagImplCopyWith<$Res> {
  __$$ProductPromoTagImplCopyWithImpl(
      _$ProductPromoTagImpl _value, $Res Function(_$ProductPromoTagImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductPromoTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promoTagID = freezed,
    Object? tagValue = freezed,
  }) {
    return _then(_$ProductPromoTagImpl(
      promoTagID: freezed == promoTagID
          ? _value.promoTagID
          : promoTagID // ignore: cast_nullable_to_non_nullable
              as String?,
      tagValue: freezed == tagValue
          ? _value.tagValue
          : tagValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductPromoTagImpl implements _ProductPromoTag {
  _$ProductPromoTagImpl(
      {@JsonKey(name: "promo_tag_id") this.promoTagID,
      @JsonKey(name: "tag_values") this.tagValue});

  factory _$ProductPromoTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductPromoTagImplFromJson(json);

  @override
  @JsonKey(name: "promo_tag_id")
  final String? promoTagID;
  @override
  @JsonKey(name: "tag_values")
  final String? tagValue;

  @override
  String toString() {
    return 'ProductPromoTag(promoTagID: $promoTagID, tagValue: $tagValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductPromoTagImpl &&
            (identical(other.promoTagID, promoTagID) ||
                other.promoTagID == promoTagID) &&
            (identical(other.tagValue, tagValue) ||
                other.tagValue == tagValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, promoTagID, tagValue);

  /// Create a copy of ProductPromoTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductPromoTagImplCopyWith<_$ProductPromoTagImpl> get copyWith =>
      __$$ProductPromoTagImplCopyWithImpl<_$ProductPromoTagImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductPromoTagImplToJson(
      this,
    );
  }
}

abstract class _ProductPromoTag implements ProductPromoTag {
  factory _ProductPromoTag(
          {@JsonKey(name: "promo_tag_id") final String? promoTagID,
          @JsonKey(name: "tag_values") final String? tagValue}) =
      _$ProductPromoTagImpl;

  factory _ProductPromoTag.fromJson(Map<String, dynamic> json) =
      _$ProductPromoTagImpl.fromJson;

  @override
  @JsonKey(name: "promo_tag_id")
  String? get promoTagID;
  @override
  @JsonKey(name: "tag_values")
  String? get tagValue;

  /// Create a copy of ProductPromoTag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductPromoTagImplCopyWith<_$ProductPromoTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prdct_client_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserVerificationStatus _$UserVerificationStatusFromJson(
    Map<String, dynamic> json) {
  return _UserVerificationStatus.fromJson(json);
}

/// @nodoc
mixin _$UserVerificationStatus {
  @JsonKey(name: "role_type")
  String? get roleType => throw _privateConstructorUsedError;
  @JsonKey(name: "pending_ver")
  bool? get isPendingVerification => throw _privateConstructorUsedError;
  @JsonKey(name: "is_verified")
  bool? get isVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "remarks")
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "modif_lvl")
  String? get modificationLevel => throw _privateConstructorUsedError;

  /// Serializes this UserVerificationStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserVerificationStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserVerificationStatusCopyWith<UserVerificationStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserVerificationStatusCopyWith<$Res> {
  factory $UserVerificationStatusCopyWith(UserVerificationStatus value,
          $Res Function(UserVerificationStatus) then) =
      _$UserVerificationStatusCopyWithImpl<$Res, UserVerificationStatus>;
  @useResult
  $Res call(
      {@JsonKey(name: "role_type") String? roleType,
      @JsonKey(name: "pending_ver") bool? isPendingVerification,
      @JsonKey(name: "is_verified") bool? isVerified,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "modif_lvl") String? modificationLevel});
}

/// @nodoc
class _$UserVerificationStatusCopyWithImpl<$Res,
        $Val extends UserVerificationStatus>
    implements $UserVerificationStatusCopyWith<$Res> {
  _$UserVerificationStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserVerificationStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleType = freezed,
    Object? isPendingVerification = freezed,
    Object? isVerified = freezed,
    Object? remarks = freezed,
    Object? modificationLevel = freezed,
  }) {
    return _then(_value.copyWith(
      roleType: freezed == roleType
          ? _value.roleType
          : roleType // ignore: cast_nullable_to_non_nullable
              as String?,
      isPendingVerification: freezed == isPendingVerification
          ? _value.isPendingVerification
          : isPendingVerification // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      modificationLevel: freezed == modificationLevel
          ? _value.modificationLevel
          : modificationLevel // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserVerificationStatusImplCopyWith<$Res>
    implements $UserVerificationStatusCopyWith<$Res> {
  factory _$$UserVerificationStatusImplCopyWith(
          _$UserVerificationStatusImpl value,
          $Res Function(_$UserVerificationStatusImpl) then) =
      __$$UserVerificationStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "role_type") String? roleType,
      @JsonKey(name: "pending_ver") bool? isPendingVerification,
      @JsonKey(name: "is_verified") bool? isVerified,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "modif_lvl") String? modificationLevel});
}

/// @nodoc
class __$$UserVerificationStatusImplCopyWithImpl<$Res>
    extends _$UserVerificationStatusCopyWithImpl<$Res,
        _$UserVerificationStatusImpl>
    implements _$$UserVerificationStatusImplCopyWith<$Res> {
  __$$UserVerificationStatusImplCopyWithImpl(
      _$UserVerificationStatusImpl _value,
      $Res Function(_$UserVerificationStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserVerificationStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleType = freezed,
    Object? isPendingVerification = freezed,
    Object? isVerified = freezed,
    Object? remarks = freezed,
    Object? modificationLevel = freezed,
  }) {
    return _then(_$UserVerificationStatusImpl(
      roleType: freezed == roleType
          ? _value.roleType
          : roleType // ignore: cast_nullable_to_non_nullable
              as String?,
      isPendingVerification: freezed == isPendingVerification
          ? _value.isPendingVerification
          : isPendingVerification // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      modificationLevel: freezed == modificationLevel
          ? _value.modificationLevel
          : modificationLevel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserVerificationStatusImpl implements _UserVerificationStatus {
  _$UserVerificationStatusImpl(
      {@JsonKey(name: "role_type") this.roleType,
      @JsonKey(name: "pending_ver") this.isPendingVerification,
      @JsonKey(name: "is_verified") this.isVerified,
      @JsonKey(name: "remarks") this.remarks,
      @JsonKey(name: "modif_lvl") this.modificationLevel});

  factory _$UserVerificationStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserVerificationStatusImplFromJson(json);

  @override
  @JsonKey(name: "role_type")
  final String? roleType;
  @override
  @JsonKey(name: "pending_ver")
  final bool? isPendingVerification;
  @override
  @JsonKey(name: "is_verified")
  final bool? isVerified;
  @override
  @JsonKey(name: "remarks")
  final String? remarks;
  @override
  @JsonKey(name: "modif_lvl")
  final String? modificationLevel;

  @override
  String toString() {
    return 'UserVerificationStatus(roleType: $roleType, isPendingVerification: $isPendingVerification, isVerified: $isVerified, remarks: $remarks, modificationLevel: $modificationLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserVerificationStatusImpl &&
            (identical(other.roleType, roleType) ||
                other.roleType == roleType) &&
            (identical(other.isPendingVerification, isPendingVerification) ||
                other.isPendingVerification == isPendingVerification) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.modificationLevel, modificationLevel) ||
                other.modificationLevel == modificationLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, roleType, isPendingVerification,
      isVerified, remarks, modificationLevel);

  /// Create a copy of UserVerificationStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserVerificationStatusImplCopyWith<_$UserVerificationStatusImpl>
      get copyWith => __$$UserVerificationStatusImplCopyWithImpl<
          _$UserVerificationStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserVerificationStatusImplToJson(
      this,
    );
  }
}

abstract class _UserVerificationStatus implements UserVerificationStatus {
  factory _UserVerificationStatus(
          {@JsonKey(name: "role_type") final String? roleType,
          @JsonKey(name: "pending_ver") final bool? isPendingVerification,
          @JsonKey(name: "is_verified") final bool? isVerified,
          @JsonKey(name: "remarks") final String? remarks,
          @JsonKey(name: "modif_lvl") final String? modificationLevel}) =
      _$UserVerificationStatusImpl;

  factory _UserVerificationStatus.fromJson(Map<String, dynamic> json) =
      _$UserVerificationStatusImpl.fromJson;

  @override
  @JsonKey(name: "role_type")
  String? get roleType;
  @override
  @JsonKey(name: "pending_ver")
  bool? get isPendingVerification;
  @override
  @JsonKey(name: "is_verified")
  bool? get isVerified;
  @override
  @JsonKey(name: "remarks")
  String? get remarks;
  @override
  @JsonKey(name: "modif_lvl")
  String? get modificationLevel;

  /// Create a copy of UserVerificationStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserVerificationStatusImplCopyWith<_$UserVerificationStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CounterState {
  int get count => throw _privateConstructorUsedError;

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CounterStateCopyWith<CounterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res, CounterState>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$CounterStateCopyWithImpl<$Res, $Val extends CounterState>
    implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CounterStateImplCopyWith<$Res>
    implements $CounterStateCopyWith<$Res> {
  factory _$$CounterStateImplCopyWith(
          _$CounterStateImpl value, $Res Function(_$CounterStateImpl) then) =
      __$$CounterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$CounterStateImplCopyWithImpl<$Res>
    extends _$CounterStateCopyWithImpl<$Res, _$CounterStateImpl>
    implements _$$CounterStateImplCopyWith<$Res> {
  __$$CounterStateImplCopyWithImpl(
      _$CounterStateImpl _value, $Res Function(_$CounterStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$CounterStateImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CounterStateImpl implements _CounterState {
  const _$CounterStateImpl({required this.count});

  @override
  final int count;

  @override
  String toString() {
    return 'CounterState(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterStateImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CounterStateImplCopyWith<_$CounterStateImpl> get copyWith =>
      __$$CounterStateImplCopyWithImpl<_$CounterStateImpl>(this, _$identity);
}

abstract class _CounterState implements CounterState {
  const factory _CounterState({required final int count}) = _$CounterStateImpl;

  @override
  int get count;

  /// Create a copy of CounterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CounterStateImplCopyWith<_$CounterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductClientDashboardData _$ProductClientDashboardDataFromJson(
    Map<String, dynamic> json) {
  return _ProductClientDashboardData.fromJson(json);
}

/// @nodoc
mixin _$ProductClientDashboardData {
  @JsonKey(
      name: "json_data",
      fromJson: _productClientDbFromJson,
      toJson: _productClientDbToJson)
  List<ProductDashboardData>? get productData =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductClientDashboardData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductClientDashboardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductClientDashboardDataCopyWith<ProductClientDashboardData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductClientDashboardDataCopyWith<$Res> {
  factory $ProductClientDashboardDataCopyWith(ProductClientDashboardData value,
          $Res Function(ProductClientDashboardData) then) =
      _$ProductClientDashboardDataCopyWithImpl<$Res,
          ProductClientDashboardData>;
  @useResult
  $Res call(
      {@JsonKey(
          name: "json_data",
          fromJson: _productClientDbFromJson,
          toJson: _productClientDbToJson)
      List<ProductDashboardData>? productData});
}

/// @nodoc
class _$ProductClientDashboardDataCopyWithImpl<$Res,
        $Val extends ProductClientDashboardData>
    implements $ProductClientDashboardDataCopyWith<$Res> {
  _$ProductClientDashboardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductClientDashboardData
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
              as List<ProductDashboardData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductClientDashboardDataImplCopyWith<$Res>
    implements $ProductClientDashboardDataCopyWith<$Res> {
  factory _$$ProductClientDashboardDataImplCopyWith(
          _$ProductClientDashboardDataImpl value,
          $Res Function(_$ProductClientDashboardDataImpl) then) =
      __$$ProductClientDashboardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: "json_data",
          fromJson: _productClientDbFromJson,
          toJson: _productClientDbToJson)
      List<ProductDashboardData>? productData});
}

/// @nodoc
class __$$ProductClientDashboardDataImplCopyWithImpl<$Res>
    extends _$ProductClientDashboardDataCopyWithImpl<$Res,
        _$ProductClientDashboardDataImpl>
    implements _$$ProductClientDashboardDataImplCopyWith<$Res> {
  __$$ProductClientDashboardDataImplCopyWithImpl(
      _$ProductClientDashboardDataImpl _value,
      $Res Function(_$ProductClientDashboardDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductClientDashboardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productData = freezed,
  }) {
    return _then(_$ProductClientDashboardDataImpl(
      productData: freezed == productData
          ? _value._productData
          : productData // ignore: cast_nullable_to_non_nullable
              as List<ProductDashboardData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductClientDashboardDataImpl implements _ProductClientDashboardData {
  _$ProductClientDashboardDataImpl(
      {@JsonKey(
          name: "json_data",
          fromJson: _productClientDbFromJson,
          toJson: _productClientDbToJson)
      final List<ProductDashboardData>? productData})
      : _productData = productData;

  factory _$ProductClientDashboardDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductClientDashboardDataImplFromJson(json);

  final List<ProductDashboardData>? _productData;
  @override
  @JsonKey(
      name: "json_data",
      fromJson: _productClientDbFromJson,
      toJson: _productClientDbToJson)
  List<ProductDashboardData>? get productData {
    final value = _productData;
    if (value == null) return null;
    if (_productData is EqualUnmodifiableListView) return _productData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductClientDashboardData(productData: $productData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductClientDashboardDataImpl &&
            const DeepCollectionEquality()
                .equals(other._productData, _productData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productData));

  /// Create a copy of ProductClientDashboardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductClientDashboardDataImplCopyWith<_$ProductClientDashboardDataImpl>
      get copyWith => __$$ProductClientDashboardDataImplCopyWithImpl<
          _$ProductClientDashboardDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductClientDashboardDataImplToJson(
      this,
    );
  }
}

abstract class _ProductClientDashboardData
    implements ProductClientDashboardData {
  factory _ProductClientDashboardData(
          {@JsonKey(
              name: "json_data",
              fromJson: _productClientDbFromJson,
              toJson: _productClientDbToJson)
          final List<ProductDashboardData>? productData}) =
      _$ProductClientDashboardDataImpl;

  factory _ProductClientDashboardData.fromJson(Map<String, dynamic> json) =
      _$ProductClientDashboardDataImpl.fromJson;

  @override
  @JsonKey(
      name: "json_data",
      fromJson: _productClientDbFromJson,
      toJson: _productClientDbToJson)
  List<ProductDashboardData>? get productData;

  /// Create a copy of ProductClientDashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductClientDashboardDataImplCopyWith<_$ProductClientDashboardDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductDashboardData _$ProductDashboardDataFromJson(Map<String, dynamic> json) {
  return _ProductDashboardData.fromJson(json);
}

/// @nodoc
mixin _$ProductDashboardData {
  @JsonKey(name: "prod_id")
  String? get prodId => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_name")
  String? get prodName => throw _privateConstructorUsedError;
  @JsonKey(name: "orig_price")
  double? get origPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_price")
  double? get discPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "dis_perc")
  String? get disPerc => throw _privateConstructorUsedError;
  @JsonKey(
      name: "nested_p_tag_key",
      fromJson: _prodPromoTagFromJson,
      toJson: _prodPromoTagToJson)
  List<ProductPromoTag>? get prodPromoTag => throw _privateConstructorUsedError;
  @JsonKey(
      name: "nested_p_img_key",
      fromJson: _imageDataFromJson,
      toJson: _imageDataToJson)
  List<ImageData>? get prodImg => throw _privateConstructorUsedError;

  /// Serializes this ProductDashboardData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDashboardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDashboardDataCopyWith<ProductDashboardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDashboardDataCopyWith<$Res> {
  factory $ProductDashboardDataCopyWith(ProductDashboardData value,
          $Res Function(ProductDashboardData) then) =
      _$ProductDashboardDataCopyWithImpl<$Res, ProductDashboardData>;
  @useResult
  $Res call(
      {@JsonKey(name: "prod_id") String? prodId,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "orig_price") double? origPrice,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "dis_perc") String? disPerc,
      @JsonKey(
          name: "nested_p_tag_key",
          fromJson: _prodPromoTagFromJson,
          toJson: _prodPromoTagToJson)
      List<ProductPromoTag>? prodPromoTag,
      @JsonKey(
          name: "nested_p_img_key",
          fromJson: _imageDataFromJson,
          toJson: _imageDataToJson)
      List<ImageData>? prodImg});
}

/// @nodoc
class _$ProductDashboardDataCopyWithImpl<$Res,
        $Val extends ProductDashboardData>
    implements $ProductDashboardDataCopyWith<$Res> {
  _$ProductDashboardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDashboardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodId = freezed,
    Object? prodName = freezed,
    Object? origPrice = freezed,
    Object? discPrice = freezed,
    Object? disPerc = freezed,
    Object? prodPromoTag = freezed,
    Object? prodImg = freezed,
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
      origPrice: freezed == origPrice
          ? _value.origPrice
          : origPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      disPerc: freezed == disPerc
          ? _value.disPerc
          : disPerc // ignore: cast_nullable_to_non_nullable
              as String?,
      prodPromoTag: freezed == prodPromoTag
          ? _value.prodPromoTag
          : prodPromoTag // ignore: cast_nullable_to_non_nullable
              as List<ProductPromoTag>?,
      prodImg: freezed == prodImg
          ? _value.prodImg
          : prodImg // ignore: cast_nullable_to_non_nullable
              as List<ImageData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDashboardDataImplCopyWith<$Res>
    implements $ProductDashboardDataCopyWith<$Res> {
  factory _$$ProductDashboardDataImplCopyWith(_$ProductDashboardDataImpl value,
          $Res Function(_$ProductDashboardDataImpl) then) =
      __$$ProductDashboardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "prod_id") String? prodId,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "orig_price") double? origPrice,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "dis_perc") String? disPerc,
      @JsonKey(
          name: "nested_p_tag_key",
          fromJson: _prodPromoTagFromJson,
          toJson: _prodPromoTagToJson)
      List<ProductPromoTag>? prodPromoTag,
      @JsonKey(
          name: "nested_p_img_key",
          fromJson: _imageDataFromJson,
          toJson: _imageDataToJson)
      List<ImageData>? prodImg});
}

/// @nodoc
class __$$ProductDashboardDataImplCopyWithImpl<$Res>
    extends _$ProductDashboardDataCopyWithImpl<$Res, _$ProductDashboardDataImpl>
    implements _$$ProductDashboardDataImplCopyWith<$Res> {
  __$$ProductDashboardDataImplCopyWithImpl(_$ProductDashboardDataImpl _value,
      $Res Function(_$ProductDashboardDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDashboardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodId = freezed,
    Object? prodName = freezed,
    Object? origPrice = freezed,
    Object? discPrice = freezed,
    Object? disPerc = freezed,
    Object? prodPromoTag = freezed,
    Object? prodImg = freezed,
  }) {
    return _then(_$ProductDashboardDataImpl(
      prodId: freezed == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      origPrice: freezed == origPrice
          ? _value.origPrice
          : origPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      disPerc: freezed == disPerc
          ? _value.disPerc
          : disPerc // ignore: cast_nullable_to_non_nullable
              as String?,
      prodPromoTag: freezed == prodPromoTag
          ? _value._prodPromoTag
          : prodPromoTag // ignore: cast_nullable_to_non_nullable
              as List<ProductPromoTag>?,
      prodImg: freezed == prodImg
          ? _value._prodImg
          : prodImg // ignore: cast_nullable_to_non_nullable
              as List<ImageData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDashboardDataImpl implements _ProductDashboardData {
  _$ProductDashboardDataImpl(
      {@JsonKey(name: "prod_id") this.prodId,
      @JsonKey(name: "prod_name") this.prodName,
      @JsonKey(name: "orig_price") this.origPrice,
      @JsonKey(name: "disc_price") this.discPrice,
      @JsonKey(name: "dis_perc") this.disPerc,
      @JsonKey(
          name: "nested_p_tag_key",
          fromJson: _prodPromoTagFromJson,
          toJson: _prodPromoTagToJson)
      final List<ProductPromoTag>? prodPromoTag,
      @JsonKey(
          name: "nested_p_img_key",
          fromJson: _imageDataFromJson,
          toJson: _imageDataToJson)
      final List<ImageData>? prodImg})
      : _prodPromoTag = prodPromoTag,
        _prodImg = prodImg;

  factory _$ProductDashboardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDashboardDataImplFromJson(json);

  @override
  @JsonKey(name: "prod_id")
  final String? prodId;
  @override
  @JsonKey(name: "prod_name")
  final String? prodName;
  @override
  @JsonKey(name: "orig_price")
  final double? origPrice;
  @override
  @JsonKey(name: "disc_price")
  final double? discPrice;
  @override
  @JsonKey(name: "dis_perc")
  final String? disPerc;
  final List<ProductPromoTag>? _prodPromoTag;
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

  @override
  String toString() {
    return 'ProductDashboardData(prodId: $prodId, prodName: $prodName, origPrice: $origPrice, discPrice: $discPrice, disPerc: $disPerc, prodPromoTag: $prodPromoTag, prodImg: $prodImg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDashboardDataImpl &&
            (identical(other.prodId, prodId) || other.prodId == prodId) &&
            (identical(other.prodName, prodName) ||
                other.prodName == prodName) &&
            (identical(other.origPrice, origPrice) ||
                other.origPrice == origPrice) &&
            (identical(other.discPrice, discPrice) ||
                other.discPrice == discPrice) &&
            (identical(other.disPerc, disPerc) || other.disPerc == disPerc) &&
            const DeepCollectionEquality()
                .equals(other._prodPromoTag, _prodPromoTag) &&
            const DeepCollectionEquality().equals(other._prodImg, _prodImg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      prodId,
      prodName,
      origPrice,
      discPrice,
      disPerc,
      const DeepCollectionEquality().hash(_prodPromoTag),
      const DeepCollectionEquality().hash(_prodImg));

  /// Create a copy of ProductDashboardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDashboardDataImplCopyWith<_$ProductDashboardDataImpl>
      get copyWith =>
          __$$ProductDashboardDataImplCopyWithImpl<_$ProductDashboardDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDashboardDataImplToJson(
      this,
    );
  }
}

abstract class _ProductDashboardData implements ProductDashboardData {
  factory _ProductDashboardData(
      {@JsonKey(name: "prod_id") final String? prodId,
      @JsonKey(name: "prod_name") final String? prodName,
      @JsonKey(name: "orig_price") final double? origPrice,
      @JsonKey(name: "disc_price") final double? discPrice,
      @JsonKey(name: "dis_perc") final String? disPerc,
      @JsonKey(
          name: "nested_p_tag_key",
          fromJson: _prodPromoTagFromJson,
          toJson: _prodPromoTagToJson)
      final List<ProductPromoTag>? prodPromoTag,
      @JsonKey(
          name: "nested_p_img_key",
          fromJson: _imageDataFromJson,
          toJson: _imageDataToJson)
      final List<ImageData>? prodImg}) = _$ProductDashboardDataImpl;

  factory _ProductDashboardData.fromJson(Map<String, dynamic> json) =
      _$ProductDashboardDataImpl.fromJson;

  @override
  @JsonKey(name: "prod_id")
  String? get prodId;
  @override
  @JsonKey(name: "prod_name")
  String? get prodName;
  @override
  @JsonKey(name: "orig_price")
  double? get origPrice;
  @override
  @JsonKey(name: "disc_price")
  double? get discPrice;
  @override
  @JsonKey(name: "dis_perc")
  String? get disPerc;
  @override
  @JsonKey(
      name: "nested_p_tag_key",
      fromJson: _prodPromoTagFromJson,
      toJson: _prodPromoTagToJson)
  List<ProductPromoTag>? get prodPromoTag;
  @override
  @JsonKey(
      name: "nested_p_img_key",
      fromJson: _imageDataFromJson,
      toJson: _imageDataToJson)
  List<ImageData>? get prodImg;

  /// Create a copy of ProductDashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDashboardDataImplCopyWith<_$ProductDashboardDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductClientPreviewData _$ProductClientPreviewDataFromJson(
    Map<String, dynamic> json) {
  return _ProductClientPreviewData.fromJson(json);
}

/// @nodoc
mixin _$ProductClientPreviewData {
  @JsonKey(fromJson: _prodClientPVFromJson, toJson: _prodClientPVToJson)
  List<ProductPreviewData>? get productData =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductClientPreviewData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductClientPreviewData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductClientPreviewDataCopyWith<ProductClientPreviewData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductClientPreviewDataCopyWith<$Res> {
  factory $ProductClientPreviewDataCopyWith(ProductClientPreviewData value,
          $Res Function(ProductClientPreviewData) then) =
      _$ProductClientPreviewDataCopyWithImpl<$Res, ProductClientPreviewData>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _prodClientPVFromJson, toJson: _prodClientPVToJson)
      List<ProductPreviewData>? productData});
}

/// @nodoc
class _$ProductClientPreviewDataCopyWithImpl<$Res,
        $Val extends ProductClientPreviewData>
    implements $ProductClientPreviewDataCopyWith<$Res> {
  _$ProductClientPreviewDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductClientPreviewData
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
              as List<ProductPreviewData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductClientPreviewDataImplCopyWith<$Res>
    implements $ProductClientPreviewDataCopyWith<$Res> {
  factory _$$ProductClientPreviewDataImplCopyWith(
          _$ProductClientPreviewDataImpl value,
          $Res Function(_$ProductClientPreviewDataImpl) then) =
      __$$ProductClientPreviewDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _prodClientPVFromJson, toJson: _prodClientPVToJson)
      List<ProductPreviewData>? productData});
}

/// @nodoc
class __$$ProductClientPreviewDataImplCopyWithImpl<$Res>
    extends _$ProductClientPreviewDataCopyWithImpl<$Res,
        _$ProductClientPreviewDataImpl>
    implements _$$ProductClientPreviewDataImplCopyWith<$Res> {
  __$$ProductClientPreviewDataImplCopyWithImpl(
      _$ProductClientPreviewDataImpl _value,
      $Res Function(_$ProductClientPreviewDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductClientPreviewData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productData = freezed,
  }) {
    return _then(_$ProductClientPreviewDataImpl(
      productData: freezed == productData
          ? _value._productData
          : productData // ignore: cast_nullable_to_non_nullable
              as List<ProductPreviewData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductClientPreviewDataImpl implements _ProductClientPreviewData {
  _$ProductClientPreviewDataImpl(
      {@JsonKey(fromJson: _prodClientPVFromJson, toJson: _prodClientPVToJson)
      final List<ProductPreviewData>? productData})
      : _productData = productData;

  factory _$ProductClientPreviewDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductClientPreviewDataImplFromJson(json);

  final List<ProductPreviewData>? _productData;
  @override
  @JsonKey(fromJson: _prodClientPVFromJson, toJson: _prodClientPVToJson)
  List<ProductPreviewData>? get productData {
    final value = _productData;
    if (value == null) return null;
    if (_productData is EqualUnmodifiableListView) return _productData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductClientPreviewData(productData: $productData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductClientPreviewDataImpl &&
            const DeepCollectionEquality()
                .equals(other._productData, _productData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productData));

  /// Create a copy of ProductClientPreviewData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductClientPreviewDataImplCopyWith<_$ProductClientPreviewDataImpl>
      get copyWith => __$$ProductClientPreviewDataImplCopyWithImpl<
          _$ProductClientPreviewDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductClientPreviewDataImplToJson(
      this,
    );
  }
}

abstract class _ProductClientPreviewData implements ProductClientPreviewData {
  factory _ProductClientPreviewData(
          {@JsonKey(
              fromJson: _prodClientPVFromJson, toJson: _prodClientPVToJson)
          final List<ProductPreviewData>? productData}) =
      _$ProductClientPreviewDataImpl;

  factory _ProductClientPreviewData.fromJson(Map<String, dynamic> json) =
      _$ProductClientPreviewDataImpl.fromJson;

  @override
  @JsonKey(fromJson: _prodClientPVFromJson, toJson: _prodClientPVToJson)
  List<ProductPreviewData>? get productData;

  /// Create a copy of ProductClientPreviewData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductClientPreviewDataImplCopyWith<_$ProductClientPreviewDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductClientPreviewImgData _$ProductClientPreviewImgDataFromJson(
    Map<String, dynamic> json) {
  return _ProductClientPreviewImgData.fromJson(json);
}

/// @nodoc
mixin _$ProductClientPreviewImgData {
  @JsonKey(
      name: "nested_pv_img_key",
      fromJson: _imageDatawSubFromJson,
      toJson: _imageDatawSubToJson)
  List<ImageDatawSub>? get prodImg => throw _privateConstructorUsedError;

  /// Serializes this ProductClientPreviewImgData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductClientPreviewImgData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductClientPreviewImgDataCopyWith<ProductClientPreviewImgData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductClientPreviewImgDataCopyWith<$Res> {
  factory $ProductClientPreviewImgDataCopyWith(
          ProductClientPreviewImgData value,
          $Res Function(ProductClientPreviewImgData) then) =
      _$ProductClientPreviewImgDataCopyWithImpl<$Res,
          ProductClientPreviewImgData>;
  @useResult
  $Res call(
      {@JsonKey(
          name: "nested_pv_img_key",
          fromJson: _imageDatawSubFromJson,
          toJson: _imageDatawSubToJson)
      List<ImageDatawSub>? prodImg});
}

/// @nodoc
class _$ProductClientPreviewImgDataCopyWithImpl<$Res,
        $Val extends ProductClientPreviewImgData>
    implements $ProductClientPreviewImgDataCopyWith<$Res> {
  _$ProductClientPreviewImgDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductClientPreviewImgData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodImg = freezed,
  }) {
    return _then(_value.copyWith(
      prodImg: freezed == prodImg
          ? _value.prodImg
          : prodImg // ignore: cast_nullable_to_non_nullable
              as List<ImageDatawSub>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductClientPreviewImgDataImplCopyWith<$Res>
    implements $ProductClientPreviewImgDataCopyWith<$Res> {
  factory _$$ProductClientPreviewImgDataImplCopyWith(
          _$ProductClientPreviewImgDataImpl value,
          $Res Function(_$ProductClientPreviewImgDataImpl) then) =
      __$$ProductClientPreviewImgDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: "nested_pv_img_key",
          fromJson: _imageDatawSubFromJson,
          toJson: _imageDatawSubToJson)
      List<ImageDatawSub>? prodImg});
}

/// @nodoc
class __$$ProductClientPreviewImgDataImplCopyWithImpl<$Res>
    extends _$ProductClientPreviewImgDataCopyWithImpl<$Res,
        _$ProductClientPreviewImgDataImpl>
    implements _$$ProductClientPreviewImgDataImplCopyWith<$Res> {
  __$$ProductClientPreviewImgDataImplCopyWithImpl(
      _$ProductClientPreviewImgDataImpl _value,
      $Res Function(_$ProductClientPreviewImgDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductClientPreviewImgData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodImg = freezed,
  }) {
    return _then(_$ProductClientPreviewImgDataImpl(
      prodImg: freezed == prodImg
          ? _value._prodImg
          : prodImg // ignore: cast_nullable_to_non_nullable
              as List<ImageDatawSub>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductClientPreviewImgDataImpl
    implements _ProductClientPreviewImgData {
  _$ProductClientPreviewImgDataImpl(
      {@JsonKey(
          name: "nested_pv_img_key",
          fromJson: _imageDatawSubFromJson,
          toJson: _imageDatawSubToJson)
      final List<ImageDatawSub>? prodImg})
      : _prodImg = prodImg;

  factory _$ProductClientPreviewImgDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductClientPreviewImgDataImplFromJson(json);

  final List<ImageDatawSub>? _prodImg;
  @override
  @JsonKey(
      name: "nested_pv_img_key",
      fromJson: _imageDatawSubFromJson,
      toJson: _imageDatawSubToJson)
  List<ImageDatawSub>? get prodImg {
    final value = _prodImg;
    if (value == null) return null;
    if (_prodImg is EqualUnmodifiableListView) return _prodImg;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductClientPreviewImgData(prodImg: $prodImg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductClientPreviewImgDataImpl &&
            const DeepCollectionEquality().equals(other._prodImg, _prodImg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_prodImg));

  /// Create a copy of ProductClientPreviewImgData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductClientPreviewImgDataImplCopyWith<_$ProductClientPreviewImgDataImpl>
      get copyWith => __$$ProductClientPreviewImgDataImplCopyWithImpl<
          _$ProductClientPreviewImgDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductClientPreviewImgDataImplToJson(
      this,
    );
  }
}

abstract class _ProductClientPreviewImgData
    implements ProductClientPreviewImgData {
  factory _ProductClientPreviewImgData(
      {@JsonKey(
          name: "nested_pv_img_key",
          fromJson: _imageDatawSubFromJson,
          toJson: _imageDatawSubToJson)
      final List<ImageDatawSub>? prodImg}) = _$ProductClientPreviewImgDataImpl;

  factory _ProductClientPreviewImgData.fromJson(Map<String, dynamic> json) =
      _$ProductClientPreviewImgDataImpl.fromJson;

  @override
  @JsonKey(
      name: "nested_pv_img_key",
      fromJson: _imageDatawSubFromJson,
      toJson: _imageDatawSubToJson)
  List<ImageDatawSub>? get prodImg;

  /// Create a copy of ProductClientPreviewImgData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductClientPreviewImgDataImplCopyWith<_$ProductClientPreviewImgDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductClientPreviewFullDescData _$ProductClientPreviewFullDescDataFromJson(
    Map<String, dynamic> json) {
  return _ProductClientPreviewFullDescData.fromJson(json);
}

/// @nodoc
mixin _$ProductClientPreviewFullDescData {
  @JsonKey(name: "desc_data", toJson: _prodDescToJson)
  String? get prodDescription => throw _privateConstructorUsedError;

  /// Serializes this ProductClientPreviewFullDescData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductClientPreviewFullDescData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductClientPreviewFullDescDataCopyWith<ProductClientPreviewFullDescData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductClientPreviewFullDescDataCopyWith<$Res> {
  factory $ProductClientPreviewFullDescDataCopyWith(
          ProductClientPreviewFullDescData value,
          $Res Function(ProductClientPreviewFullDescData) then) =
      _$ProductClientPreviewFullDescDataCopyWithImpl<$Res,
          ProductClientPreviewFullDescData>;
  @useResult
  $Res call(
      {@JsonKey(name: "desc_data", toJson: _prodDescToJson)
      String? prodDescription});
}

/// @nodoc
class _$ProductClientPreviewFullDescDataCopyWithImpl<$Res,
        $Val extends ProductClientPreviewFullDescData>
    implements $ProductClientPreviewFullDescDataCopyWith<$Res> {
  _$ProductClientPreviewFullDescDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductClientPreviewFullDescData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodDescription = freezed,
  }) {
    return _then(_value.copyWith(
      prodDescription: freezed == prodDescription
          ? _value.prodDescription
          : prodDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductClientPreviewFullDescDataImplCopyWith<$Res>
    implements $ProductClientPreviewFullDescDataCopyWith<$Res> {
  factory _$$ProductClientPreviewFullDescDataImplCopyWith(
          _$ProductClientPreviewFullDescDataImpl value,
          $Res Function(_$ProductClientPreviewFullDescDataImpl) then) =
      __$$ProductClientPreviewFullDescDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "desc_data", toJson: _prodDescToJson)
      String? prodDescription});
}

/// @nodoc
class __$$ProductClientPreviewFullDescDataImplCopyWithImpl<$Res>
    extends _$ProductClientPreviewFullDescDataCopyWithImpl<$Res,
        _$ProductClientPreviewFullDescDataImpl>
    implements _$$ProductClientPreviewFullDescDataImplCopyWith<$Res> {
  __$$ProductClientPreviewFullDescDataImplCopyWithImpl(
      _$ProductClientPreviewFullDescDataImpl _value,
      $Res Function(_$ProductClientPreviewFullDescDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductClientPreviewFullDescData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodDescription = freezed,
  }) {
    return _then(_$ProductClientPreviewFullDescDataImpl(
      prodDescription: freezed == prodDescription
          ? _value.prodDescription
          : prodDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductClientPreviewFullDescDataImpl
    implements _ProductClientPreviewFullDescData {
  _$ProductClientPreviewFullDescDataImpl(
      {@JsonKey(name: "desc_data", toJson: _prodDescToJson)
      this.prodDescription});

  factory _$ProductClientPreviewFullDescDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductClientPreviewFullDescDataImplFromJson(json);

  @override
  @JsonKey(name: "desc_data", toJson: _prodDescToJson)
  final String? prodDescription;

  @override
  String toString() {
    return 'ProductClientPreviewFullDescData(prodDescription: $prodDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductClientPreviewFullDescDataImpl &&
            (identical(other.prodDescription, prodDescription) ||
                other.prodDescription == prodDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, prodDescription);

  /// Create a copy of ProductClientPreviewFullDescData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductClientPreviewFullDescDataImplCopyWith<
          _$ProductClientPreviewFullDescDataImpl>
      get copyWith => __$$ProductClientPreviewFullDescDataImplCopyWithImpl<
          _$ProductClientPreviewFullDescDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductClientPreviewFullDescDataImplToJson(
      this,
    );
  }
}

abstract class _ProductClientPreviewFullDescData
    implements ProductClientPreviewFullDescData {
  factory _ProductClientPreviewFullDescData(
      {@JsonKey(name: "desc_data", toJson: _prodDescToJson)
      final String? prodDescription}) = _$ProductClientPreviewFullDescDataImpl;

  factory _ProductClientPreviewFullDescData.fromJson(
          Map<String, dynamic> json) =
      _$ProductClientPreviewFullDescDataImpl.fromJson;

  @override
  @JsonKey(name: "desc_data", toJson: _prodDescToJson)
  String? get prodDescription;

  /// Create a copy of ProductClientPreviewFullDescData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductClientPreviewFullDescDataImplCopyWith<
          _$ProductClientPreviewFullDescDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductPreviewData _$ProductPreviewDataFromJson(Map<String, dynamic> json) {
  return _ProductPreviewData.fromJson(json);
}

/// @nodoc
mixin _$ProductPreviewData {
  @JsonKey(name: "nested_prod_var")
  List<ProductVariantGetterData>? get prodVarData =>
      throw _privateConstructorUsedError;
  @JsonKey(
      name: "nested_prod_key",
      fromJson: _prodMainPropFromJson,
      toJson: _prodMainPropToJson)
  List<ProductMainPropertiesPreviewData>? get prodMainPropPD =>
      throw _privateConstructorUsedError;
  @JsonKey(
      name: "nested_p_tag_key",
      fromJson: _prodPromoTagFromJson,
      toJson: _prodPromoTagToJson)
  List<ProductPromoTag>? get prodPromoTag => throw _privateConstructorUsedError;
  @JsonKey(
      name: "nested_specs_key",
      fromJson: _prodKeyValFromJson,
      toJson: _prodKeyValToJson)
  List<ProductClientKeyValue>? get prodKeyVal =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductPreviewData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductPreviewData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductPreviewDataCopyWith<ProductPreviewData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPreviewDataCopyWith<$Res> {
  factory $ProductPreviewDataCopyWith(
          ProductPreviewData value, $Res Function(ProductPreviewData) then) =
      _$ProductPreviewDataCopyWithImpl<$Res, ProductPreviewData>;
  @useResult
  $Res call(
      {@JsonKey(name: "nested_prod_var")
      List<ProductVariantGetterData>? prodVarData,
      @JsonKey(
          name: "nested_prod_key",
          fromJson: _prodMainPropFromJson,
          toJson: _prodMainPropToJson)
      List<ProductMainPropertiesPreviewData>? prodMainPropPD,
      @JsonKey(
          name: "nested_p_tag_key",
          fromJson: _prodPromoTagFromJson,
          toJson: _prodPromoTagToJson)
      List<ProductPromoTag>? prodPromoTag,
      @JsonKey(
          name: "nested_specs_key",
          fromJson: _prodKeyValFromJson,
          toJson: _prodKeyValToJson)
      List<ProductClientKeyValue>? prodKeyVal});
}

/// @nodoc
class _$ProductPreviewDataCopyWithImpl<$Res, $Val extends ProductPreviewData>
    implements $ProductPreviewDataCopyWith<$Res> {
  _$ProductPreviewDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductPreviewData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodVarData = freezed,
    Object? prodMainPropPD = freezed,
    Object? prodPromoTag = freezed,
    Object? prodKeyVal = freezed,
  }) {
    return _then(_value.copyWith(
      prodVarData: freezed == prodVarData
          ? _value.prodVarData
          : prodVarData // ignore: cast_nullable_to_non_nullable
              as List<ProductVariantGetterData>?,
      prodMainPropPD: freezed == prodMainPropPD
          ? _value.prodMainPropPD
          : prodMainPropPD // ignore: cast_nullable_to_non_nullable
              as List<ProductMainPropertiesPreviewData>?,
      prodPromoTag: freezed == prodPromoTag
          ? _value.prodPromoTag
          : prodPromoTag // ignore: cast_nullable_to_non_nullable
              as List<ProductPromoTag>?,
      prodKeyVal: freezed == prodKeyVal
          ? _value.prodKeyVal
          : prodKeyVal // ignore: cast_nullable_to_non_nullable
              as List<ProductClientKeyValue>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductPreviewDataImplCopyWith<$Res>
    implements $ProductPreviewDataCopyWith<$Res> {
  factory _$$ProductPreviewDataImplCopyWith(_$ProductPreviewDataImpl value,
          $Res Function(_$ProductPreviewDataImpl) then) =
      __$$ProductPreviewDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "nested_prod_var")
      List<ProductVariantGetterData>? prodVarData,
      @JsonKey(
          name: "nested_prod_key",
          fromJson: _prodMainPropFromJson,
          toJson: _prodMainPropToJson)
      List<ProductMainPropertiesPreviewData>? prodMainPropPD,
      @JsonKey(
          name: "nested_p_tag_key",
          fromJson: _prodPromoTagFromJson,
          toJson: _prodPromoTagToJson)
      List<ProductPromoTag>? prodPromoTag,
      @JsonKey(
          name: "nested_specs_key",
          fromJson: _prodKeyValFromJson,
          toJson: _prodKeyValToJson)
      List<ProductClientKeyValue>? prodKeyVal});
}

/// @nodoc
class __$$ProductPreviewDataImplCopyWithImpl<$Res>
    extends _$ProductPreviewDataCopyWithImpl<$Res, _$ProductPreviewDataImpl>
    implements _$$ProductPreviewDataImplCopyWith<$Res> {
  __$$ProductPreviewDataImplCopyWithImpl(_$ProductPreviewDataImpl _value,
      $Res Function(_$ProductPreviewDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductPreviewData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodVarData = freezed,
    Object? prodMainPropPD = freezed,
    Object? prodPromoTag = freezed,
    Object? prodKeyVal = freezed,
  }) {
    return _then(_$ProductPreviewDataImpl(
      prodVarData: freezed == prodVarData
          ? _value._prodVarData
          : prodVarData // ignore: cast_nullable_to_non_nullable
              as List<ProductVariantGetterData>?,
      prodMainPropPD: freezed == prodMainPropPD
          ? _value._prodMainPropPD
          : prodMainPropPD // ignore: cast_nullable_to_non_nullable
              as List<ProductMainPropertiesPreviewData>?,
      prodPromoTag: freezed == prodPromoTag
          ? _value._prodPromoTag
          : prodPromoTag // ignore: cast_nullable_to_non_nullable
              as List<ProductPromoTag>?,
      prodKeyVal: freezed == prodKeyVal
          ? _value._prodKeyVal
          : prodKeyVal // ignore: cast_nullable_to_non_nullable
              as List<ProductClientKeyValue>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductPreviewDataImpl implements _ProductPreviewData {
  _$ProductPreviewDataImpl(
      {@JsonKey(name: "nested_prod_var")
      final List<ProductVariantGetterData>? prodVarData,
      @JsonKey(
          name: "nested_prod_key",
          fromJson: _prodMainPropFromJson,
          toJson: _prodMainPropToJson)
      final List<ProductMainPropertiesPreviewData>? prodMainPropPD,
      @JsonKey(
          name: "nested_p_tag_key",
          fromJson: _prodPromoTagFromJson,
          toJson: _prodPromoTagToJson)
      final List<ProductPromoTag>? prodPromoTag,
      @JsonKey(
          name: "nested_specs_key",
          fromJson: _prodKeyValFromJson,
          toJson: _prodKeyValToJson)
      final List<ProductClientKeyValue>? prodKeyVal})
      : _prodVarData = prodVarData,
        _prodMainPropPD = prodMainPropPD,
        _prodPromoTag = prodPromoTag,
        _prodKeyVal = prodKeyVal;

  factory _$ProductPreviewDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductPreviewDataImplFromJson(json);

  final List<ProductVariantGetterData>? _prodVarData;
  @override
  @JsonKey(name: "nested_prod_var")
  List<ProductVariantGetterData>? get prodVarData {
    final value = _prodVarData;
    if (value == null) return null;
    if (_prodVarData is EqualUnmodifiableListView) return _prodVarData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductMainPropertiesPreviewData>? _prodMainPropPD;
  @override
  @JsonKey(
      name: "nested_prod_key",
      fromJson: _prodMainPropFromJson,
      toJson: _prodMainPropToJson)
  List<ProductMainPropertiesPreviewData>? get prodMainPropPD {
    final value = _prodMainPropPD;
    if (value == null) return null;
    if (_prodMainPropPD is EqualUnmodifiableListView) return _prodMainPropPD;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductPromoTag>? _prodPromoTag;
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

  final List<ProductClientKeyValue>? _prodKeyVal;
  @override
  @JsonKey(
      name: "nested_specs_key",
      fromJson: _prodKeyValFromJson,
      toJson: _prodKeyValToJson)
  List<ProductClientKeyValue>? get prodKeyVal {
    final value = _prodKeyVal;
    if (value == null) return null;
    if (_prodKeyVal is EqualUnmodifiableListView) return _prodKeyVal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductPreviewData(prodVarData: $prodVarData, prodMainPropPD: $prodMainPropPD, prodPromoTag: $prodPromoTag, prodKeyVal: $prodKeyVal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductPreviewDataImpl &&
            const DeepCollectionEquality()
                .equals(other._prodVarData, _prodVarData) &&
            const DeepCollectionEquality()
                .equals(other._prodMainPropPD, _prodMainPropPD) &&
            const DeepCollectionEquality()
                .equals(other._prodPromoTag, _prodPromoTag) &&
            const DeepCollectionEquality()
                .equals(other._prodKeyVal, _prodKeyVal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_prodVarData),
      const DeepCollectionEquality().hash(_prodMainPropPD),
      const DeepCollectionEquality().hash(_prodPromoTag),
      const DeepCollectionEquality().hash(_prodKeyVal));

  /// Create a copy of ProductPreviewData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductPreviewDataImplCopyWith<_$ProductPreviewDataImpl> get copyWith =>
      __$$ProductPreviewDataImplCopyWithImpl<_$ProductPreviewDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductPreviewDataImplToJson(
      this,
    );
  }
}

abstract class _ProductPreviewData implements ProductPreviewData {
  factory _ProductPreviewData(
          {@JsonKey(name: "nested_prod_var")
          final List<ProductVariantGetterData>? prodVarData,
          @JsonKey(
              name: "nested_prod_key",
              fromJson: _prodMainPropFromJson,
              toJson: _prodMainPropToJson)
          final List<ProductMainPropertiesPreviewData>? prodMainPropPD,
          @JsonKey(
              name: "nested_p_tag_key",
              fromJson: _prodPromoTagFromJson,
              toJson: _prodPromoTagToJson)
          final List<ProductPromoTag>? prodPromoTag,
          @JsonKey(
              name: "nested_specs_key",
              fromJson: _prodKeyValFromJson,
              toJson: _prodKeyValToJson)
          final List<ProductClientKeyValue>? prodKeyVal}) =
      _$ProductPreviewDataImpl;

  factory _ProductPreviewData.fromJson(Map<String, dynamic> json) =
      _$ProductPreviewDataImpl.fromJson;

  @override
  @JsonKey(name: "nested_prod_var")
  List<ProductVariantGetterData>? get prodVarData;
  @override
  @JsonKey(
      name: "nested_prod_key",
      fromJson: _prodMainPropFromJson,
      toJson: _prodMainPropToJson)
  List<ProductMainPropertiesPreviewData>? get prodMainPropPD;
  @override
  @JsonKey(
      name: "nested_p_tag_key",
      fromJson: _prodPromoTagFromJson,
      toJson: _prodPromoTagToJson)
  List<ProductPromoTag>? get prodPromoTag;
  @override
  @JsonKey(
      name: "nested_specs_key",
      fromJson: _prodKeyValFromJson,
      toJson: _prodKeyValToJson)
  List<ProductClientKeyValue>? get prodKeyVal;

  /// Create a copy of ProductPreviewData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductPreviewDataImplCopyWith<_$ProductPreviewDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BadgeData _$BadgeDataFromJson(Map<String, dynamic> json) {
  return _BadgeData.fromJson(json);
}

/// @nodoc
mixin _$BadgeData {
  List<BadgeCounts>? get badgeData => throw _privateConstructorUsedError;

  /// Serializes this BadgeData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BadgeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BadgeDataCopyWith<BadgeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgeDataCopyWith<$Res> {
  factory $BadgeDataCopyWith(BadgeData value, $Res Function(BadgeData) then) =
      _$BadgeDataCopyWithImpl<$Res, BadgeData>;
  @useResult
  $Res call({List<BadgeCounts>? badgeData});
}

/// @nodoc
class _$BadgeDataCopyWithImpl<$Res, $Val extends BadgeData>
    implements $BadgeDataCopyWith<$Res> {
  _$BadgeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BadgeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? badgeData = freezed,
  }) {
    return _then(_value.copyWith(
      badgeData: freezed == badgeData
          ? _value.badgeData
          : badgeData // ignore: cast_nullable_to_non_nullable
              as List<BadgeCounts>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BadgeDataImplCopyWith<$Res>
    implements $BadgeDataCopyWith<$Res> {
  factory _$$BadgeDataImplCopyWith(
          _$BadgeDataImpl value, $Res Function(_$BadgeDataImpl) then) =
      __$$BadgeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BadgeCounts>? badgeData});
}

/// @nodoc
class __$$BadgeDataImplCopyWithImpl<$Res>
    extends _$BadgeDataCopyWithImpl<$Res, _$BadgeDataImpl>
    implements _$$BadgeDataImplCopyWith<$Res> {
  __$$BadgeDataImplCopyWithImpl(
      _$BadgeDataImpl _value, $Res Function(_$BadgeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BadgeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? badgeData = freezed,
  }) {
    return _then(_$BadgeDataImpl(
      badgeData: freezed == badgeData
          ? _value._badgeData
          : badgeData // ignore: cast_nullable_to_non_nullable
              as List<BadgeCounts>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BadgeDataImpl implements _BadgeData {
  _$BadgeDataImpl({final List<BadgeCounts>? badgeData})
      : _badgeData = badgeData;

  factory _$BadgeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BadgeDataImplFromJson(json);

  final List<BadgeCounts>? _badgeData;
  @override
  List<BadgeCounts>? get badgeData {
    final value = _badgeData;
    if (value == null) return null;
    if (_badgeData is EqualUnmodifiableListView) return _badgeData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BadgeData(badgeData: $badgeData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadgeDataImpl &&
            const DeepCollectionEquality()
                .equals(other._badgeData, _badgeData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_badgeData));

  /// Create a copy of BadgeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BadgeDataImplCopyWith<_$BadgeDataImpl> get copyWith =>
      __$$BadgeDataImplCopyWithImpl<_$BadgeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BadgeDataImplToJson(
      this,
    );
  }
}

abstract class _BadgeData implements BadgeData {
  factory _BadgeData({final List<BadgeCounts>? badgeData}) = _$BadgeDataImpl;

  factory _BadgeData.fromJson(Map<String, dynamic> json) =
      _$BadgeDataImpl.fromJson;

  @override
  List<BadgeCounts>? get badgeData;

  /// Create a copy of BadgeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BadgeDataImplCopyWith<_$BadgeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BadgeCounts _$BadgeCountsFromJson(Map<String, dynamic> json) {
  return _BadgeCounts.fromJson(json);
}

/// @nodoc
mixin _$BadgeCounts {
  @JsonKey(name: "cart_badge_cnt")
  String? get cartBdgeCnt => throw _privateConstructorUsedError;
  @JsonKey(name: "mssg_badge_cnt")
  String? get mssgBdgeCnt => throw _privateConstructorUsedError;

  /// Serializes this BadgeCounts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BadgeCounts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BadgeCountsCopyWith<BadgeCounts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgeCountsCopyWith<$Res> {
  factory $BadgeCountsCopyWith(
          BadgeCounts value, $Res Function(BadgeCounts) then) =
      _$BadgeCountsCopyWithImpl<$Res, BadgeCounts>;
  @useResult
  $Res call(
      {@JsonKey(name: "cart_badge_cnt") String? cartBdgeCnt,
      @JsonKey(name: "mssg_badge_cnt") String? mssgBdgeCnt});
}

/// @nodoc
class _$BadgeCountsCopyWithImpl<$Res, $Val extends BadgeCounts>
    implements $BadgeCountsCopyWith<$Res> {
  _$BadgeCountsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BadgeCounts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartBdgeCnt = freezed,
    Object? mssgBdgeCnt = freezed,
  }) {
    return _then(_value.copyWith(
      cartBdgeCnt: freezed == cartBdgeCnt
          ? _value.cartBdgeCnt
          : cartBdgeCnt // ignore: cast_nullable_to_non_nullable
              as String?,
      mssgBdgeCnt: freezed == mssgBdgeCnt
          ? _value.mssgBdgeCnt
          : mssgBdgeCnt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BadgeCountsImplCopyWith<$Res>
    implements $BadgeCountsCopyWith<$Res> {
  factory _$$BadgeCountsImplCopyWith(
          _$BadgeCountsImpl value, $Res Function(_$BadgeCountsImpl) then) =
      __$$BadgeCountsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "cart_badge_cnt") String? cartBdgeCnt,
      @JsonKey(name: "mssg_badge_cnt") String? mssgBdgeCnt});
}

/// @nodoc
class __$$BadgeCountsImplCopyWithImpl<$Res>
    extends _$BadgeCountsCopyWithImpl<$Res, _$BadgeCountsImpl>
    implements _$$BadgeCountsImplCopyWith<$Res> {
  __$$BadgeCountsImplCopyWithImpl(
      _$BadgeCountsImpl _value, $Res Function(_$BadgeCountsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BadgeCounts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartBdgeCnt = freezed,
    Object? mssgBdgeCnt = freezed,
  }) {
    return _then(_$BadgeCountsImpl(
      cartBdgeCnt: freezed == cartBdgeCnt
          ? _value.cartBdgeCnt
          : cartBdgeCnt // ignore: cast_nullable_to_non_nullable
              as String?,
      mssgBdgeCnt: freezed == mssgBdgeCnt
          ? _value.mssgBdgeCnt
          : mssgBdgeCnt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BadgeCountsImpl implements _BadgeCounts {
  _$BadgeCountsImpl(
      {@JsonKey(name: "cart_badge_cnt") this.cartBdgeCnt,
      @JsonKey(name: "mssg_badge_cnt") this.mssgBdgeCnt});

  factory _$BadgeCountsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BadgeCountsImplFromJson(json);

  @override
  @JsonKey(name: "cart_badge_cnt")
  final String? cartBdgeCnt;
  @override
  @JsonKey(name: "mssg_badge_cnt")
  final String? mssgBdgeCnt;

  @override
  String toString() {
    return 'BadgeCounts(cartBdgeCnt: $cartBdgeCnt, mssgBdgeCnt: $mssgBdgeCnt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadgeCountsImpl &&
            (identical(other.cartBdgeCnt, cartBdgeCnt) ||
                other.cartBdgeCnt == cartBdgeCnt) &&
            (identical(other.mssgBdgeCnt, mssgBdgeCnt) ||
                other.mssgBdgeCnt == mssgBdgeCnt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cartBdgeCnt, mssgBdgeCnt);

  /// Create a copy of BadgeCounts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BadgeCountsImplCopyWith<_$BadgeCountsImpl> get copyWith =>
      __$$BadgeCountsImplCopyWithImpl<_$BadgeCountsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BadgeCountsImplToJson(
      this,
    );
  }
}

abstract class _BadgeCounts implements BadgeCounts {
  factory _BadgeCounts(
          {@JsonKey(name: "cart_badge_cnt") final String? cartBdgeCnt,
          @JsonKey(name: "mssg_badge_cnt") final String? mssgBdgeCnt}) =
      _$BadgeCountsImpl;

  factory _BadgeCounts.fromJson(Map<String, dynamic> json) =
      _$BadgeCountsImpl.fromJson;

  @override
  @JsonKey(name: "cart_badge_cnt")
  String? get cartBdgeCnt;
  @override
  @JsonKey(name: "mssg_badge_cnt")
  String? get mssgBdgeCnt;

  /// Create a copy of BadgeCounts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BadgeCountsImplCopyWith<_$BadgeCountsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductVariantGetterData _$ProductVariantGetterDataFromJson(
    Map<String, dynamic> json) {
  return _ProductVariantGetterData.fromJson(json);
}

/// @nodoc
mixin _$ProductVariantGetterData {
  @JsonKey(name: "prod_var_id")
  String? get prodVarId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_cnt")
  int? get prodVarCount => throw _privateConstructorUsedError;

  /// Serializes this ProductVariantGetterData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductVariantGetterData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductVariantGetterDataCopyWith<ProductVariantGetterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariantGetterDataCopyWith<$Res> {
  factory $ProductVariantGetterDataCopyWith(ProductVariantGetterData value,
          $Res Function(ProductVariantGetterData) then) =
      _$ProductVariantGetterDataCopyWithImpl<$Res, ProductVariantGetterData>;
  @useResult
  $Res call(
      {@JsonKey(name: "prod_var_id") String? prodVarId,
      @JsonKey(name: "variant_cnt") int? prodVarCount});
}

/// @nodoc
class _$ProductVariantGetterDataCopyWithImpl<$Res,
        $Val extends ProductVariantGetterData>
    implements $ProductVariantGetterDataCopyWith<$Res> {
  _$ProductVariantGetterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductVariantGetterData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodVarId = freezed,
    Object? prodVarCount = freezed,
  }) {
    return _then(_value.copyWith(
      prodVarId: freezed == prodVarId
          ? _value.prodVarId
          : prodVarId // ignore: cast_nullable_to_non_nullable
              as String?,
      prodVarCount: freezed == prodVarCount
          ? _value.prodVarCount
          : prodVarCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductVariantGetterDataImplCopyWith<$Res>
    implements $ProductVariantGetterDataCopyWith<$Res> {
  factory _$$ProductVariantGetterDataImplCopyWith(
          _$ProductVariantGetterDataImpl value,
          $Res Function(_$ProductVariantGetterDataImpl) then) =
      __$$ProductVariantGetterDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "prod_var_id") String? prodVarId,
      @JsonKey(name: "variant_cnt") int? prodVarCount});
}

/// @nodoc
class __$$ProductVariantGetterDataImplCopyWithImpl<$Res>
    extends _$ProductVariantGetterDataCopyWithImpl<$Res,
        _$ProductVariantGetterDataImpl>
    implements _$$ProductVariantGetterDataImplCopyWith<$Res> {
  __$$ProductVariantGetterDataImplCopyWithImpl(
      _$ProductVariantGetterDataImpl _value,
      $Res Function(_$ProductVariantGetterDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductVariantGetterData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodVarId = freezed,
    Object? prodVarCount = freezed,
  }) {
    return _then(_$ProductVariantGetterDataImpl(
      prodVarId: freezed == prodVarId
          ? _value.prodVarId
          : prodVarId // ignore: cast_nullable_to_non_nullable
              as String?,
      prodVarCount: freezed == prodVarCount
          ? _value.prodVarCount
          : prodVarCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductVariantGetterDataImpl implements _ProductVariantGetterData {
  _$ProductVariantGetterDataImpl(
      {@JsonKey(name: "prod_var_id") this.prodVarId,
      @JsonKey(name: "variant_cnt") this.prodVarCount});

  factory _$ProductVariantGetterDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductVariantGetterDataImplFromJson(json);

  @override
  @JsonKey(name: "prod_var_id")
  final String? prodVarId;
  @override
  @JsonKey(name: "variant_cnt")
  final int? prodVarCount;

  @override
  String toString() {
    return 'ProductVariantGetterData(prodVarId: $prodVarId, prodVarCount: $prodVarCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVariantGetterDataImpl &&
            (identical(other.prodVarId, prodVarId) ||
                other.prodVarId == prodVarId) &&
            (identical(other.prodVarCount, prodVarCount) ||
                other.prodVarCount == prodVarCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, prodVarId, prodVarCount);

  /// Create a copy of ProductVariantGetterData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVariantGetterDataImplCopyWith<_$ProductVariantGetterDataImpl>
      get copyWith => __$$ProductVariantGetterDataImplCopyWithImpl<
          _$ProductVariantGetterDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVariantGetterDataImplToJson(
      this,
    );
  }
}

abstract class _ProductVariantGetterData implements ProductVariantGetterData {
  factory _ProductVariantGetterData(
          {@JsonKey(name: "prod_var_id") final String? prodVarId,
          @JsonKey(name: "variant_cnt") final int? prodVarCount}) =
      _$ProductVariantGetterDataImpl;

  factory _ProductVariantGetterData.fromJson(Map<String, dynamic> json) =
      _$ProductVariantGetterDataImpl.fromJson;

  @override
  @JsonKey(name: "prod_var_id")
  String? get prodVarId;
  @override
  @JsonKey(name: "variant_cnt")
  int? get prodVarCount;

  /// Create a copy of ProductVariantGetterData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductVariantGetterDataImplCopyWith<_$ProductVariantGetterDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductMainPropertiesPreviewData _$ProductMainPropertiesPreviewDataFromJson(
    Map<String, dynamic> json) {
  return _ProductMainPropertiesPreviewData.fromJson(json);
}

/// @nodoc
mixin _$ProductMainPropertiesPreviewData {
  @JsonKey(name: "prod_id")
  String? get prodId => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_name")
  String? get prodName => throw _privateConstructorUsedError;
  @JsonKey(name: "orig_price")
  double? get origPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_price")
  double? get discPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "dis_perc")
  String? get disPerc => throw _privateConstructorUsedError;
  @JsonKey(name: "stock")
  int? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: "availability")
  bool? get availability => throw _privateConstructorUsedError;

  /// Serializes this ProductMainPropertiesPreviewData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductMainPropertiesPreviewData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductMainPropertiesPreviewDataCopyWith<ProductMainPropertiesPreviewData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductMainPropertiesPreviewDataCopyWith<$Res> {
  factory $ProductMainPropertiesPreviewDataCopyWith(
          ProductMainPropertiesPreviewData value,
          $Res Function(ProductMainPropertiesPreviewData) then) =
      _$ProductMainPropertiesPreviewDataCopyWithImpl<$Res,
          ProductMainPropertiesPreviewData>;
  @useResult
  $Res call(
      {@JsonKey(name: "prod_id") String? prodId,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "orig_price") double? origPrice,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "dis_perc") String? disPerc,
      @JsonKey(name: "stock") int? stock,
      @JsonKey(name: "availability") bool? availability});
}

/// @nodoc
class _$ProductMainPropertiesPreviewDataCopyWithImpl<$Res,
        $Val extends ProductMainPropertiesPreviewData>
    implements $ProductMainPropertiesPreviewDataCopyWith<$Res> {
  _$ProductMainPropertiesPreviewDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductMainPropertiesPreviewData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodId = freezed,
    Object? prodName = freezed,
    Object? origPrice = freezed,
    Object? discPrice = freezed,
    Object? disPerc = freezed,
    Object? stock = freezed,
    Object? availability = freezed,
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
      origPrice: freezed == origPrice
          ? _value.origPrice
          : origPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      disPerc: freezed == disPerc
          ? _value.disPerc
          : disPerc // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductMainPropertiesPreviewDataImplCopyWith<$Res>
    implements $ProductMainPropertiesPreviewDataCopyWith<$Res> {
  factory _$$ProductMainPropertiesPreviewDataImplCopyWith(
          _$ProductMainPropertiesPreviewDataImpl value,
          $Res Function(_$ProductMainPropertiesPreviewDataImpl) then) =
      __$$ProductMainPropertiesPreviewDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "prod_id") String? prodId,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "orig_price") double? origPrice,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "dis_perc") String? disPerc,
      @JsonKey(name: "stock") int? stock,
      @JsonKey(name: "availability") bool? availability});
}

/// @nodoc
class __$$ProductMainPropertiesPreviewDataImplCopyWithImpl<$Res>
    extends _$ProductMainPropertiesPreviewDataCopyWithImpl<$Res,
        _$ProductMainPropertiesPreviewDataImpl>
    implements _$$ProductMainPropertiesPreviewDataImplCopyWith<$Res> {
  __$$ProductMainPropertiesPreviewDataImplCopyWithImpl(
      _$ProductMainPropertiesPreviewDataImpl _value,
      $Res Function(_$ProductMainPropertiesPreviewDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductMainPropertiesPreviewData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodId = freezed,
    Object? prodName = freezed,
    Object? origPrice = freezed,
    Object? discPrice = freezed,
    Object? disPerc = freezed,
    Object? stock = freezed,
    Object? availability = freezed,
  }) {
    return _then(_$ProductMainPropertiesPreviewDataImpl(
      prodId: freezed == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      origPrice: freezed == origPrice
          ? _value.origPrice
          : origPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      disPerc: freezed == disPerc
          ? _value.disPerc
          : disPerc // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductMainPropertiesPreviewDataImpl
    implements _ProductMainPropertiesPreviewData {
  _$ProductMainPropertiesPreviewDataImpl(
      {@JsonKey(name: "prod_id") this.prodId,
      @JsonKey(name: "prod_name") this.prodName,
      @JsonKey(name: "orig_price") this.origPrice,
      @JsonKey(name: "disc_price") this.discPrice,
      @JsonKey(name: "dis_perc") this.disPerc,
      @JsonKey(name: "stock") this.stock,
      @JsonKey(name: "availability") this.availability});

  factory _$ProductMainPropertiesPreviewDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductMainPropertiesPreviewDataImplFromJson(json);

  @override
  @JsonKey(name: "prod_id")
  final String? prodId;
  @override
  @JsonKey(name: "prod_name")
  final String? prodName;
  @override
  @JsonKey(name: "orig_price")
  final double? origPrice;
  @override
  @JsonKey(name: "disc_price")
  final double? discPrice;
  @override
  @JsonKey(name: "dis_perc")
  final String? disPerc;
  @override
  @JsonKey(name: "stock")
  final int? stock;
  @override
  @JsonKey(name: "availability")
  final bool? availability;

  @override
  String toString() {
    return 'ProductMainPropertiesPreviewData(prodId: $prodId, prodName: $prodName, origPrice: $origPrice, discPrice: $discPrice, disPerc: $disPerc, stock: $stock, availability: $availability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductMainPropertiesPreviewDataImpl &&
            (identical(other.prodId, prodId) || other.prodId == prodId) &&
            (identical(other.prodName, prodName) ||
                other.prodName == prodName) &&
            (identical(other.origPrice, origPrice) ||
                other.origPrice == origPrice) &&
            (identical(other.discPrice, discPrice) ||
                other.discPrice == discPrice) &&
            (identical(other.disPerc, disPerc) || other.disPerc == disPerc) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.availability, availability) ||
                other.availability == availability));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, prodId, prodName, origPrice,
      discPrice, disPerc, stock, availability);

  /// Create a copy of ProductMainPropertiesPreviewData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductMainPropertiesPreviewDataImplCopyWith<
          _$ProductMainPropertiesPreviewDataImpl>
      get copyWith => __$$ProductMainPropertiesPreviewDataImplCopyWithImpl<
          _$ProductMainPropertiesPreviewDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductMainPropertiesPreviewDataImplToJson(
      this,
    );
  }
}

abstract class _ProductMainPropertiesPreviewData
    implements ProductMainPropertiesPreviewData {
  factory _ProductMainPropertiesPreviewData(
          {@JsonKey(name: "prod_id") final String? prodId,
          @JsonKey(name: "prod_name") final String? prodName,
          @JsonKey(name: "orig_price") final double? origPrice,
          @JsonKey(name: "disc_price") final double? discPrice,
          @JsonKey(name: "dis_perc") final String? disPerc,
          @JsonKey(name: "stock") final int? stock,
          @JsonKey(name: "availability") final bool? availability}) =
      _$ProductMainPropertiesPreviewDataImpl;

  factory _ProductMainPropertiesPreviewData.fromJson(
          Map<String, dynamic> json) =
      _$ProductMainPropertiesPreviewDataImpl.fromJson;

  @override
  @JsonKey(name: "prod_id")
  String? get prodId;
  @override
  @JsonKey(name: "prod_name")
  String? get prodName;
  @override
  @JsonKey(name: "orig_price")
  double? get origPrice;
  @override
  @JsonKey(name: "disc_price")
  double? get discPrice;
  @override
  @JsonKey(name: "dis_perc")
  String? get disPerc;
  @override
  @JsonKey(name: "stock")
  int? get stock;
  @override
  @JsonKey(name: "availability")
  bool? get availability;

  /// Create a copy of ProductMainPropertiesPreviewData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductMainPropertiesPreviewDataImplCopyWith<
          _$ProductMainPropertiesPreviewDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductVariantSpecs _$ProductVariantSpecsFromJson(Map<String, dynamic> json) {
  return _ProductVariantSpecs.fromJson(json);
}

/// @nodoc
mixin _$ProductVariantSpecs {
  List<ProductVarPreviewClientKeyValue>? get prodVarSpecOptData =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductVariantSpecs to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductVariantSpecs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductVariantSpecsCopyWith<ProductVariantSpecs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariantSpecsCopyWith<$Res> {
  factory $ProductVariantSpecsCopyWith(
          ProductVariantSpecs value, $Res Function(ProductVariantSpecs) then) =
      _$ProductVariantSpecsCopyWithImpl<$Res, ProductVariantSpecs>;
  @useResult
  $Res call({List<ProductVarPreviewClientKeyValue>? prodVarSpecOptData});
}

/// @nodoc
class _$ProductVariantSpecsCopyWithImpl<$Res, $Val extends ProductVariantSpecs>
    implements $ProductVariantSpecsCopyWith<$Res> {
  _$ProductVariantSpecsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductVariantSpecs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodVarSpecOptData = freezed,
  }) {
    return _then(_value.copyWith(
      prodVarSpecOptData: freezed == prodVarSpecOptData
          ? _value.prodVarSpecOptData
          : prodVarSpecOptData // ignore: cast_nullable_to_non_nullable
              as List<ProductVarPreviewClientKeyValue>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductVariantSpecsImplCopyWith<$Res>
    implements $ProductVariantSpecsCopyWith<$Res> {
  factory _$$ProductVariantSpecsImplCopyWith(_$ProductVariantSpecsImpl value,
          $Res Function(_$ProductVariantSpecsImpl) then) =
      __$$ProductVariantSpecsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductVarPreviewClientKeyValue>? prodVarSpecOptData});
}

/// @nodoc
class __$$ProductVariantSpecsImplCopyWithImpl<$Res>
    extends _$ProductVariantSpecsCopyWithImpl<$Res, _$ProductVariantSpecsImpl>
    implements _$$ProductVariantSpecsImplCopyWith<$Res> {
  __$$ProductVariantSpecsImplCopyWithImpl(_$ProductVariantSpecsImpl _value,
      $Res Function(_$ProductVariantSpecsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductVariantSpecs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodVarSpecOptData = freezed,
  }) {
    return _then(_$ProductVariantSpecsImpl(
      prodVarSpecOptData: freezed == prodVarSpecOptData
          ? _value._prodVarSpecOptData
          : prodVarSpecOptData // ignore: cast_nullable_to_non_nullable
              as List<ProductVarPreviewClientKeyValue>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductVariantSpecsImpl implements _ProductVariantSpecs {
  _$ProductVariantSpecsImpl(
      {final List<ProductVarPreviewClientKeyValue>? prodVarSpecOptData})
      : _prodVarSpecOptData = prodVarSpecOptData;

  factory _$ProductVariantSpecsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductVariantSpecsImplFromJson(json);

  final List<ProductVarPreviewClientKeyValue>? _prodVarSpecOptData;
  @override
  List<ProductVarPreviewClientKeyValue>? get prodVarSpecOptData {
    final value = _prodVarSpecOptData;
    if (value == null) return null;
    if (_prodVarSpecOptData is EqualUnmodifiableListView)
      return _prodVarSpecOptData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductVariantSpecs(prodVarSpecOptData: $prodVarSpecOptData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVariantSpecsImpl &&
            const DeepCollectionEquality()
                .equals(other._prodVarSpecOptData, _prodVarSpecOptData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_prodVarSpecOptData));

  /// Create a copy of ProductVariantSpecs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVariantSpecsImplCopyWith<_$ProductVariantSpecsImpl> get copyWith =>
      __$$ProductVariantSpecsImplCopyWithImpl<_$ProductVariantSpecsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVariantSpecsImplToJson(
      this,
    );
  }
}

abstract class _ProductVariantSpecs implements ProductVariantSpecs {
  factory _ProductVariantSpecs(
          {final List<ProductVarPreviewClientKeyValue>? prodVarSpecOptData}) =
      _$ProductVariantSpecsImpl;

  factory _ProductVariantSpecs.fromJson(Map<String, dynamic> json) =
      _$ProductVariantSpecsImpl.fromJson;

  @override
  List<ProductVarPreviewClientKeyValue>? get prodVarSpecOptData;

  /// Create a copy of ProductVariantSpecs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductVariantSpecsImplCopyWith<_$ProductVariantSpecsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductVariantPreview _$ProductVariantPreviewFromJson(
    Map<String, dynamic> json) {
  return _ProductVariantPreview.fromJson(json);
}

/// @nodoc
mixin _$ProductVariantPreview {
  @JsonKey(fromJson: _prodVarPreviewFromJson, toJson: _prodVarPreviewToJson)
  List<ProductVariantPreviewData>? get prodVarPreviewData =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductVariantPreview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductVariantPreview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductVariantPreviewCopyWith<ProductVariantPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariantPreviewCopyWith<$Res> {
  factory $ProductVariantPreviewCopyWith(ProductVariantPreview value,
          $Res Function(ProductVariantPreview) then) =
      _$ProductVariantPreviewCopyWithImpl<$Res, ProductVariantPreview>;
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: _prodVarPreviewFromJson, toJson: _prodVarPreviewToJson)
      List<ProductVariantPreviewData>? prodVarPreviewData});
}

/// @nodoc
class _$ProductVariantPreviewCopyWithImpl<$Res,
        $Val extends ProductVariantPreview>
    implements $ProductVariantPreviewCopyWith<$Res> {
  _$ProductVariantPreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductVariantPreview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodVarPreviewData = freezed,
  }) {
    return _then(_value.copyWith(
      prodVarPreviewData: freezed == prodVarPreviewData
          ? _value.prodVarPreviewData
          : prodVarPreviewData // ignore: cast_nullable_to_non_nullable
              as List<ProductVariantPreviewData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductVariantPreviewImplCopyWith<$Res>
    implements $ProductVariantPreviewCopyWith<$Res> {
  factory _$$ProductVariantPreviewImplCopyWith(
          _$ProductVariantPreviewImpl value,
          $Res Function(_$ProductVariantPreviewImpl) then) =
      __$$ProductVariantPreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: _prodVarPreviewFromJson, toJson: _prodVarPreviewToJson)
      List<ProductVariantPreviewData>? prodVarPreviewData});
}

/// @nodoc
class __$$ProductVariantPreviewImplCopyWithImpl<$Res>
    extends _$ProductVariantPreviewCopyWithImpl<$Res,
        _$ProductVariantPreviewImpl>
    implements _$$ProductVariantPreviewImplCopyWith<$Res> {
  __$$ProductVariantPreviewImplCopyWithImpl(_$ProductVariantPreviewImpl _value,
      $Res Function(_$ProductVariantPreviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductVariantPreview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodVarPreviewData = freezed,
  }) {
    return _then(_$ProductVariantPreviewImpl(
      prodVarPreviewData: freezed == prodVarPreviewData
          ? _value._prodVarPreviewData
          : prodVarPreviewData // ignore: cast_nullable_to_non_nullable
              as List<ProductVariantPreviewData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductVariantPreviewImpl implements _ProductVariantPreview {
  _$ProductVariantPreviewImpl(
      {@JsonKey(
          fromJson: _prodVarPreviewFromJson, toJson: _prodVarPreviewToJson)
      final List<ProductVariantPreviewData>? prodVarPreviewData})
      : _prodVarPreviewData = prodVarPreviewData;

  factory _$ProductVariantPreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductVariantPreviewImplFromJson(json);

  final List<ProductVariantPreviewData>? _prodVarPreviewData;
  @override
  @JsonKey(fromJson: _prodVarPreviewFromJson, toJson: _prodVarPreviewToJson)
  List<ProductVariantPreviewData>? get prodVarPreviewData {
    final value = _prodVarPreviewData;
    if (value == null) return null;
    if (_prodVarPreviewData is EqualUnmodifiableListView)
      return _prodVarPreviewData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductVariantPreview(prodVarPreviewData: $prodVarPreviewData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVariantPreviewImpl &&
            const DeepCollectionEquality()
                .equals(other._prodVarPreviewData, _prodVarPreviewData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_prodVarPreviewData));

  /// Create a copy of ProductVariantPreview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVariantPreviewImplCopyWith<_$ProductVariantPreviewImpl>
      get copyWith => __$$ProductVariantPreviewImplCopyWithImpl<
          _$ProductVariantPreviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVariantPreviewImplToJson(
      this,
    );
  }
}

abstract class _ProductVariantPreview implements ProductVariantPreview {
  factory _ProductVariantPreview(
          {@JsonKey(
              fromJson: _prodVarPreviewFromJson, toJson: _prodVarPreviewToJson)
          final List<ProductVariantPreviewData>? prodVarPreviewData}) =
      _$ProductVariantPreviewImpl;

  factory _ProductVariantPreview.fromJson(Map<String, dynamic> json) =
      _$ProductVariantPreviewImpl.fromJson;

  @override
  @JsonKey(fromJson: _prodVarPreviewFromJson, toJson: _prodVarPreviewToJson)
  List<ProductVariantPreviewData>? get prodVarPreviewData;

  /// Create a copy of ProductVariantPreview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductVariantPreviewImplCopyWith<_$ProductVariantPreviewImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductVariantPreviewImgData _$ProductVariantPreviewImgDataFromJson(
    Map<String, dynamic> json) {
  return _ProductVariantPreviewImgData.fromJson(json);
}

/// @nodoc
mixin _$ProductVariantPreviewImgData {
  @JsonKey(
      name: "nested_pv_img_key",
      fromJson: _imageProdVarDataFromJson,
      toJson: _imageProdVarDataToJson)
  List<ImageProdVarData>? get prodImg => throw _privateConstructorUsedError;

  /// Serializes this ProductVariantPreviewImgData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductVariantPreviewImgData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductVariantPreviewImgDataCopyWith<ProductVariantPreviewImgData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariantPreviewImgDataCopyWith<$Res> {
  factory $ProductVariantPreviewImgDataCopyWith(
          ProductVariantPreviewImgData value,
          $Res Function(ProductVariantPreviewImgData) then) =
      _$ProductVariantPreviewImgDataCopyWithImpl<$Res,
          ProductVariantPreviewImgData>;
  @useResult
  $Res call(
      {@JsonKey(
          name: "nested_pv_img_key",
          fromJson: _imageProdVarDataFromJson,
          toJson: _imageProdVarDataToJson)
      List<ImageProdVarData>? prodImg});
}

/// @nodoc
class _$ProductVariantPreviewImgDataCopyWithImpl<$Res,
        $Val extends ProductVariantPreviewImgData>
    implements $ProductVariantPreviewImgDataCopyWith<$Res> {
  _$ProductVariantPreviewImgDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductVariantPreviewImgData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodImg = freezed,
  }) {
    return _then(_value.copyWith(
      prodImg: freezed == prodImg
          ? _value.prodImg
          : prodImg // ignore: cast_nullable_to_non_nullable
              as List<ImageProdVarData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductVariantPreviewImgDataImplCopyWith<$Res>
    implements $ProductVariantPreviewImgDataCopyWith<$Res> {
  factory _$$ProductVariantPreviewImgDataImplCopyWith(
          _$ProductVariantPreviewImgDataImpl value,
          $Res Function(_$ProductVariantPreviewImgDataImpl) then) =
      __$$ProductVariantPreviewImgDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: "nested_pv_img_key",
          fromJson: _imageProdVarDataFromJson,
          toJson: _imageProdVarDataToJson)
      List<ImageProdVarData>? prodImg});
}

/// @nodoc
class __$$ProductVariantPreviewImgDataImplCopyWithImpl<$Res>
    extends _$ProductVariantPreviewImgDataCopyWithImpl<$Res,
        _$ProductVariantPreviewImgDataImpl>
    implements _$$ProductVariantPreviewImgDataImplCopyWith<$Res> {
  __$$ProductVariantPreviewImgDataImplCopyWithImpl(
      _$ProductVariantPreviewImgDataImpl _value,
      $Res Function(_$ProductVariantPreviewImgDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductVariantPreviewImgData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodImg = freezed,
  }) {
    return _then(_$ProductVariantPreviewImgDataImpl(
      prodImg: freezed == prodImg
          ? _value._prodImg
          : prodImg // ignore: cast_nullable_to_non_nullable
              as List<ImageProdVarData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductVariantPreviewImgDataImpl
    implements _ProductVariantPreviewImgData {
  _$ProductVariantPreviewImgDataImpl(
      {@JsonKey(
          name: "nested_pv_img_key",
          fromJson: _imageProdVarDataFromJson,
          toJson: _imageProdVarDataToJson)
      final List<ImageProdVarData>? prodImg})
      : _prodImg = prodImg;

  factory _$ProductVariantPreviewImgDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductVariantPreviewImgDataImplFromJson(json);

  final List<ImageProdVarData>? _prodImg;
  @override
  @JsonKey(
      name: "nested_pv_img_key",
      fromJson: _imageProdVarDataFromJson,
      toJson: _imageProdVarDataToJson)
  List<ImageProdVarData>? get prodImg {
    final value = _prodImg;
    if (value == null) return null;
    if (_prodImg is EqualUnmodifiableListView) return _prodImg;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductVariantPreviewImgData(prodImg: $prodImg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVariantPreviewImgDataImpl &&
            const DeepCollectionEquality().equals(other._prodImg, _prodImg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_prodImg));

  /// Create a copy of ProductVariantPreviewImgData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVariantPreviewImgDataImplCopyWith<
          _$ProductVariantPreviewImgDataImpl>
      get copyWith => __$$ProductVariantPreviewImgDataImplCopyWithImpl<
          _$ProductVariantPreviewImgDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVariantPreviewImgDataImplToJson(
      this,
    );
  }
}

abstract class _ProductVariantPreviewImgData
    implements ProductVariantPreviewImgData {
  factory _ProductVariantPreviewImgData(
          {@JsonKey(
              name: "nested_pv_img_key",
              fromJson: _imageProdVarDataFromJson,
              toJson: _imageProdVarDataToJson)
          final List<ImageProdVarData>? prodImg}) =
      _$ProductVariantPreviewImgDataImpl;

  factory _ProductVariantPreviewImgData.fromJson(Map<String, dynamic> json) =
      _$ProductVariantPreviewImgDataImpl.fromJson;

  @override
  @JsonKey(
      name: "nested_pv_img_key",
      fromJson: _imageProdVarDataFromJson,
      toJson: _imageProdVarDataToJson)
  List<ImageProdVarData>? get prodImg;

  /// Create a copy of ProductVariantPreviewImgData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductVariantPreviewImgDataImplCopyWith<
          _$ProductVariantPreviewImgDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductVariantPreviewData _$ProductVariantPreviewDataFromJson(
    Map<String, dynamic> json) {
  return _ProductVariantPreviewData.fromJson(json);
}

/// @nodoc
mixin _$ProductVariantPreviewData {
  @JsonKey(name: "prod_var_id")
  String? get prodVarId => throw _privateConstructorUsedError;
  @JsonKey(name: "orig_price")
  double? get origPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_price")
  double? get discPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "dis_perc")
  String? get disPerc => throw _privateConstructorUsedError;
  @JsonKey(name: "stock")
  int? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get value => throw _privateConstructorUsedError;

  /// Serializes this ProductVariantPreviewData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductVariantPreviewData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductVariantPreviewDataCopyWith<ProductVariantPreviewData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariantPreviewDataCopyWith<$Res> {
  factory $ProductVariantPreviewDataCopyWith(ProductVariantPreviewData value,
          $Res Function(ProductVariantPreviewData) then) =
      _$ProductVariantPreviewDataCopyWithImpl<$Res, ProductVariantPreviewData>;
  @useResult
  $Res call(
      {@JsonKey(name: "prod_var_id") String? prodVarId,
      @JsonKey(name: "orig_price") double? origPrice,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "dis_perc") String? disPerc,
      @JsonKey(name: "stock") int? stock,
      @JsonKey(name: "value") String? value});
}

/// @nodoc
class _$ProductVariantPreviewDataCopyWithImpl<$Res,
        $Val extends ProductVariantPreviewData>
    implements $ProductVariantPreviewDataCopyWith<$Res> {
  _$ProductVariantPreviewDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductVariantPreviewData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodVarId = freezed,
    Object? origPrice = freezed,
    Object? discPrice = freezed,
    Object? disPerc = freezed,
    Object? stock = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      prodVarId: freezed == prodVarId
          ? _value.prodVarId
          : prodVarId // ignore: cast_nullable_to_non_nullable
              as String?,
      origPrice: freezed == origPrice
          ? _value.origPrice
          : origPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      disPerc: freezed == disPerc
          ? _value.disPerc
          : disPerc // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductVariantPreviewDataImplCopyWith<$Res>
    implements $ProductVariantPreviewDataCopyWith<$Res> {
  factory _$$ProductVariantPreviewDataImplCopyWith(
          _$ProductVariantPreviewDataImpl value,
          $Res Function(_$ProductVariantPreviewDataImpl) then) =
      __$$ProductVariantPreviewDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "prod_var_id") String? prodVarId,
      @JsonKey(name: "orig_price") double? origPrice,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "dis_perc") String? disPerc,
      @JsonKey(name: "stock") int? stock,
      @JsonKey(name: "value") String? value});
}

/// @nodoc
class __$$ProductVariantPreviewDataImplCopyWithImpl<$Res>
    extends _$ProductVariantPreviewDataCopyWithImpl<$Res,
        _$ProductVariantPreviewDataImpl>
    implements _$$ProductVariantPreviewDataImplCopyWith<$Res> {
  __$$ProductVariantPreviewDataImplCopyWithImpl(
      _$ProductVariantPreviewDataImpl _value,
      $Res Function(_$ProductVariantPreviewDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductVariantPreviewData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodVarId = freezed,
    Object? origPrice = freezed,
    Object? discPrice = freezed,
    Object? disPerc = freezed,
    Object? stock = freezed,
    Object? value = freezed,
  }) {
    return _then(_$ProductVariantPreviewDataImpl(
      prodVarId: freezed == prodVarId
          ? _value.prodVarId
          : prodVarId // ignore: cast_nullable_to_non_nullable
              as String?,
      origPrice: freezed == origPrice
          ? _value.origPrice
          : origPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      disPerc: freezed == disPerc
          ? _value.disPerc
          : disPerc // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductVariantPreviewDataImpl implements _ProductVariantPreviewData {
  _$ProductVariantPreviewDataImpl(
      {@JsonKey(name: "prod_var_id") this.prodVarId,
      @JsonKey(name: "orig_price") this.origPrice,
      @JsonKey(name: "disc_price") this.discPrice,
      @JsonKey(name: "dis_perc") this.disPerc,
      @JsonKey(name: "stock") this.stock,
      @JsonKey(name: "value") this.value});

  factory _$ProductVariantPreviewDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductVariantPreviewDataImplFromJson(json);

  @override
  @JsonKey(name: "prod_var_id")
  final String? prodVarId;
  @override
  @JsonKey(name: "orig_price")
  final double? origPrice;
  @override
  @JsonKey(name: "disc_price")
  final double? discPrice;
  @override
  @JsonKey(name: "dis_perc")
  final String? disPerc;
  @override
  @JsonKey(name: "stock")
  final int? stock;
  @override
  @JsonKey(name: "value")
  final String? value;

  @override
  String toString() {
    return 'ProductVariantPreviewData(prodVarId: $prodVarId, origPrice: $origPrice, discPrice: $discPrice, disPerc: $disPerc, stock: $stock, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVariantPreviewDataImpl &&
            (identical(other.prodVarId, prodVarId) ||
                other.prodVarId == prodVarId) &&
            (identical(other.origPrice, origPrice) ||
                other.origPrice == origPrice) &&
            (identical(other.discPrice, discPrice) ||
                other.discPrice == discPrice) &&
            (identical(other.disPerc, disPerc) || other.disPerc == disPerc) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, prodVarId, origPrice, discPrice, disPerc, stock, value);

  /// Create a copy of ProductVariantPreviewData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVariantPreviewDataImplCopyWith<_$ProductVariantPreviewDataImpl>
      get copyWith => __$$ProductVariantPreviewDataImplCopyWithImpl<
          _$ProductVariantPreviewDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVariantPreviewDataImplToJson(
      this,
    );
  }
}

abstract class _ProductVariantPreviewData implements ProductVariantPreviewData {
  factory _ProductVariantPreviewData(
          {@JsonKey(name: "prod_var_id") final String? prodVarId,
          @JsonKey(name: "orig_price") final double? origPrice,
          @JsonKey(name: "disc_price") final double? discPrice,
          @JsonKey(name: "dis_perc") final String? disPerc,
          @JsonKey(name: "stock") final int? stock,
          @JsonKey(name: "value") final String? value}) =
      _$ProductVariantPreviewDataImpl;

  factory _ProductVariantPreviewData.fromJson(Map<String, dynamic> json) =
      _$ProductVariantPreviewDataImpl.fromJson;

  @override
  @JsonKey(name: "prod_var_id")
  String? get prodVarId;
  @override
  @JsonKey(name: "orig_price")
  double? get origPrice;
  @override
  @JsonKey(name: "disc_price")
  double? get discPrice;
  @override
  @JsonKey(name: "dis_perc")
  String? get disPerc;
  @override
  @JsonKey(name: "stock")
  int? get stock;
  @override
  @JsonKey(name: "value")
  String? get value;

  /// Create a copy of ProductVariantPreviewData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductVariantPreviewDataImplCopyWith<_$ProductVariantPreviewDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductClientKeyValue _$ProductClientKeyValueFromJson(
    Map<String, dynamic> json) {
  return _ProductClientKeyValue.fromJson(json);
}

/// @nodoc
mixin _$ProductClientKeyValue {
  @JsonKey(name: "p_key_name_id")
  String? get prodKeyNameID => throw _privateConstructorUsedError;
  @JsonKey(name: "key_name")
  String? get prodKeyName => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get value => throw _privateConstructorUsedError;

  /// Serializes this ProductClientKeyValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductClientKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductClientKeyValueCopyWith<ProductClientKeyValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductClientKeyValueCopyWith<$Res> {
  factory $ProductClientKeyValueCopyWith(ProductClientKeyValue value,
          $Res Function(ProductClientKeyValue) then) =
      _$ProductClientKeyValueCopyWithImpl<$Res, ProductClientKeyValue>;
  @useResult
  $Res call(
      {@JsonKey(name: "p_key_name_id") String? prodKeyNameID,
      @JsonKey(name: "key_name") String? prodKeyName,
      @JsonKey(name: "value") String? value});
}

/// @nodoc
class _$ProductClientKeyValueCopyWithImpl<$Res,
        $Val extends ProductClientKeyValue>
    implements $ProductClientKeyValueCopyWith<$Res> {
  _$ProductClientKeyValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductClientKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodKeyNameID = freezed,
    Object? prodKeyName = freezed,
    Object? value = freezed,
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
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductClientKeyValueImplCopyWith<$Res>
    implements $ProductClientKeyValueCopyWith<$Res> {
  factory _$$ProductClientKeyValueImplCopyWith(
          _$ProductClientKeyValueImpl value,
          $Res Function(_$ProductClientKeyValueImpl) then) =
      __$$ProductClientKeyValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "p_key_name_id") String? prodKeyNameID,
      @JsonKey(name: "key_name") String? prodKeyName,
      @JsonKey(name: "value") String? value});
}

/// @nodoc
class __$$ProductClientKeyValueImplCopyWithImpl<$Res>
    extends _$ProductClientKeyValueCopyWithImpl<$Res,
        _$ProductClientKeyValueImpl>
    implements _$$ProductClientKeyValueImplCopyWith<$Res> {
  __$$ProductClientKeyValueImplCopyWithImpl(_$ProductClientKeyValueImpl _value,
      $Res Function(_$ProductClientKeyValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductClientKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodKeyNameID = freezed,
    Object? prodKeyName = freezed,
    Object? value = freezed,
  }) {
    return _then(_$ProductClientKeyValueImpl(
      prodKeyNameID: freezed == prodKeyNameID
          ? _value.prodKeyNameID
          : prodKeyNameID // ignore: cast_nullable_to_non_nullable
              as String?,
      prodKeyName: freezed == prodKeyName
          ? _value.prodKeyName
          : prodKeyName // ignore: cast_nullable_to_non_nullable
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
class _$ProductClientKeyValueImpl implements _ProductClientKeyValue {
  _$ProductClientKeyValueImpl(
      {@JsonKey(name: "p_key_name_id") this.prodKeyNameID,
      @JsonKey(name: "key_name") this.prodKeyName,
      @JsonKey(name: "value") this.value});

  factory _$ProductClientKeyValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductClientKeyValueImplFromJson(json);

  @override
  @JsonKey(name: "p_key_name_id")
  final String? prodKeyNameID;
  @override
  @JsonKey(name: "key_name")
  final String? prodKeyName;
  @override
  @JsonKey(name: "value")
  final String? value;

  @override
  String toString() {
    return 'ProductClientKeyValue(prodKeyNameID: $prodKeyNameID, prodKeyName: $prodKeyName, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductClientKeyValueImpl &&
            (identical(other.prodKeyNameID, prodKeyNameID) ||
                other.prodKeyNameID == prodKeyNameID) &&
            (identical(other.prodKeyName, prodKeyName) ||
                other.prodKeyName == prodKeyName) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, prodKeyNameID, prodKeyName, value);

  /// Create a copy of ProductClientKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductClientKeyValueImplCopyWith<_$ProductClientKeyValueImpl>
      get copyWith => __$$ProductClientKeyValueImplCopyWithImpl<
          _$ProductClientKeyValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductClientKeyValueImplToJson(
      this,
    );
  }
}

abstract class _ProductClientKeyValue implements ProductClientKeyValue {
  factory _ProductClientKeyValue(
          {@JsonKey(name: "p_key_name_id") final String? prodKeyNameID,
          @JsonKey(name: "key_name") final String? prodKeyName,
          @JsonKey(name: "value") final String? value}) =
      _$ProductClientKeyValueImpl;

  factory _ProductClientKeyValue.fromJson(Map<String, dynamic> json) =
      _$ProductClientKeyValueImpl.fromJson;

  @override
  @JsonKey(name: "p_key_name_id")
  String? get prodKeyNameID;
  @override
  @JsonKey(name: "key_name")
  String? get prodKeyName;
  @override
  @JsonKey(name: "value")
  String? get value;

  /// Create a copy of ProductClientKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductClientKeyValueImplCopyWith<_$ProductClientKeyValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductVarClientKeyValue _$ProductVarClientKeyValueFromJson(
    Map<String, dynamic> json) {
  return _ProductVarClientKeyValue.fromJson(json);
}

/// @nodoc
mixin _$ProductVarClientKeyValue {
  @JsonKey(name: "prod_var_id")
  String? get prodVarID => throw _privateConstructorUsedError;
  @JsonKey(name: "key_name")
  String? get prodVKeyName => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get value => throw _privateConstructorUsedError;

  /// Serializes this ProductVarClientKeyValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductVarClientKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductVarClientKeyValueCopyWith<ProductVarClientKeyValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVarClientKeyValueCopyWith<$Res> {
  factory $ProductVarClientKeyValueCopyWith(ProductVarClientKeyValue value,
          $Res Function(ProductVarClientKeyValue) then) =
      _$ProductVarClientKeyValueCopyWithImpl<$Res, ProductVarClientKeyValue>;
  @useResult
  $Res call(
      {@JsonKey(name: "prod_var_id") String? prodVarID,
      @JsonKey(name: "key_name") String? prodVKeyName,
      @JsonKey(name: "value") String? value});
}

/// @nodoc
class _$ProductVarClientKeyValueCopyWithImpl<$Res,
        $Val extends ProductVarClientKeyValue>
    implements $ProductVarClientKeyValueCopyWith<$Res> {
  _$ProductVarClientKeyValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductVarClientKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodVarID = freezed,
    Object? prodVKeyName = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      prodVarID: freezed == prodVarID
          ? _value.prodVarID
          : prodVarID // ignore: cast_nullable_to_non_nullable
              as String?,
      prodVKeyName: freezed == prodVKeyName
          ? _value.prodVKeyName
          : prodVKeyName // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductVarClientKeyValueImplCopyWith<$Res>
    implements $ProductVarClientKeyValueCopyWith<$Res> {
  factory _$$ProductVarClientKeyValueImplCopyWith(
          _$ProductVarClientKeyValueImpl value,
          $Res Function(_$ProductVarClientKeyValueImpl) then) =
      __$$ProductVarClientKeyValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "prod_var_id") String? prodVarID,
      @JsonKey(name: "key_name") String? prodVKeyName,
      @JsonKey(name: "value") String? value});
}

/// @nodoc
class __$$ProductVarClientKeyValueImplCopyWithImpl<$Res>
    extends _$ProductVarClientKeyValueCopyWithImpl<$Res,
        _$ProductVarClientKeyValueImpl>
    implements _$$ProductVarClientKeyValueImplCopyWith<$Res> {
  __$$ProductVarClientKeyValueImplCopyWithImpl(
      _$ProductVarClientKeyValueImpl _value,
      $Res Function(_$ProductVarClientKeyValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductVarClientKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodVarID = freezed,
    Object? prodVKeyName = freezed,
    Object? value = freezed,
  }) {
    return _then(_$ProductVarClientKeyValueImpl(
      prodVarID: freezed == prodVarID
          ? _value.prodVarID
          : prodVarID // ignore: cast_nullable_to_non_nullable
              as String?,
      prodVKeyName: freezed == prodVKeyName
          ? _value.prodVKeyName
          : prodVKeyName // ignore: cast_nullable_to_non_nullable
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
class _$ProductVarClientKeyValueImpl implements _ProductVarClientKeyValue {
  _$ProductVarClientKeyValueImpl(
      {@JsonKey(name: "prod_var_id") this.prodVarID,
      @JsonKey(name: "key_name") this.prodVKeyName,
      @JsonKey(name: "value") this.value});

  factory _$ProductVarClientKeyValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductVarClientKeyValueImplFromJson(json);

  @override
  @JsonKey(name: "prod_var_id")
  final String? prodVarID;
  @override
  @JsonKey(name: "key_name")
  final String? prodVKeyName;
  @override
  @JsonKey(name: "value")
  final String? value;

  @override
  String toString() {
    return 'ProductVarClientKeyValue(prodVarID: $prodVarID, prodVKeyName: $prodVKeyName, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVarClientKeyValueImpl &&
            (identical(other.prodVarID, prodVarID) ||
                other.prodVarID == prodVarID) &&
            (identical(other.prodVKeyName, prodVKeyName) ||
                other.prodVKeyName == prodVKeyName) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, prodVarID, prodVKeyName, value);

  /// Create a copy of ProductVarClientKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVarClientKeyValueImplCopyWith<_$ProductVarClientKeyValueImpl>
      get copyWith => __$$ProductVarClientKeyValueImplCopyWithImpl<
          _$ProductVarClientKeyValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVarClientKeyValueImplToJson(
      this,
    );
  }
}

abstract class _ProductVarClientKeyValue implements ProductVarClientKeyValue {
  factory _ProductVarClientKeyValue(
          {@JsonKey(name: "prod_var_id") final String? prodVarID,
          @JsonKey(name: "key_name") final String? prodVKeyName,
          @JsonKey(name: "value") final String? value}) =
      _$ProductVarClientKeyValueImpl;

  factory _ProductVarClientKeyValue.fromJson(Map<String, dynamic> json) =
      _$ProductVarClientKeyValueImpl.fromJson;

  @override
  @JsonKey(name: "prod_var_id")
  String? get prodVarID;
  @override
  @JsonKey(name: "key_name")
  String? get prodVKeyName;
  @override
  @JsonKey(name: "value")
  String? get value;

  /// Create a copy of ProductVarClientKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductVarClientKeyValueImplCopyWith<_$ProductVarClientKeyValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductVarPreviewClientKeyValue _$ProductVarPreviewClientKeyValueFromJson(
    Map<String, dynamic> json) {
  return _ProductVarPreviewClientKeyValue.fromJson(json);
}

/// @nodoc
mixin _$ProductVarPreviewClientKeyValue {
  @JsonKey(name: "prod_var_id")
  String? get prodVarID => throw _privateConstructorUsedError;
  @JsonKey(name: "key_name")
  String? get prodVKeyName => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get value => throw _privateConstructorUsedError;
  @JsonKey(name: "availability")
  bool? get availability => throw _privateConstructorUsedError;

  /// Serializes this ProductVarPreviewClientKeyValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductVarPreviewClientKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductVarPreviewClientKeyValueCopyWith<ProductVarPreviewClientKeyValue>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVarPreviewClientKeyValueCopyWith<$Res> {
  factory $ProductVarPreviewClientKeyValueCopyWith(
          ProductVarPreviewClientKeyValue value,
          $Res Function(ProductVarPreviewClientKeyValue) then) =
      _$ProductVarPreviewClientKeyValueCopyWithImpl<$Res,
          ProductVarPreviewClientKeyValue>;
  @useResult
  $Res call(
      {@JsonKey(name: "prod_var_id") String? prodVarID,
      @JsonKey(name: "key_name") String? prodVKeyName,
      @JsonKey(name: "value") String? value,
      @JsonKey(name: "availability") bool? availability});
}

/// @nodoc
class _$ProductVarPreviewClientKeyValueCopyWithImpl<$Res,
        $Val extends ProductVarPreviewClientKeyValue>
    implements $ProductVarPreviewClientKeyValueCopyWith<$Res> {
  _$ProductVarPreviewClientKeyValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductVarPreviewClientKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodVarID = freezed,
    Object? prodVKeyName = freezed,
    Object? value = freezed,
    Object? availability = freezed,
  }) {
    return _then(_value.copyWith(
      prodVarID: freezed == prodVarID
          ? _value.prodVarID
          : prodVarID // ignore: cast_nullable_to_non_nullable
              as String?,
      prodVKeyName: freezed == prodVKeyName
          ? _value.prodVKeyName
          : prodVKeyName // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductVarPreviewClientKeyValueImplCopyWith<$Res>
    implements $ProductVarPreviewClientKeyValueCopyWith<$Res> {
  factory _$$ProductVarPreviewClientKeyValueImplCopyWith(
          _$ProductVarPreviewClientKeyValueImpl value,
          $Res Function(_$ProductVarPreviewClientKeyValueImpl) then) =
      __$$ProductVarPreviewClientKeyValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "prod_var_id") String? prodVarID,
      @JsonKey(name: "key_name") String? prodVKeyName,
      @JsonKey(name: "value") String? value,
      @JsonKey(name: "availability") bool? availability});
}

/// @nodoc
class __$$ProductVarPreviewClientKeyValueImplCopyWithImpl<$Res>
    extends _$ProductVarPreviewClientKeyValueCopyWithImpl<$Res,
        _$ProductVarPreviewClientKeyValueImpl>
    implements _$$ProductVarPreviewClientKeyValueImplCopyWith<$Res> {
  __$$ProductVarPreviewClientKeyValueImplCopyWithImpl(
      _$ProductVarPreviewClientKeyValueImpl _value,
      $Res Function(_$ProductVarPreviewClientKeyValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductVarPreviewClientKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodVarID = freezed,
    Object? prodVKeyName = freezed,
    Object? value = freezed,
    Object? availability = freezed,
  }) {
    return _then(_$ProductVarPreviewClientKeyValueImpl(
      prodVarID: freezed == prodVarID
          ? _value.prodVarID
          : prodVarID // ignore: cast_nullable_to_non_nullable
              as String?,
      prodVKeyName: freezed == prodVKeyName
          ? _value.prodVKeyName
          : prodVKeyName // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductVarPreviewClientKeyValueImpl
    implements _ProductVarPreviewClientKeyValue {
  _$ProductVarPreviewClientKeyValueImpl(
      {@JsonKey(name: "prod_var_id") this.prodVarID,
      @JsonKey(name: "key_name") this.prodVKeyName,
      @JsonKey(name: "value") this.value,
      @JsonKey(name: "availability") this.availability});

  factory _$ProductVarPreviewClientKeyValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductVarPreviewClientKeyValueImplFromJson(json);

  @override
  @JsonKey(name: "prod_var_id")
  final String? prodVarID;
  @override
  @JsonKey(name: "key_name")
  final String? prodVKeyName;
  @override
  @JsonKey(name: "value")
  final String? value;
  @override
  @JsonKey(name: "availability")
  final bool? availability;

  @override
  String toString() {
    return 'ProductVarPreviewClientKeyValue(prodVarID: $prodVarID, prodVKeyName: $prodVKeyName, value: $value, availability: $availability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVarPreviewClientKeyValueImpl &&
            (identical(other.prodVarID, prodVarID) ||
                other.prodVarID == prodVarID) &&
            (identical(other.prodVKeyName, prodVKeyName) ||
                other.prodVKeyName == prodVKeyName) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.availability, availability) ||
                other.availability == availability));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, prodVarID, prodVKeyName, value, availability);

  /// Create a copy of ProductVarPreviewClientKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVarPreviewClientKeyValueImplCopyWith<
          _$ProductVarPreviewClientKeyValueImpl>
      get copyWith => __$$ProductVarPreviewClientKeyValueImplCopyWithImpl<
          _$ProductVarPreviewClientKeyValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVarPreviewClientKeyValueImplToJson(
      this,
    );
  }
}

abstract class _ProductVarPreviewClientKeyValue
    implements ProductVarPreviewClientKeyValue {
  factory _ProductVarPreviewClientKeyValue(
          {@JsonKey(name: "prod_var_id") final String? prodVarID,
          @JsonKey(name: "key_name") final String? prodVKeyName,
          @JsonKey(name: "value") final String? value,
          @JsonKey(name: "availability") final bool? availability}) =
      _$ProductVarPreviewClientKeyValueImpl;

  factory _ProductVarPreviewClientKeyValue.fromJson(Map<String, dynamic> json) =
      _$ProductVarPreviewClientKeyValueImpl.fromJson;

  @override
  @JsonKey(name: "prod_var_id")
  String? get prodVarID;
  @override
  @JsonKey(name: "key_name")
  String? get prodVKeyName;
  @override
  @JsonKey(name: "value")
  String? get value;
  @override
  @JsonKey(name: "availability")
  bool? get availability;

  /// Create a copy of ProductVarPreviewClientKeyValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductVarPreviewClientKeyValueImplCopyWith<
          _$ProductVarPreviewClientKeyValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CartListData _$CartListDataFromJson(Map<String, dynamic> json) {
  return _CartListData.fromJson(json);
}

/// @nodoc
mixin _$CartListData {
  List<CartPropertiesData>? get cartPropsData =>
      throw _privateConstructorUsedError;

  /// Serializes this CartListData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartListDataCopyWith<CartListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartListDataCopyWith<$Res> {
  factory $CartListDataCopyWith(
          CartListData value, $Res Function(CartListData) then) =
      _$CartListDataCopyWithImpl<$Res, CartListData>;
  @useResult
  $Res call({List<CartPropertiesData>? cartPropsData});
}

/// @nodoc
class _$CartListDataCopyWithImpl<$Res, $Val extends CartListData>
    implements $CartListDataCopyWith<$Res> {
  _$CartListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartPropsData = freezed,
  }) {
    return _then(_value.copyWith(
      cartPropsData: freezed == cartPropsData
          ? _value.cartPropsData
          : cartPropsData // ignore: cast_nullable_to_non_nullable
              as List<CartPropertiesData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartListDataImplCopyWith<$Res>
    implements $CartListDataCopyWith<$Res> {
  factory _$$CartListDataImplCopyWith(
          _$CartListDataImpl value, $Res Function(_$CartListDataImpl) then) =
      __$$CartListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartPropertiesData>? cartPropsData});
}

/// @nodoc
class __$$CartListDataImplCopyWithImpl<$Res>
    extends _$CartListDataCopyWithImpl<$Res, _$CartListDataImpl>
    implements _$$CartListDataImplCopyWith<$Res> {
  __$$CartListDataImplCopyWithImpl(
      _$CartListDataImpl _value, $Res Function(_$CartListDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartPropsData = freezed,
  }) {
    return _then(_$CartListDataImpl(
      cartPropsData: freezed == cartPropsData
          ? _value._cartPropsData
          : cartPropsData // ignore: cast_nullable_to_non_nullable
              as List<CartPropertiesData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartListDataImpl implements _CartListData {
  _$CartListDataImpl({final List<CartPropertiesData>? cartPropsData})
      : _cartPropsData = cartPropsData;

  factory _$CartListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartListDataImplFromJson(json);

  final List<CartPropertiesData>? _cartPropsData;
  @override
  List<CartPropertiesData>? get cartPropsData {
    final value = _cartPropsData;
    if (value == null) return null;
    if (_cartPropsData is EqualUnmodifiableListView) return _cartPropsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartListData(cartPropsData: $cartPropsData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartListDataImpl &&
            const DeepCollectionEquality()
                .equals(other._cartPropsData, _cartPropsData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cartPropsData));

  /// Create a copy of CartListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartListDataImplCopyWith<_$CartListDataImpl> get copyWith =>
      __$$CartListDataImplCopyWithImpl<_$CartListDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartListDataImplToJson(
      this,
    );
  }
}

abstract class _CartListData implements CartListData {
  factory _CartListData({final List<CartPropertiesData>? cartPropsData}) =
      _$CartListDataImpl;

  factory _CartListData.fromJson(Map<String, dynamic> json) =
      _$CartListDataImpl.fromJson;

  @override
  List<CartPropertiesData>? get cartPropsData;

  /// Create a copy of CartListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartListDataImplCopyWith<_$CartListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartPropertiesData _$CartPropertiesDataFromJson(Map<String, dynamic> json) {
  return _CartPropertiesData.fromJson(json);
}

/// @nodoc
mixin _$CartPropertiesData {
  @JsonKey(name: "cart_id")
  String? get cartID => throw _privateConstructorUsedError;
  @JsonKey(name: "nested_img", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData => throw _privateConstructorUsedError;
  @JsonKey(name: "nested_prod")
  List<CartProdPropertiesData>? get cartProdPropData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "is_selected")
  bool? get isSelected => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "nested_availability")
  bool? get availability => throw _privateConstructorUsedError;
  @JsonKey(name: "nested_available_qty")
  int? get availableQty => throw _privateConstructorUsedError;
  @JsonKey(
      name: "nested_pv_specs",
      fromJson: _prodVarKeyValFromJson,
      toJson: _prodVarKeyValToJson)
  List<ProductVarClientKeyValue>? get prodVarSpecOptData =>
      throw _privateConstructorUsedError;

  /// Serializes this CartPropertiesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartPropertiesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartPropertiesDataCopyWith<CartPropertiesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPropertiesDataCopyWith<$Res> {
  factory $CartPropertiesDataCopyWith(
          CartPropertiesData value, $Res Function(CartPropertiesData) then) =
      _$CartPropertiesDataCopyWithImpl<$Res, CartPropertiesData>;
  @useResult
  $Res call(
      {@JsonKey(name: "cart_id") String? cartID,
      @JsonKey(name: "nested_img", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "nested_prod")
      List<CartProdPropertiesData>? cartProdPropData,
      @JsonKey(name: "is_selected") bool? isSelected,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "nested_availability") bool? availability,
      @JsonKey(name: "nested_available_qty") int? availableQty,
      @JsonKey(
          name: "nested_pv_specs",
          fromJson: _prodVarKeyValFromJson,
          toJson: _prodVarKeyValToJson)
      List<ProductVarClientKeyValue>? prodVarSpecOptData});
}

/// @nodoc
class _$CartPropertiesDataCopyWithImpl<$Res, $Val extends CartPropertiesData>
    implements $CartPropertiesDataCopyWith<$Res> {
  _$CartPropertiesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartPropertiesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartID = freezed,
    Object? imgData = freezed,
    Object? cartProdPropData = freezed,
    Object? isSelected = freezed,
    Object? quantity = freezed,
    Object? availability = freezed,
    Object? availableQty = freezed,
    Object? prodVarSpecOptData = freezed,
  }) {
    return _then(_value.copyWith(
      cartID: freezed == cartID
          ? _value.cartID
          : cartID // ignore: cast_nullable_to_non_nullable
              as String?,
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      cartProdPropData: freezed == cartProdPropData
          ? _value.cartProdPropData
          : cartProdPropData // ignore: cast_nullable_to_non_nullable
              as List<CartProdPropertiesData>?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as bool?,
      availableQty: freezed == availableQty
          ? _value.availableQty
          : availableQty // ignore: cast_nullable_to_non_nullable
              as int?,
      prodVarSpecOptData: freezed == prodVarSpecOptData
          ? _value.prodVarSpecOptData
          : prodVarSpecOptData // ignore: cast_nullable_to_non_nullable
              as List<ProductVarClientKeyValue>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartPropertiesDataImplCopyWith<$Res>
    implements $CartPropertiesDataCopyWith<$Res> {
  factory _$$CartPropertiesDataImplCopyWith(_$CartPropertiesDataImpl value,
          $Res Function(_$CartPropertiesDataImpl) then) =
      __$$CartPropertiesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "cart_id") String? cartID,
      @JsonKey(name: "nested_img", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "nested_prod")
      List<CartProdPropertiesData>? cartProdPropData,
      @JsonKey(name: "is_selected") bool? isSelected,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "nested_availability") bool? availability,
      @JsonKey(name: "nested_available_qty") int? availableQty,
      @JsonKey(
          name: "nested_pv_specs",
          fromJson: _prodVarKeyValFromJson,
          toJson: _prodVarKeyValToJson)
      List<ProductVarClientKeyValue>? prodVarSpecOptData});
}

/// @nodoc
class __$$CartPropertiesDataImplCopyWithImpl<$Res>
    extends _$CartPropertiesDataCopyWithImpl<$Res, _$CartPropertiesDataImpl>
    implements _$$CartPropertiesDataImplCopyWith<$Res> {
  __$$CartPropertiesDataImplCopyWithImpl(_$CartPropertiesDataImpl _value,
      $Res Function(_$CartPropertiesDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartPropertiesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartID = freezed,
    Object? imgData = freezed,
    Object? cartProdPropData = freezed,
    Object? isSelected = freezed,
    Object? quantity = freezed,
    Object? availability = freezed,
    Object? availableQty = freezed,
    Object? prodVarSpecOptData = freezed,
  }) {
    return _then(_$CartPropertiesDataImpl(
      cartID: freezed == cartID
          ? _value.cartID
          : cartID // ignore: cast_nullable_to_non_nullable
              as String?,
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      cartProdPropData: freezed == cartProdPropData
          ? _value._cartProdPropData
          : cartProdPropData // ignore: cast_nullable_to_non_nullable
              as List<CartProdPropertiesData>?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as bool?,
      availableQty: freezed == availableQty
          ? _value.availableQty
          : availableQty // ignore: cast_nullable_to_non_nullable
              as int?,
      prodVarSpecOptData: freezed == prodVarSpecOptData
          ? _value._prodVarSpecOptData
          : prodVarSpecOptData // ignore: cast_nullable_to_non_nullable
              as List<ProductVarClientKeyValue>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartPropertiesDataImpl implements _CartPropertiesData {
  _$CartPropertiesDataImpl(
      {@JsonKey(name: "cart_id") this.cartID,
      @JsonKey(name: "nested_img", fromJson: _fromBase64, toJson: _toBase64)
      this.imgData,
      @JsonKey(name: "nested_prod")
      final List<CartProdPropertiesData>? cartProdPropData,
      @JsonKey(name: "is_selected") this.isSelected,
      @JsonKey(name: "quantity") this.quantity,
      @JsonKey(name: "nested_availability") this.availability,
      @JsonKey(name: "nested_available_qty") this.availableQty,
      @JsonKey(
          name: "nested_pv_specs",
          fromJson: _prodVarKeyValFromJson,
          toJson: _prodVarKeyValToJson)
      final List<ProductVarClientKeyValue>? prodVarSpecOptData})
      : _cartProdPropData = cartProdPropData,
        _prodVarSpecOptData = prodVarSpecOptData;

  factory _$CartPropertiesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartPropertiesDataImplFromJson(json);

  @override
  @JsonKey(name: "cart_id")
  final String? cartID;
  @override
  @JsonKey(name: "nested_img", fromJson: _fromBase64, toJson: _toBase64)
  final Uint8List? imgData;
  final List<CartProdPropertiesData>? _cartProdPropData;
  @override
  @JsonKey(name: "nested_prod")
  List<CartProdPropertiesData>? get cartProdPropData {
    final value = _cartProdPropData;
    if (value == null) return null;
    if (_cartProdPropData is EqualUnmodifiableListView)
      return _cartProdPropData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "is_selected")
  final bool? isSelected;
  @override
  @JsonKey(name: "quantity")
  final int? quantity;
  @override
  @JsonKey(name: "nested_availability")
  final bool? availability;
  @override
  @JsonKey(name: "nested_available_qty")
  final int? availableQty;
  final List<ProductVarClientKeyValue>? _prodVarSpecOptData;
  @override
  @JsonKey(
      name: "nested_pv_specs",
      fromJson: _prodVarKeyValFromJson,
      toJson: _prodVarKeyValToJson)
  List<ProductVarClientKeyValue>? get prodVarSpecOptData {
    final value = _prodVarSpecOptData;
    if (value == null) return null;
    if (_prodVarSpecOptData is EqualUnmodifiableListView)
      return _prodVarSpecOptData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartPropertiesData(cartID: $cartID, imgData: $imgData, cartProdPropData: $cartProdPropData, isSelected: $isSelected, quantity: $quantity, availability: $availability, availableQty: $availableQty, prodVarSpecOptData: $prodVarSpecOptData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartPropertiesDataImpl &&
            (identical(other.cartID, cartID) || other.cartID == cartID) &&
            const DeepCollectionEquality().equals(other.imgData, imgData) &&
            const DeepCollectionEquality()
                .equals(other._cartProdPropData, _cartProdPropData) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.availableQty, availableQty) ||
                other.availableQty == availableQty) &&
            const DeepCollectionEquality()
                .equals(other._prodVarSpecOptData, _prodVarSpecOptData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cartID,
      const DeepCollectionEquality().hash(imgData),
      const DeepCollectionEquality().hash(_cartProdPropData),
      isSelected,
      quantity,
      availability,
      availableQty,
      const DeepCollectionEquality().hash(_prodVarSpecOptData));

  /// Create a copy of CartPropertiesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartPropertiesDataImplCopyWith<_$CartPropertiesDataImpl> get copyWith =>
      __$$CartPropertiesDataImplCopyWithImpl<_$CartPropertiesDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartPropertiesDataImplToJson(
      this,
    );
  }
}

abstract class _CartPropertiesData implements CartPropertiesData {
  factory _CartPropertiesData(
          {@JsonKey(name: "cart_id") final String? cartID,
          @JsonKey(name: "nested_img", fromJson: _fromBase64, toJson: _toBase64)
          final Uint8List? imgData,
          @JsonKey(name: "nested_prod")
          final List<CartProdPropertiesData>? cartProdPropData,
          @JsonKey(name: "is_selected") final bool? isSelected,
          @JsonKey(name: "quantity") final int? quantity,
          @JsonKey(name: "nested_availability") final bool? availability,
          @JsonKey(name: "nested_available_qty") final int? availableQty,
          @JsonKey(
              name: "nested_pv_specs",
              fromJson: _prodVarKeyValFromJson,
              toJson: _prodVarKeyValToJson)
          final List<ProductVarClientKeyValue>? prodVarSpecOptData}) =
      _$CartPropertiesDataImpl;

  factory _CartPropertiesData.fromJson(Map<String, dynamic> json) =
      _$CartPropertiesDataImpl.fromJson;

  @override
  @JsonKey(name: "cart_id")
  String? get cartID;
  @override
  @JsonKey(name: "nested_img", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData;
  @override
  @JsonKey(name: "nested_prod")
  List<CartProdPropertiesData>? get cartProdPropData;
  @override
  @JsonKey(name: "is_selected")
  bool? get isSelected;
  @override
  @JsonKey(name: "quantity")
  int? get quantity;
  @override
  @JsonKey(name: "nested_availability")
  bool? get availability;
  @override
  @JsonKey(name: "nested_available_qty")
  int? get availableQty;
  @override
  @JsonKey(
      name: "nested_pv_specs",
      fromJson: _prodVarKeyValFromJson,
      toJson: _prodVarKeyValToJson)
  List<ProductVarClientKeyValue>? get prodVarSpecOptData;

  /// Create a copy of CartPropertiesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartPropertiesDataImplCopyWith<_$CartPropertiesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartProdPropertiesData _$CartProdPropertiesDataFromJson(
    Map<String, dynamic> json) {
  return _CartProdPropertiesData.fromJson(json);
}

/// @nodoc
mixin _$CartProdPropertiesData {
  @JsonKey(name: "prod_id")
  String? get prodID => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_name")
  String? get prodName => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_price")
  double? get discPrice => throw _privateConstructorUsedError;

  /// Serializes this CartProdPropertiesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartProdPropertiesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartProdPropertiesDataCopyWith<CartProdPropertiesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProdPropertiesDataCopyWith<$Res> {
  factory $CartProdPropertiesDataCopyWith(CartProdPropertiesData value,
          $Res Function(CartProdPropertiesData) then) =
      _$CartProdPropertiesDataCopyWithImpl<$Res, CartProdPropertiesData>;
  @useResult
  $Res call(
      {@JsonKey(name: "prod_id") String? prodID,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "disc_price") double? discPrice});
}

/// @nodoc
class _$CartProdPropertiesDataCopyWithImpl<$Res,
        $Val extends CartProdPropertiesData>
    implements $CartProdPropertiesDataCopyWith<$Res> {
  _$CartProdPropertiesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartProdPropertiesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodID = freezed,
    Object? prodName = freezed,
    Object? discPrice = freezed,
  }) {
    return _then(_value.copyWith(
      prodID: freezed == prodID
          ? _value.prodID
          : prodID // ignore: cast_nullable_to_non_nullable
              as String?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartProdPropertiesDataImplCopyWith<$Res>
    implements $CartProdPropertiesDataCopyWith<$Res> {
  factory _$$CartProdPropertiesDataImplCopyWith(
          _$CartProdPropertiesDataImpl value,
          $Res Function(_$CartProdPropertiesDataImpl) then) =
      __$$CartProdPropertiesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "prod_id") String? prodID,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "disc_price") double? discPrice});
}

/// @nodoc
class __$$CartProdPropertiesDataImplCopyWithImpl<$Res>
    extends _$CartProdPropertiesDataCopyWithImpl<$Res,
        _$CartProdPropertiesDataImpl>
    implements _$$CartProdPropertiesDataImplCopyWith<$Res> {
  __$$CartProdPropertiesDataImplCopyWithImpl(
      _$CartProdPropertiesDataImpl _value,
      $Res Function(_$CartProdPropertiesDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartProdPropertiesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodID = freezed,
    Object? prodName = freezed,
    Object? discPrice = freezed,
  }) {
    return _then(_$CartProdPropertiesDataImpl(
      prodID: freezed == prodID
          ? _value.prodID
          : prodID // ignore: cast_nullable_to_non_nullable
              as String?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartProdPropertiesDataImpl implements _CartProdPropertiesData {
  _$CartProdPropertiesDataImpl(
      {@JsonKey(name: "prod_id") this.prodID,
      @JsonKey(name: "prod_name") this.prodName,
      @JsonKey(name: "disc_price") this.discPrice});

  factory _$CartProdPropertiesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartProdPropertiesDataImplFromJson(json);

  @override
  @JsonKey(name: "prod_id")
  final String? prodID;
  @override
  @JsonKey(name: "prod_name")
  final String? prodName;
  @override
  @JsonKey(name: "disc_price")
  final double? discPrice;

  @override
  String toString() {
    return 'CartProdPropertiesData(prodID: $prodID, prodName: $prodName, discPrice: $discPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProdPropertiesDataImpl &&
            (identical(other.prodID, prodID) || other.prodID == prodID) &&
            (identical(other.prodName, prodName) ||
                other.prodName == prodName) &&
            (identical(other.discPrice, discPrice) ||
                other.discPrice == discPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, prodID, prodName, discPrice);

  /// Create a copy of CartProdPropertiesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProdPropertiesDataImplCopyWith<_$CartProdPropertiesDataImpl>
      get copyWith => __$$CartProdPropertiesDataImplCopyWithImpl<
          _$CartProdPropertiesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartProdPropertiesDataImplToJson(
      this,
    );
  }
}

abstract class _CartProdPropertiesData implements CartProdPropertiesData {
  factory _CartProdPropertiesData(
          {@JsonKey(name: "prod_id") final String? prodID,
          @JsonKey(name: "prod_name") final String? prodName,
          @JsonKey(name: "disc_price") final double? discPrice}) =
      _$CartProdPropertiesDataImpl;

  factory _CartProdPropertiesData.fromJson(Map<String, dynamic> json) =
      _$CartProdPropertiesDataImpl.fromJson;

  @override
  @JsonKey(name: "prod_id")
  String? get prodID;
  @override
  @JsonKey(name: "prod_name")
  String? get prodName;
  @override
  @JsonKey(name: "disc_price")
  double? get discPrice;

  /// Create a copy of CartProdPropertiesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartProdPropertiesDataImplCopyWith<_$CartProdPropertiesDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CartBottomPropData _$CartBottomPropDataFromJson(Map<String, dynamic> json) {
  return _CartBottomPropData.fromJson(json);
}

/// @nodoc
mixin _$CartBottomPropData {
  @JsonKey(name: "is_all_seleted")
  bool? get isAllSelected => throw _privateConstructorUsedError;
  @JsonKey(name: "subt_price")
  double? get subTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "t_disc")
  double? get tdiscPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "t_qty")
  int? get tQuantity => throw _privateConstructorUsedError;

  /// Serializes this CartBottomPropData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartBottomPropData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartBottomPropDataCopyWith<CartBottomPropData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartBottomPropDataCopyWith<$Res> {
  factory $CartBottomPropDataCopyWith(
          CartBottomPropData value, $Res Function(CartBottomPropData) then) =
      _$CartBottomPropDataCopyWithImpl<$Res, CartBottomPropData>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_all_seleted") bool? isAllSelected,
      @JsonKey(name: "subt_price") double? subTotal,
      @JsonKey(name: "t_disc") double? tdiscPrice,
      @JsonKey(name: "t_qty") int? tQuantity});
}

/// @nodoc
class _$CartBottomPropDataCopyWithImpl<$Res, $Val extends CartBottomPropData>
    implements $CartBottomPropDataCopyWith<$Res> {
  _$CartBottomPropDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartBottomPropData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAllSelected = freezed,
    Object? subTotal = freezed,
    Object? tdiscPrice = freezed,
    Object? tQuantity = freezed,
  }) {
    return _then(_value.copyWith(
      isAllSelected: freezed == isAllSelected
          ? _value.isAllSelected
          : isAllSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      tdiscPrice: freezed == tdiscPrice
          ? _value.tdiscPrice
          : tdiscPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      tQuantity: freezed == tQuantity
          ? _value.tQuantity
          : tQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartBottomPropDataImplCopyWith<$Res>
    implements $CartBottomPropDataCopyWith<$Res> {
  factory _$$CartBottomPropDataImplCopyWith(_$CartBottomPropDataImpl value,
          $Res Function(_$CartBottomPropDataImpl) then) =
      __$$CartBottomPropDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_all_seleted") bool? isAllSelected,
      @JsonKey(name: "subt_price") double? subTotal,
      @JsonKey(name: "t_disc") double? tdiscPrice,
      @JsonKey(name: "t_qty") int? tQuantity});
}

/// @nodoc
class __$$CartBottomPropDataImplCopyWithImpl<$Res>
    extends _$CartBottomPropDataCopyWithImpl<$Res, _$CartBottomPropDataImpl>
    implements _$$CartBottomPropDataImplCopyWith<$Res> {
  __$$CartBottomPropDataImplCopyWithImpl(_$CartBottomPropDataImpl _value,
      $Res Function(_$CartBottomPropDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartBottomPropData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAllSelected = freezed,
    Object? subTotal = freezed,
    Object? tdiscPrice = freezed,
    Object? tQuantity = freezed,
  }) {
    return _then(_$CartBottomPropDataImpl(
      isAllSelected: freezed == isAllSelected
          ? _value.isAllSelected
          : isAllSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      tdiscPrice: freezed == tdiscPrice
          ? _value.tdiscPrice
          : tdiscPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      tQuantity: freezed == tQuantity
          ? _value.tQuantity
          : tQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartBottomPropDataImpl implements _CartBottomPropData {
  _$CartBottomPropDataImpl(
      {@JsonKey(name: "is_all_seleted") this.isAllSelected,
      @JsonKey(name: "subt_price") this.subTotal,
      @JsonKey(name: "t_disc") this.tdiscPrice,
      @JsonKey(name: "t_qty") this.tQuantity});

  factory _$CartBottomPropDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartBottomPropDataImplFromJson(json);

  @override
  @JsonKey(name: "is_all_seleted")
  final bool? isAllSelected;
  @override
  @JsonKey(name: "subt_price")
  final double? subTotal;
  @override
  @JsonKey(name: "t_disc")
  final double? tdiscPrice;
  @override
  @JsonKey(name: "t_qty")
  final int? tQuantity;

  @override
  String toString() {
    return 'CartBottomPropData(isAllSelected: $isAllSelected, subTotal: $subTotal, tdiscPrice: $tdiscPrice, tQuantity: $tQuantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartBottomPropDataImpl &&
            (identical(other.isAllSelected, isAllSelected) ||
                other.isAllSelected == isAllSelected) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.tdiscPrice, tdiscPrice) ||
                other.tdiscPrice == tdiscPrice) &&
            (identical(other.tQuantity, tQuantity) ||
                other.tQuantity == tQuantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isAllSelected, subTotal, tdiscPrice, tQuantity);

  /// Create a copy of CartBottomPropData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartBottomPropDataImplCopyWith<_$CartBottomPropDataImpl> get copyWith =>
      __$$CartBottomPropDataImplCopyWithImpl<_$CartBottomPropDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartBottomPropDataImplToJson(
      this,
    );
  }
}

abstract class _CartBottomPropData implements CartBottomPropData {
  factory _CartBottomPropData(
      {@JsonKey(name: "is_all_seleted") final bool? isAllSelected,
      @JsonKey(name: "subt_price") final double? subTotal,
      @JsonKey(name: "t_disc") final double? tdiscPrice,
      @JsonKey(name: "t_qty") final int? tQuantity}) = _$CartBottomPropDataImpl;

  factory _CartBottomPropData.fromJson(Map<String, dynamic> json) =
      _$CartBottomPropDataImpl.fromJson;

  @override
  @JsonKey(name: "is_all_seleted")
  bool? get isAllSelected;
  @override
  @JsonKey(name: "subt_price")
  double? get subTotal;
  @override
  @JsonKey(name: "t_disc")
  double? get tdiscPrice;
  @override
  @JsonKey(name: "t_qty")
  int? get tQuantity;

  /// Create a copy of CartBottomPropData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartBottomPropDataImplCopyWith<_$CartBottomPropDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckoutProduct _$CheckoutProductFromJson(Map<String, dynamic> json) {
  return _CheckoutProduct.fromJson(json);
}

/// @nodoc
mixin _$CheckoutProduct {
  List<CheckoutProductData>? get checkoutProductData =>
      throw _privateConstructorUsedError;

  /// Serializes this CheckoutProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckoutProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckoutProductCopyWith<CheckoutProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutProductCopyWith<$Res> {
  factory $CheckoutProductCopyWith(
          CheckoutProduct value, $Res Function(CheckoutProduct) then) =
      _$CheckoutProductCopyWithImpl<$Res, CheckoutProduct>;
  @useResult
  $Res call({List<CheckoutProductData>? checkoutProductData});
}

/// @nodoc
class _$CheckoutProductCopyWithImpl<$Res, $Val extends CheckoutProduct>
    implements $CheckoutProductCopyWith<$Res> {
  _$CheckoutProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkoutProductData = freezed,
  }) {
    return _then(_value.copyWith(
      checkoutProductData: freezed == checkoutProductData
          ? _value.checkoutProductData
          : checkoutProductData // ignore: cast_nullable_to_non_nullable
              as List<CheckoutProductData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckoutProductImplCopyWith<$Res>
    implements $CheckoutProductCopyWith<$Res> {
  factory _$$CheckoutProductImplCopyWith(_$CheckoutProductImpl value,
          $Res Function(_$CheckoutProductImpl) then) =
      __$$CheckoutProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CheckoutProductData>? checkoutProductData});
}

/// @nodoc
class __$$CheckoutProductImplCopyWithImpl<$Res>
    extends _$CheckoutProductCopyWithImpl<$Res, _$CheckoutProductImpl>
    implements _$$CheckoutProductImplCopyWith<$Res> {
  __$$CheckoutProductImplCopyWithImpl(
      _$CheckoutProductImpl _value, $Res Function(_$CheckoutProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkoutProductData = freezed,
  }) {
    return _then(_$CheckoutProductImpl(
      checkoutProductData: freezed == checkoutProductData
          ? _value._checkoutProductData
          : checkoutProductData // ignore: cast_nullable_to_non_nullable
              as List<CheckoutProductData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutProductImpl implements _CheckoutProduct {
  _$CheckoutProductImpl({final List<CheckoutProductData>? checkoutProductData})
      : _checkoutProductData = checkoutProductData;

  factory _$CheckoutProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutProductImplFromJson(json);

  final List<CheckoutProductData>? _checkoutProductData;
  @override
  List<CheckoutProductData>? get checkoutProductData {
    final value = _checkoutProductData;
    if (value == null) return null;
    if (_checkoutProductData is EqualUnmodifiableListView)
      return _checkoutProductData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CheckoutProduct(checkoutProductData: $checkoutProductData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutProductImpl &&
            const DeepCollectionEquality()
                .equals(other._checkoutProductData, _checkoutProductData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_checkoutProductData));

  /// Create a copy of CheckoutProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutProductImplCopyWith<_$CheckoutProductImpl> get copyWith =>
      __$$CheckoutProductImplCopyWithImpl<_$CheckoutProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutProductImplToJson(
      this,
    );
  }
}

abstract class _CheckoutProduct implements CheckoutProduct {
  factory _CheckoutProduct(
          {final List<CheckoutProductData>? checkoutProductData}) =
      _$CheckoutProductImpl;

  factory _CheckoutProduct.fromJson(Map<String, dynamic> json) =
      _$CheckoutProductImpl.fromJson;

  @override
  List<CheckoutProductData>? get checkoutProductData;

  /// Create a copy of CheckoutProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutProductImplCopyWith<_$CheckoutProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckoutProductData _$CheckoutProductDataFromJson(Map<String, dynamic> json) {
  return _CheckoutProductData.fromJson(json);
}

/// @nodoc
mixin _$CheckoutProductData {
  @JsonKey(name: "batch_id")
  String? get batchID => throw _privateConstructorUsedError;
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_name")
  String? get prodName => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get variant => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_price")
  double? get discPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "stock")
  int? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: "tag_values")
  String? get tagValue => throw _privateConstructorUsedError;

  /// Serializes this CheckoutProductData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckoutProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckoutProductDataCopyWith<CheckoutProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutProductDataCopyWith<$Res> {
  factory $CheckoutProductDataCopyWith(
          CheckoutProductData value, $Res Function(CheckoutProductData) then) =
      _$CheckoutProductDataCopyWithImpl<$Res, CheckoutProductData>;
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "value") String? variant,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "stock") int? stock,
      @JsonKey(name: "tag_values") String? tagValue});
}

/// @nodoc
class _$CheckoutProductDataCopyWithImpl<$Res, $Val extends CheckoutProductData>
    implements $CheckoutProductDataCopyWith<$Res> {
  _$CheckoutProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? imgData = freezed,
    Object? prodName = freezed,
    Object? variant = freezed,
    Object? discPrice = freezed,
    Object? quantity = freezed,
    Object? stock = freezed,
    Object? tagValue = freezed,
  }) {
    return _then(_value.copyWith(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      tagValue: freezed == tagValue
          ? _value.tagValue
          : tagValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckoutProductDataImplCopyWith<$Res>
    implements $CheckoutProductDataCopyWith<$Res> {
  factory _$$CheckoutProductDataImplCopyWith(_$CheckoutProductDataImpl value,
          $Res Function(_$CheckoutProductDataImpl) then) =
      __$$CheckoutProductDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "value") String? variant,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "stock") int? stock,
      @JsonKey(name: "tag_values") String? tagValue});
}

/// @nodoc
class __$$CheckoutProductDataImplCopyWithImpl<$Res>
    extends _$CheckoutProductDataCopyWithImpl<$Res, _$CheckoutProductDataImpl>
    implements _$$CheckoutProductDataImplCopyWith<$Res> {
  __$$CheckoutProductDataImplCopyWithImpl(_$CheckoutProductDataImpl _value,
      $Res Function(_$CheckoutProductDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? imgData = freezed,
    Object? prodName = freezed,
    Object? variant = freezed,
    Object? discPrice = freezed,
    Object? quantity = freezed,
    Object? stock = freezed,
    Object? tagValue = freezed,
  }) {
    return _then(_$CheckoutProductDataImpl(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      tagValue: freezed == tagValue
          ? _value.tagValue
          : tagValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutProductDataImpl implements _CheckoutProductData {
  _$CheckoutProductDataImpl(
      {@JsonKey(name: "batch_id") this.batchID,
      @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      this.imgData,
      @JsonKey(name: "prod_name") this.prodName,
      @JsonKey(name: "value") this.variant,
      @JsonKey(name: "disc_price") this.discPrice,
      @JsonKey(name: "quantity") this.quantity,
      @JsonKey(name: "stock") this.stock,
      @JsonKey(name: "tag_values") this.tagValue});

  factory _$CheckoutProductDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutProductDataImplFromJson(json);

  @override
  @JsonKey(name: "batch_id")
  final String? batchID;
  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  final Uint8List? imgData;
  @override
  @JsonKey(name: "prod_name")
  final String? prodName;
  @override
  @JsonKey(name: "value")
  final String? variant;
  @override
  @JsonKey(name: "disc_price")
  final double? discPrice;
  @override
  @JsonKey(name: "quantity")
  final int? quantity;
  @override
  @JsonKey(name: "stock")
  final int? stock;
  @override
  @JsonKey(name: "tag_values")
  final String? tagValue;

  @override
  String toString() {
    return 'CheckoutProductData(batchID: $batchID, imgData: $imgData, prodName: $prodName, variant: $variant, discPrice: $discPrice, quantity: $quantity, stock: $stock, tagValue: $tagValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutProductDataImpl &&
            (identical(other.batchID, batchID) || other.batchID == batchID) &&
            const DeepCollectionEquality().equals(other.imgData, imgData) &&
            (identical(other.prodName, prodName) ||
                other.prodName == prodName) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.discPrice, discPrice) ||
                other.discPrice == discPrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.tagValue, tagValue) ||
                other.tagValue == tagValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      batchID,
      const DeepCollectionEquality().hash(imgData),
      prodName,
      variant,
      discPrice,
      quantity,
      stock,
      tagValue);

  /// Create a copy of CheckoutProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutProductDataImplCopyWith<_$CheckoutProductDataImpl> get copyWith =>
      __$$CheckoutProductDataImplCopyWithImpl<_$CheckoutProductDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutProductDataImplToJson(
      this,
    );
  }
}

abstract class _CheckoutProductData implements CheckoutProductData {
  factory _CheckoutProductData(
          {@JsonKey(name: "batch_id") final String? batchID,
          @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
          final Uint8List? imgData,
          @JsonKey(name: "prod_name") final String? prodName,
          @JsonKey(name: "value") final String? variant,
          @JsonKey(name: "disc_price") final double? discPrice,
          @JsonKey(name: "quantity") final int? quantity,
          @JsonKey(name: "stock") final int? stock,
          @JsonKey(name: "tag_values") final String? tagValue}) =
      _$CheckoutProductDataImpl;

  factory _CheckoutProductData.fromJson(Map<String, dynamic> json) =
      _$CheckoutProductDataImpl.fromJson;

  @override
  @JsonKey(name: "batch_id")
  String? get batchID;
  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData;
  @override
  @JsonKey(name: "prod_name")
  String? get prodName;
  @override
  @JsonKey(name: "value")
  String? get variant;
  @override
  @JsonKey(name: "disc_price")
  double? get discPrice;
  @override
  @JsonKey(name: "quantity")
  int? get quantity;
  @override
  @JsonKey(name: "stock")
  int? get stock;
  @override
  @JsonKey(name: "tag_values")
  String? get tagValue;

  /// Create a copy of CheckoutProductData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutProductDataImplCopyWith<_$CheckoutProductDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckoutProductPricesData _$CheckoutProductPricesDataFromJson(
    Map<String, dynamic> json) {
  return _CheckoutProductPricesData.fromJson(json);
}

/// @nodoc
mixin _$CheckoutProductPricesData {
  @JsonKey(name: "merch_subt")
  double? get merchSubTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "voucher")
  double? get voucher => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_f_subt")
  double? get shippingFeeSubTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_f_disc_subt")
  double? get shippingFeeDiscSubTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  double? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "total_disc")
  double? get totalDisc => throw _privateConstructorUsedError;

  /// Serializes this CheckoutProductPricesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckoutProductPricesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckoutProductPricesDataCopyWith<CheckoutProductPricesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutProductPricesDataCopyWith<$Res> {
  factory $CheckoutProductPricesDataCopyWith(CheckoutProductPricesData value,
          $Res Function(CheckoutProductPricesData) then) =
      _$CheckoutProductPricesDataCopyWithImpl<$Res, CheckoutProductPricesData>;
  @useResult
  $Res call(
      {@JsonKey(name: "merch_subt") double? merchSubTotal,
      @JsonKey(name: "voucher") double? voucher,
      @JsonKey(name: "ship_f_subt") double? shippingFeeSubTotal,
      @JsonKey(name: "ship_f_disc_subt") double? shippingFeeDiscSubTotal,
      @JsonKey(name: "total") double? total,
      @JsonKey(name: "total_disc") double? totalDisc});
}

/// @nodoc
class _$CheckoutProductPricesDataCopyWithImpl<$Res,
        $Val extends CheckoutProductPricesData>
    implements $CheckoutProductPricesDataCopyWith<$Res> {
  _$CheckoutProductPricesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutProductPricesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchSubTotal = freezed,
    Object? voucher = freezed,
    Object? shippingFeeSubTotal = freezed,
    Object? shippingFeeDiscSubTotal = freezed,
    Object? total = freezed,
    Object? totalDisc = freezed,
  }) {
    return _then(_value.copyWith(
      merchSubTotal: freezed == merchSubTotal
          ? _value.merchSubTotal
          : merchSubTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      voucher: freezed == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as double?,
      shippingFeeSubTotal: freezed == shippingFeeSubTotal
          ? _value.shippingFeeSubTotal
          : shippingFeeSubTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      shippingFeeDiscSubTotal: freezed == shippingFeeDiscSubTotal
          ? _value.shippingFeeDiscSubTotal
          : shippingFeeDiscSubTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      totalDisc: freezed == totalDisc
          ? _value.totalDisc
          : totalDisc // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckoutProductPricesDataImplCopyWith<$Res>
    implements $CheckoutProductPricesDataCopyWith<$Res> {
  factory _$$CheckoutProductPricesDataImplCopyWith(
          _$CheckoutProductPricesDataImpl value,
          $Res Function(_$CheckoutProductPricesDataImpl) then) =
      __$$CheckoutProductPricesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "merch_subt") double? merchSubTotal,
      @JsonKey(name: "voucher") double? voucher,
      @JsonKey(name: "ship_f_subt") double? shippingFeeSubTotal,
      @JsonKey(name: "ship_f_disc_subt") double? shippingFeeDiscSubTotal,
      @JsonKey(name: "total") double? total,
      @JsonKey(name: "total_disc") double? totalDisc});
}

/// @nodoc
class __$$CheckoutProductPricesDataImplCopyWithImpl<$Res>
    extends _$CheckoutProductPricesDataCopyWithImpl<$Res,
        _$CheckoutProductPricesDataImpl>
    implements _$$CheckoutProductPricesDataImplCopyWith<$Res> {
  __$$CheckoutProductPricesDataImplCopyWithImpl(
      _$CheckoutProductPricesDataImpl _value,
      $Res Function(_$CheckoutProductPricesDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutProductPricesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchSubTotal = freezed,
    Object? voucher = freezed,
    Object? shippingFeeSubTotal = freezed,
    Object? shippingFeeDiscSubTotal = freezed,
    Object? total = freezed,
    Object? totalDisc = freezed,
  }) {
    return _then(_$CheckoutProductPricesDataImpl(
      merchSubTotal: freezed == merchSubTotal
          ? _value.merchSubTotal
          : merchSubTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      voucher: freezed == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as double?,
      shippingFeeSubTotal: freezed == shippingFeeSubTotal
          ? _value.shippingFeeSubTotal
          : shippingFeeSubTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      shippingFeeDiscSubTotal: freezed == shippingFeeDiscSubTotal
          ? _value.shippingFeeDiscSubTotal
          : shippingFeeDiscSubTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      totalDisc: freezed == totalDisc
          ? _value.totalDisc
          : totalDisc // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutProductPricesDataImpl implements _CheckoutProductPricesData {
  _$CheckoutProductPricesDataImpl(
      {@JsonKey(name: "merch_subt") this.merchSubTotal,
      @JsonKey(name: "voucher") this.voucher,
      @JsonKey(name: "ship_f_subt") this.shippingFeeSubTotal,
      @JsonKey(name: "ship_f_disc_subt") this.shippingFeeDiscSubTotal,
      @JsonKey(name: "total") this.total,
      @JsonKey(name: "total_disc") this.totalDisc});

  factory _$CheckoutProductPricesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutProductPricesDataImplFromJson(json);

  @override
  @JsonKey(name: "merch_subt")
  final double? merchSubTotal;
  @override
  @JsonKey(name: "voucher")
  final double? voucher;
  @override
  @JsonKey(name: "ship_f_subt")
  final double? shippingFeeSubTotal;
  @override
  @JsonKey(name: "ship_f_disc_subt")
  final double? shippingFeeDiscSubTotal;
  @override
  @JsonKey(name: "total")
  final double? total;
  @override
  @JsonKey(name: "total_disc")
  final double? totalDisc;

  @override
  String toString() {
    return 'CheckoutProductPricesData(merchSubTotal: $merchSubTotal, voucher: $voucher, shippingFeeSubTotal: $shippingFeeSubTotal, shippingFeeDiscSubTotal: $shippingFeeDiscSubTotal, total: $total, totalDisc: $totalDisc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutProductPricesDataImpl &&
            (identical(other.merchSubTotal, merchSubTotal) ||
                other.merchSubTotal == merchSubTotal) &&
            (identical(other.voucher, voucher) || other.voucher == voucher) &&
            (identical(other.shippingFeeSubTotal, shippingFeeSubTotal) ||
                other.shippingFeeSubTotal == shippingFeeSubTotal) &&
            (identical(
                    other.shippingFeeDiscSubTotal, shippingFeeDiscSubTotal) ||
                other.shippingFeeDiscSubTotal == shippingFeeDiscSubTotal) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalDisc, totalDisc) ||
                other.totalDisc == totalDisc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, merchSubTotal, voucher,
      shippingFeeSubTotal, shippingFeeDiscSubTotal, total, totalDisc);

  /// Create a copy of CheckoutProductPricesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutProductPricesDataImplCopyWith<_$CheckoutProductPricesDataImpl>
      get copyWith => __$$CheckoutProductPricesDataImplCopyWithImpl<
          _$CheckoutProductPricesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutProductPricesDataImplToJson(
      this,
    );
  }
}

abstract class _CheckoutProductPricesData implements CheckoutProductPricesData {
  factory _CheckoutProductPricesData(
      {@JsonKey(name: "merch_subt") final double? merchSubTotal,
      @JsonKey(name: "voucher") final double? voucher,
      @JsonKey(name: "ship_f_subt") final double? shippingFeeSubTotal,
      @JsonKey(name: "ship_f_disc_subt") final double? shippingFeeDiscSubTotal,
      @JsonKey(name: "total") final double? total,
      @JsonKey(name: "total_disc")
      final double? totalDisc}) = _$CheckoutProductPricesDataImpl;

  factory _CheckoutProductPricesData.fromJson(Map<String, dynamic> json) =
      _$CheckoutProductPricesDataImpl.fromJson;

  @override
  @JsonKey(name: "merch_subt")
  double? get merchSubTotal;
  @override
  @JsonKey(name: "voucher")
  double? get voucher;
  @override
  @JsonKey(name: "ship_f_subt")
  double? get shippingFeeSubTotal;
  @override
  @JsonKey(name: "ship_f_disc_subt")
  double? get shippingFeeDiscSubTotal;
  @override
  @JsonKey(name: "total")
  double? get total;
  @override
  @JsonKey(name: "total_disc")
  double? get totalDisc;

  /// Create a copy of CheckoutProductPricesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutProductPricesDataImplCopyWith<_$CheckoutProductPricesDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserShippingAddress _$UserShippingAddressFromJson(Map<String, dynamic> json) {
  return _UserShippingAddress.fromJson(json);
}

/// @nodoc
mixin _$UserShippingAddress {
  List<UserShippingAddressData>? get userShippingData =>
      throw _privateConstructorUsedError;

  /// Serializes this UserShippingAddress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserShippingAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserShippingAddressCopyWith<UserShippingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserShippingAddressCopyWith<$Res> {
  factory $UserShippingAddressCopyWith(
          UserShippingAddress value, $Res Function(UserShippingAddress) then) =
      _$UserShippingAddressCopyWithImpl<$Res, UserShippingAddress>;
  @useResult
  $Res call({List<UserShippingAddressData>? userShippingData});
}

/// @nodoc
class _$UserShippingAddressCopyWithImpl<$Res, $Val extends UserShippingAddress>
    implements $UserShippingAddressCopyWith<$Res> {
  _$UserShippingAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserShippingAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userShippingData = freezed,
  }) {
    return _then(_value.copyWith(
      userShippingData: freezed == userShippingData
          ? _value.userShippingData
          : userShippingData // ignore: cast_nullable_to_non_nullable
              as List<UserShippingAddressData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserShippingAddressImplCopyWith<$Res>
    implements $UserShippingAddressCopyWith<$Res> {
  factory _$$UserShippingAddressImplCopyWith(_$UserShippingAddressImpl value,
          $Res Function(_$UserShippingAddressImpl) then) =
      __$$UserShippingAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserShippingAddressData>? userShippingData});
}

/// @nodoc
class __$$UserShippingAddressImplCopyWithImpl<$Res>
    extends _$UserShippingAddressCopyWithImpl<$Res, _$UserShippingAddressImpl>
    implements _$$UserShippingAddressImplCopyWith<$Res> {
  __$$UserShippingAddressImplCopyWithImpl(_$UserShippingAddressImpl _value,
      $Res Function(_$UserShippingAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserShippingAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userShippingData = freezed,
  }) {
    return _then(_$UserShippingAddressImpl(
      userShippingData: freezed == userShippingData
          ? _value._userShippingData
          : userShippingData // ignore: cast_nullable_to_non_nullable
              as List<UserShippingAddressData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserShippingAddressImpl implements _UserShippingAddress {
  _$UserShippingAddressImpl(
      {final List<UserShippingAddressData>? userShippingData})
      : _userShippingData = userShippingData;

  factory _$UserShippingAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserShippingAddressImplFromJson(json);

  final List<UserShippingAddressData>? _userShippingData;
  @override
  List<UserShippingAddressData>? get userShippingData {
    final value = _userShippingData;
    if (value == null) return null;
    if (_userShippingData is EqualUnmodifiableListView)
      return _userShippingData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserShippingAddress(userShippingData: $userShippingData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserShippingAddressImpl &&
            const DeepCollectionEquality()
                .equals(other._userShippingData, _userShippingData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_userShippingData));

  /// Create a copy of UserShippingAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserShippingAddressImplCopyWith<_$UserShippingAddressImpl> get copyWith =>
      __$$UserShippingAddressImplCopyWithImpl<_$UserShippingAddressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserShippingAddressImplToJson(
      this,
    );
  }
}

abstract class _UserShippingAddress implements UserShippingAddress {
  factory _UserShippingAddress(
          {final List<UserShippingAddressData>? userShippingData}) =
      _$UserShippingAddressImpl;

  factory _UserShippingAddress.fromJson(Map<String, dynamic> json) =
      _$UserShippingAddressImpl.fromJson;

  @override
  List<UserShippingAddressData>? get userShippingData;

  /// Create a copy of UserShippingAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserShippingAddressImplCopyWith<_$UserShippingAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserShippingAddressDataSingle _$UserShippingAddressDataSingleFromJson(
    Map<String, dynamic> json) {
  return _UserShippingAddressDataSingle.fromJson(json);
}

/// @nodoc
mixin _$UserShippingAddressDataSingle {
  @JsonKey(name: "shipping_add_id")
  String? get shippingAddressID => throw _privateConstructorUsedError;
  @JsonKey(name: "recipients_name")
  String? get recipientName => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile_no")
  String? get mobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: "region")
  String? get region => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "district")
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: "st_bldg")
  String? get stBldg => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_floor")
  String? get unitFloor => throw _privateConstructorUsedError;
  @JsonKey(name: "address_category")
  String? get addressCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "is_default")
  bool? get isDefault => throw _privateConstructorUsedError;
  @JsonKey(name: "is_selected")
  bool? get isSelected => throw _privateConstructorUsedError;

  /// Serializes this UserShippingAddressDataSingle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserShippingAddressDataSingle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserShippingAddressDataSingleCopyWith<UserShippingAddressDataSingle>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserShippingAddressDataSingleCopyWith<$Res> {
  factory $UserShippingAddressDataSingleCopyWith(
          UserShippingAddressDataSingle value,
          $Res Function(UserShippingAddressDataSingle) then) =
      _$UserShippingAddressDataSingleCopyWithImpl<$Res,
          UserShippingAddressDataSingle>;
  @useResult
  $Res call(
      {@JsonKey(name: "shipping_add_id") String? shippingAddressID,
      @JsonKey(name: "recipients_name") String? recipientName,
      @JsonKey(name: "mobile_no") String? mobileNo,
      @JsonKey(name: "region") String? region,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "district") String? district,
      @JsonKey(name: "st_bldg") String? stBldg,
      @JsonKey(name: "unit_floor") String? unitFloor,
      @JsonKey(name: "address_category") String? addressCategory,
      @JsonKey(name: "is_default") bool? isDefault,
      @JsonKey(name: "is_selected") bool? isSelected});
}

/// @nodoc
class _$UserShippingAddressDataSingleCopyWithImpl<$Res,
        $Val extends UserShippingAddressDataSingle>
    implements $UserShippingAddressDataSingleCopyWith<$Res> {
  _$UserShippingAddressDataSingleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserShippingAddressDataSingle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingAddressID = freezed,
    Object? recipientName = freezed,
    Object? mobileNo = freezed,
    Object? region = freezed,
    Object? city = freezed,
    Object? district = freezed,
    Object? stBldg = freezed,
    Object? unitFloor = freezed,
    Object? addressCategory = freezed,
    Object? isDefault = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      shippingAddressID: freezed == shippingAddressID
          ? _value.shippingAddressID
          : shippingAddressID // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientName: freezed == recipientName
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      stBldg: freezed == stBldg
          ? _value.stBldg
          : stBldg // ignore: cast_nullable_to_non_nullable
              as String?,
      unitFloor: freezed == unitFloor
          ? _value.unitFloor
          : unitFloor // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCategory: freezed == addressCategory
          ? _value.addressCategory
          : addressCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserShippingAddressDataSingleImplCopyWith<$Res>
    implements $UserShippingAddressDataSingleCopyWith<$Res> {
  factory _$$UserShippingAddressDataSingleImplCopyWith(
          _$UserShippingAddressDataSingleImpl value,
          $Res Function(_$UserShippingAddressDataSingleImpl) then) =
      __$$UserShippingAddressDataSingleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "shipping_add_id") String? shippingAddressID,
      @JsonKey(name: "recipients_name") String? recipientName,
      @JsonKey(name: "mobile_no") String? mobileNo,
      @JsonKey(name: "region") String? region,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "district") String? district,
      @JsonKey(name: "st_bldg") String? stBldg,
      @JsonKey(name: "unit_floor") String? unitFloor,
      @JsonKey(name: "address_category") String? addressCategory,
      @JsonKey(name: "is_default") bool? isDefault,
      @JsonKey(name: "is_selected") bool? isSelected});
}

/// @nodoc
class __$$UserShippingAddressDataSingleImplCopyWithImpl<$Res>
    extends _$UserShippingAddressDataSingleCopyWithImpl<$Res,
        _$UserShippingAddressDataSingleImpl>
    implements _$$UserShippingAddressDataSingleImplCopyWith<$Res> {
  __$$UserShippingAddressDataSingleImplCopyWithImpl(
      _$UserShippingAddressDataSingleImpl _value,
      $Res Function(_$UserShippingAddressDataSingleImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserShippingAddressDataSingle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingAddressID = freezed,
    Object? recipientName = freezed,
    Object? mobileNo = freezed,
    Object? region = freezed,
    Object? city = freezed,
    Object? district = freezed,
    Object? stBldg = freezed,
    Object? unitFloor = freezed,
    Object? addressCategory = freezed,
    Object? isDefault = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_$UserShippingAddressDataSingleImpl(
      shippingAddressID: freezed == shippingAddressID
          ? _value.shippingAddressID
          : shippingAddressID // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientName: freezed == recipientName
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      stBldg: freezed == stBldg
          ? _value.stBldg
          : stBldg // ignore: cast_nullable_to_non_nullable
              as String?,
      unitFloor: freezed == unitFloor
          ? _value.unitFloor
          : unitFloor // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCategory: freezed == addressCategory
          ? _value.addressCategory
          : addressCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserShippingAddressDataSingleImpl
    implements _UserShippingAddressDataSingle {
  _$UserShippingAddressDataSingleImpl(
      {@JsonKey(name: "shipping_add_id") this.shippingAddressID,
      @JsonKey(name: "recipients_name") this.recipientName,
      @JsonKey(name: "mobile_no") this.mobileNo,
      @JsonKey(name: "region") this.region,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "district") this.district,
      @JsonKey(name: "st_bldg") this.stBldg,
      @JsonKey(name: "unit_floor") this.unitFloor,
      @JsonKey(name: "address_category") this.addressCategory,
      @JsonKey(name: "is_default") this.isDefault,
      @JsonKey(name: "is_selected") this.isSelected});

  factory _$UserShippingAddressDataSingleImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserShippingAddressDataSingleImplFromJson(json);

  @override
  @JsonKey(name: "shipping_add_id")
  final String? shippingAddressID;
  @override
  @JsonKey(name: "recipients_name")
  final String? recipientName;
  @override
  @JsonKey(name: "mobile_no")
  final String? mobileNo;
  @override
  @JsonKey(name: "region")
  final String? region;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "district")
  final String? district;
  @override
  @JsonKey(name: "st_bldg")
  final String? stBldg;
  @override
  @JsonKey(name: "unit_floor")
  final String? unitFloor;
  @override
  @JsonKey(name: "address_category")
  final String? addressCategory;
  @override
  @JsonKey(name: "is_default")
  final bool? isDefault;
  @override
  @JsonKey(name: "is_selected")
  final bool? isSelected;

  @override
  String toString() {
    return 'UserShippingAddressDataSingle(shippingAddressID: $shippingAddressID, recipientName: $recipientName, mobileNo: $mobileNo, region: $region, city: $city, district: $district, stBldg: $stBldg, unitFloor: $unitFloor, addressCategory: $addressCategory, isDefault: $isDefault, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserShippingAddressDataSingleImpl &&
            (identical(other.shippingAddressID, shippingAddressID) ||
                other.shippingAddressID == shippingAddressID) &&
            (identical(other.recipientName, recipientName) ||
                other.recipientName == recipientName) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.stBldg, stBldg) || other.stBldg == stBldg) &&
            (identical(other.unitFloor, unitFloor) ||
                other.unitFloor == unitFloor) &&
            (identical(other.addressCategory, addressCategory) ||
                other.addressCategory == addressCategory) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      shippingAddressID,
      recipientName,
      mobileNo,
      region,
      city,
      district,
      stBldg,
      unitFloor,
      addressCategory,
      isDefault,
      isSelected);

  /// Create a copy of UserShippingAddressDataSingle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserShippingAddressDataSingleImplCopyWith<
          _$UserShippingAddressDataSingleImpl>
      get copyWith => __$$UserShippingAddressDataSingleImplCopyWithImpl<
          _$UserShippingAddressDataSingleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserShippingAddressDataSingleImplToJson(
      this,
    );
  }
}

abstract class _UserShippingAddressDataSingle
    implements UserShippingAddressDataSingle {
  factory _UserShippingAddressDataSingle(
          {@JsonKey(name: "shipping_add_id") final String? shippingAddressID,
          @JsonKey(name: "recipients_name") final String? recipientName,
          @JsonKey(name: "mobile_no") final String? mobileNo,
          @JsonKey(name: "region") final String? region,
          @JsonKey(name: "city") final String? city,
          @JsonKey(name: "district") final String? district,
          @JsonKey(name: "st_bldg") final String? stBldg,
          @JsonKey(name: "unit_floor") final String? unitFloor,
          @JsonKey(name: "address_category") final String? addressCategory,
          @JsonKey(name: "is_default") final bool? isDefault,
          @JsonKey(name: "is_selected") final bool? isSelected}) =
      _$UserShippingAddressDataSingleImpl;

  factory _UserShippingAddressDataSingle.fromJson(Map<String, dynamic> json) =
      _$UserShippingAddressDataSingleImpl.fromJson;

  @override
  @JsonKey(name: "shipping_add_id")
  String? get shippingAddressID;
  @override
  @JsonKey(name: "recipients_name")
  String? get recipientName;
  @override
  @JsonKey(name: "mobile_no")
  String? get mobileNo;
  @override
  @JsonKey(name: "region")
  String? get region;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "district")
  String? get district;
  @override
  @JsonKey(name: "st_bldg")
  String? get stBldg;
  @override
  @JsonKey(name: "unit_floor")
  String? get unitFloor;
  @override
  @JsonKey(name: "address_category")
  String? get addressCategory;
  @override
  @JsonKey(name: "is_default")
  bool? get isDefault;
  @override
  @JsonKey(name: "is_selected")
  bool? get isSelected;

  /// Create a copy of UserShippingAddressDataSingle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserShippingAddressDataSingleImplCopyWith<
          _$UserShippingAddressDataSingleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserShippingAddressData _$UserShippingAddressDataFromJson(
    Map<String, dynamic> json) {
  return _UserShippingAddressData.fromJson(json);
}

/// @nodoc
mixin _$UserShippingAddressData {
  @JsonKey(name: "shipping_add_id")
  String? get shippingAddressID => throw _privateConstructorUsedError;
  @JsonKey(name: "recipients_name")
  String? get recipientName => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile_no")
  String? get mobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: "region")
  String? get region => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "district")
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: "st_bldg")
  String? get stBldg => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_floor")
  String? get unitFloor => throw _privateConstructorUsedError;
  @JsonKey(name: "address_category")
  String? get addressCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "is_default")
  bool? get isDefault => throw _privateConstructorUsedError;
  @JsonKey(name: "is_selected")
  bool? get isSelected => throw _privateConstructorUsedError;

  /// Serializes this UserShippingAddressData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserShippingAddressData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserShippingAddressDataCopyWith<UserShippingAddressData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserShippingAddressDataCopyWith<$Res> {
  factory $UserShippingAddressDataCopyWith(UserShippingAddressData value,
          $Res Function(UserShippingAddressData) then) =
      _$UserShippingAddressDataCopyWithImpl<$Res, UserShippingAddressData>;
  @useResult
  $Res call(
      {@JsonKey(name: "shipping_add_id") String? shippingAddressID,
      @JsonKey(name: "recipients_name") String? recipientName,
      @JsonKey(name: "mobile_no") String? mobileNo,
      @JsonKey(name: "region") String? region,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "district") String? district,
      @JsonKey(name: "st_bldg") String? stBldg,
      @JsonKey(name: "unit_floor") String? unitFloor,
      @JsonKey(name: "address_category") String? addressCategory,
      @JsonKey(name: "is_default") bool? isDefault,
      @JsonKey(name: "is_selected") bool? isSelected});
}

/// @nodoc
class _$UserShippingAddressDataCopyWithImpl<$Res,
        $Val extends UserShippingAddressData>
    implements $UserShippingAddressDataCopyWith<$Res> {
  _$UserShippingAddressDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserShippingAddressData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingAddressID = freezed,
    Object? recipientName = freezed,
    Object? mobileNo = freezed,
    Object? region = freezed,
    Object? city = freezed,
    Object? district = freezed,
    Object? stBldg = freezed,
    Object? unitFloor = freezed,
    Object? addressCategory = freezed,
    Object? isDefault = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      shippingAddressID: freezed == shippingAddressID
          ? _value.shippingAddressID
          : shippingAddressID // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientName: freezed == recipientName
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      stBldg: freezed == stBldg
          ? _value.stBldg
          : stBldg // ignore: cast_nullable_to_non_nullable
              as String?,
      unitFloor: freezed == unitFloor
          ? _value.unitFloor
          : unitFloor // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCategory: freezed == addressCategory
          ? _value.addressCategory
          : addressCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserShippingAddressDataImplCopyWith<$Res>
    implements $UserShippingAddressDataCopyWith<$Res> {
  factory _$$UserShippingAddressDataImplCopyWith(
          _$UserShippingAddressDataImpl value,
          $Res Function(_$UserShippingAddressDataImpl) then) =
      __$$UserShippingAddressDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "shipping_add_id") String? shippingAddressID,
      @JsonKey(name: "recipients_name") String? recipientName,
      @JsonKey(name: "mobile_no") String? mobileNo,
      @JsonKey(name: "region") String? region,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "district") String? district,
      @JsonKey(name: "st_bldg") String? stBldg,
      @JsonKey(name: "unit_floor") String? unitFloor,
      @JsonKey(name: "address_category") String? addressCategory,
      @JsonKey(name: "is_default") bool? isDefault,
      @JsonKey(name: "is_selected") bool? isSelected});
}

/// @nodoc
class __$$UserShippingAddressDataImplCopyWithImpl<$Res>
    extends _$UserShippingAddressDataCopyWithImpl<$Res,
        _$UserShippingAddressDataImpl>
    implements _$$UserShippingAddressDataImplCopyWith<$Res> {
  __$$UserShippingAddressDataImplCopyWithImpl(
      _$UserShippingAddressDataImpl _value,
      $Res Function(_$UserShippingAddressDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserShippingAddressData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingAddressID = freezed,
    Object? recipientName = freezed,
    Object? mobileNo = freezed,
    Object? region = freezed,
    Object? city = freezed,
    Object? district = freezed,
    Object? stBldg = freezed,
    Object? unitFloor = freezed,
    Object? addressCategory = freezed,
    Object? isDefault = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_$UserShippingAddressDataImpl(
      shippingAddressID: freezed == shippingAddressID
          ? _value.shippingAddressID
          : shippingAddressID // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientName: freezed == recipientName
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      stBldg: freezed == stBldg
          ? _value.stBldg
          : stBldg // ignore: cast_nullable_to_non_nullable
              as String?,
      unitFloor: freezed == unitFloor
          ? _value.unitFloor
          : unitFloor // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCategory: freezed == addressCategory
          ? _value.addressCategory
          : addressCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserShippingAddressDataImpl implements _UserShippingAddressData {
  _$UserShippingAddressDataImpl(
      {@JsonKey(name: "shipping_add_id") this.shippingAddressID,
      @JsonKey(name: "recipients_name") this.recipientName,
      @JsonKey(name: "mobile_no") this.mobileNo,
      @JsonKey(name: "region") this.region,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "district") this.district,
      @JsonKey(name: "st_bldg") this.stBldg,
      @JsonKey(name: "unit_floor") this.unitFloor,
      @JsonKey(name: "address_category") this.addressCategory,
      @JsonKey(name: "is_default") this.isDefault,
      @JsonKey(name: "is_selected") this.isSelected});

  factory _$UserShippingAddressDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserShippingAddressDataImplFromJson(json);

  @override
  @JsonKey(name: "shipping_add_id")
  final String? shippingAddressID;
  @override
  @JsonKey(name: "recipients_name")
  final String? recipientName;
  @override
  @JsonKey(name: "mobile_no")
  final String? mobileNo;
  @override
  @JsonKey(name: "region")
  final String? region;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "district")
  final String? district;
  @override
  @JsonKey(name: "st_bldg")
  final String? stBldg;
  @override
  @JsonKey(name: "unit_floor")
  final String? unitFloor;
  @override
  @JsonKey(name: "address_category")
  final String? addressCategory;
  @override
  @JsonKey(name: "is_default")
  final bool? isDefault;
  @override
  @JsonKey(name: "is_selected")
  final bool? isSelected;

  @override
  String toString() {
    return 'UserShippingAddressData(shippingAddressID: $shippingAddressID, recipientName: $recipientName, mobileNo: $mobileNo, region: $region, city: $city, district: $district, stBldg: $stBldg, unitFloor: $unitFloor, addressCategory: $addressCategory, isDefault: $isDefault, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserShippingAddressDataImpl &&
            (identical(other.shippingAddressID, shippingAddressID) ||
                other.shippingAddressID == shippingAddressID) &&
            (identical(other.recipientName, recipientName) ||
                other.recipientName == recipientName) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.stBldg, stBldg) || other.stBldg == stBldg) &&
            (identical(other.unitFloor, unitFloor) ||
                other.unitFloor == unitFloor) &&
            (identical(other.addressCategory, addressCategory) ||
                other.addressCategory == addressCategory) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      shippingAddressID,
      recipientName,
      mobileNo,
      region,
      city,
      district,
      stBldg,
      unitFloor,
      addressCategory,
      isDefault,
      isSelected);

  /// Create a copy of UserShippingAddressData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserShippingAddressDataImplCopyWith<_$UserShippingAddressDataImpl>
      get copyWith => __$$UserShippingAddressDataImplCopyWithImpl<
          _$UserShippingAddressDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserShippingAddressDataImplToJson(
      this,
    );
  }
}

abstract class _UserShippingAddressData implements UserShippingAddressData {
  factory _UserShippingAddressData(
          {@JsonKey(name: "shipping_add_id") final String? shippingAddressID,
          @JsonKey(name: "recipients_name") final String? recipientName,
          @JsonKey(name: "mobile_no") final String? mobileNo,
          @JsonKey(name: "region") final String? region,
          @JsonKey(name: "city") final String? city,
          @JsonKey(name: "district") final String? district,
          @JsonKey(name: "st_bldg") final String? stBldg,
          @JsonKey(name: "unit_floor") final String? unitFloor,
          @JsonKey(name: "address_category") final String? addressCategory,
          @JsonKey(name: "is_default") final bool? isDefault,
          @JsonKey(name: "is_selected") final bool? isSelected}) =
      _$UserShippingAddressDataImpl;

  factory _UserShippingAddressData.fromJson(Map<String, dynamic> json) =
      _$UserShippingAddressDataImpl.fromJson;

  @override
  @JsonKey(name: "shipping_add_id")
  String? get shippingAddressID;
  @override
  @JsonKey(name: "recipients_name")
  String? get recipientName;
  @override
  @JsonKey(name: "mobile_no")
  String? get mobileNo;
  @override
  @JsonKey(name: "region")
  String? get region;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "district")
  String? get district;
  @override
  @JsonKey(name: "st_bldg")
  String? get stBldg;
  @override
  @JsonKey(name: "unit_floor")
  String? get unitFloor;
  @override
  @JsonKey(name: "address_category")
  String? get addressCategory;
  @override
  @JsonKey(name: "is_default")
  bool? get isDefault;
  @override
  @JsonKey(name: "is_selected")
  bool? get isSelected;

  /// Create a copy of UserShippingAddressData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserShippingAddressDataImplCopyWith<_$UserShippingAddressDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DisplayNameMyOrdersBadgeCounts _$DisplayNameMyOrdersBadgeCountsFromJson(
    Map<String, dynamic> json) {
  return _DisplayNameMyOrdersBadgeCounts.fromJson(json);
}

/// @nodoc
mixin _$DisplayNameMyOrdersBadgeCounts {
  @JsonKey(name: "disp_name")
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: "tp_bc")
  String? get toPayBC => throw _privateConstructorUsedError;
  @JsonKey(name: "ts_bc")
  String? get toShipBC => throw _privateConstructorUsedError;
  @JsonKey(name: "tr_bc")
  String? get toReceiveBC => throw _privateConstructorUsedError;

  /// Serializes this DisplayNameMyOrdersBadgeCounts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DisplayNameMyOrdersBadgeCounts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisplayNameMyOrdersBadgeCountsCopyWith<DisplayNameMyOrdersBadgeCounts>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplayNameMyOrdersBadgeCountsCopyWith<$Res> {
  factory $DisplayNameMyOrdersBadgeCountsCopyWith(
          DisplayNameMyOrdersBadgeCounts value,
          $Res Function(DisplayNameMyOrdersBadgeCounts) then) =
      _$DisplayNameMyOrdersBadgeCountsCopyWithImpl<$Res,
          DisplayNameMyOrdersBadgeCounts>;
  @useResult
  $Res call(
      {@JsonKey(name: "disp_name") String? displayName,
      @JsonKey(name: "tp_bc") String? toPayBC,
      @JsonKey(name: "ts_bc") String? toShipBC,
      @JsonKey(name: "tr_bc") String? toReceiveBC});
}

/// @nodoc
class _$DisplayNameMyOrdersBadgeCountsCopyWithImpl<$Res,
        $Val extends DisplayNameMyOrdersBadgeCounts>
    implements $DisplayNameMyOrdersBadgeCountsCopyWith<$Res> {
  _$DisplayNameMyOrdersBadgeCountsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisplayNameMyOrdersBadgeCounts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? toPayBC = freezed,
    Object? toShipBC = freezed,
    Object? toReceiveBC = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      toPayBC: freezed == toPayBC
          ? _value.toPayBC
          : toPayBC // ignore: cast_nullable_to_non_nullable
              as String?,
      toShipBC: freezed == toShipBC
          ? _value.toShipBC
          : toShipBC // ignore: cast_nullable_to_non_nullable
              as String?,
      toReceiveBC: freezed == toReceiveBC
          ? _value.toReceiveBC
          : toReceiveBC // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisplayNameMyOrdersBadgeCountsImplCopyWith<$Res>
    implements $DisplayNameMyOrdersBadgeCountsCopyWith<$Res> {
  factory _$$DisplayNameMyOrdersBadgeCountsImplCopyWith(
          _$DisplayNameMyOrdersBadgeCountsImpl value,
          $Res Function(_$DisplayNameMyOrdersBadgeCountsImpl) then) =
      __$$DisplayNameMyOrdersBadgeCountsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "disp_name") String? displayName,
      @JsonKey(name: "tp_bc") String? toPayBC,
      @JsonKey(name: "ts_bc") String? toShipBC,
      @JsonKey(name: "tr_bc") String? toReceiveBC});
}

/// @nodoc
class __$$DisplayNameMyOrdersBadgeCountsImplCopyWithImpl<$Res>
    extends _$DisplayNameMyOrdersBadgeCountsCopyWithImpl<$Res,
        _$DisplayNameMyOrdersBadgeCountsImpl>
    implements _$$DisplayNameMyOrdersBadgeCountsImplCopyWith<$Res> {
  __$$DisplayNameMyOrdersBadgeCountsImplCopyWithImpl(
      _$DisplayNameMyOrdersBadgeCountsImpl _value,
      $Res Function(_$DisplayNameMyOrdersBadgeCountsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisplayNameMyOrdersBadgeCounts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? toPayBC = freezed,
    Object? toShipBC = freezed,
    Object? toReceiveBC = freezed,
  }) {
    return _then(_$DisplayNameMyOrdersBadgeCountsImpl(
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      toPayBC: freezed == toPayBC
          ? _value.toPayBC
          : toPayBC // ignore: cast_nullable_to_non_nullable
              as String?,
      toShipBC: freezed == toShipBC
          ? _value.toShipBC
          : toShipBC // ignore: cast_nullable_to_non_nullable
              as String?,
      toReceiveBC: freezed == toReceiveBC
          ? _value.toReceiveBC
          : toReceiveBC // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisplayNameMyOrdersBadgeCountsImpl
    implements _DisplayNameMyOrdersBadgeCounts {
  _$DisplayNameMyOrdersBadgeCountsImpl(
      {@JsonKey(name: "disp_name") this.displayName,
      @JsonKey(name: "tp_bc") this.toPayBC,
      @JsonKey(name: "ts_bc") this.toShipBC,
      @JsonKey(name: "tr_bc") this.toReceiveBC});

  factory _$DisplayNameMyOrdersBadgeCountsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DisplayNameMyOrdersBadgeCountsImplFromJson(json);

  @override
  @JsonKey(name: "disp_name")
  final String? displayName;
  @override
  @JsonKey(name: "tp_bc")
  final String? toPayBC;
  @override
  @JsonKey(name: "ts_bc")
  final String? toShipBC;
  @override
  @JsonKey(name: "tr_bc")
  final String? toReceiveBC;

  @override
  String toString() {
    return 'DisplayNameMyOrdersBadgeCounts(displayName: $displayName, toPayBC: $toPayBC, toShipBC: $toShipBC, toReceiveBC: $toReceiveBC)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayNameMyOrdersBadgeCountsImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.toPayBC, toPayBC) || other.toPayBC == toPayBC) &&
            (identical(other.toShipBC, toShipBC) ||
                other.toShipBC == toShipBC) &&
            (identical(other.toReceiveBC, toReceiveBC) ||
                other.toReceiveBC == toReceiveBC));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, displayName, toPayBC, toShipBC, toReceiveBC);

  /// Create a copy of DisplayNameMyOrdersBadgeCounts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayNameMyOrdersBadgeCountsImplCopyWith<
          _$DisplayNameMyOrdersBadgeCountsImpl>
      get copyWith => __$$DisplayNameMyOrdersBadgeCountsImplCopyWithImpl<
          _$DisplayNameMyOrdersBadgeCountsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisplayNameMyOrdersBadgeCountsImplToJson(
      this,
    );
  }
}

abstract class _DisplayNameMyOrdersBadgeCounts
    implements DisplayNameMyOrdersBadgeCounts {
  factory _DisplayNameMyOrdersBadgeCounts(
          {@JsonKey(name: "disp_name") final String? displayName,
          @JsonKey(name: "tp_bc") final String? toPayBC,
          @JsonKey(name: "ts_bc") final String? toShipBC,
          @JsonKey(name: "tr_bc") final String? toReceiveBC}) =
      _$DisplayNameMyOrdersBadgeCountsImpl;

  factory _DisplayNameMyOrdersBadgeCounts.fromJson(Map<String, dynamic> json) =
      _$DisplayNameMyOrdersBadgeCountsImpl.fromJson;

  @override
  @JsonKey(name: "disp_name")
  String? get displayName;
  @override
  @JsonKey(name: "tp_bc")
  String? get toPayBC;
  @override
  @JsonKey(name: "ts_bc")
  String? get toShipBC;
  @override
  @JsonKey(name: "tr_bc")
  String? get toReceiveBC;

  /// Create a copy of DisplayNameMyOrdersBadgeCounts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisplayNameMyOrdersBadgeCountsImplCopyWith<
          _$DisplayNameMyOrdersBadgeCountsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MyOrdersToPayListData _$MyOrdersToPayListDataFromJson(
    Map<String, dynamic> json) {
  return _MyOrdersToPayListData.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersToPayListData {
  List<MyOrdersToPayData>? get myOrdersData =>
      throw _privateConstructorUsedError;

  /// Serializes this MyOrdersToPayListData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersToPayListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersToPayListDataCopyWith<MyOrdersToPayListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersToPayListDataCopyWith<$Res> {
  factory $MyOrdersToPayListDataCopyWith(MyOrdersToPayListData value,
          $Res Function(MyOrdersToPayListData) then) =
      _$MyOrdersToPayListDataCopyWithImpl<$Res, MyOrdersToPayListData>;
  @useResult
  $Res call({List<MyOrdersToPayData>? myOrdersData});
}

/// @nodoc
class _$MyOrdersToPayListDataCopyWithImpl<$Res,
        $Val extends MyOrdersToPayListData>
    implements $MyOrdersToPayListDataCopyWith<$Res> {
  _$MyOrdersToPayListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersToPayListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myOrdersData = freezed,
  }) {
    return _then(_value.copyWith(
      myOrdersData: freezed == myOrdersData
          ? _value.myOrdersData
          : myOrdersData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersToPayData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersToPayListDataImplCopyWith<$Res>
    implements $MyOrdersToPayListDataCopyWith<$Res> {
  factory _$$MyOrdersToPayListDataImplCopyWith(
          _$MyOrdersToPayListDataImpl value,
          $Res Function(_$MyOrdersToPayListDataImpl) then) =
      __$$MyOrdersToPayListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MyOrdersToPayData>? myOrdersData});
}

/// @nodoc
class __$$MyOrdersToPayListDataImplCopyWithImpl<$Res>
    extends _$MyOrdersToPayListDataCopyWithImpl<$Res,
        _$MyOrdersToPayListDataImpl>
    implements _$$MyOrdersToPayListDataImplCopyWith<$Res> {
  __$$MyOrdersToPayListDataImplCopyWithImpl(_$MyOrdersToPayListDataImpl _value,
      $Res Function(_$MyOrdersToPayListDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersToPayListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myOrdersData = freezed,
  }) {
    return _then(_$MyOrdersToPayListDataImpl(
      myOrdersData: freezed == myOrdersData
          ? _value._myOrdersData
          : myOrdersData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersToPayData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrdersToPayListDataImpl implements _MyOrdersToPayListData {
  _$MyOrdersToPayListDataImpl({final List<MyOrdersToPayData>? myOrdersData})
      : _myOrdersData = myOrdersData;

  factory _$MyOrdersToPayListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyOrdersToPayListDataImplFromJson(json);

  final List<MyOrdersToPayData>? _myOrdersData;
  @override
  List<MyOrdersToPayData>? get myOrdersData {
    final value = _myOrdersData;
    if (value == null) return null;
    if (_myOrdersData is EqualUnmodifiableListView) return _myOrdersData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyOrdersToPayListData(myOrdersData: $myOrdersData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersToPayListDataImpl &&
            const DeepCollectionEquality()
                .equals(other._myOrdersData, _myOrdersData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_myOrdersData));

  /// Create a copy of MyOrdersToPayListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersToPayListDataImplCopyWith<_$MyOrdersToPayListDataImpl>
      get copyWith => __$$MyOrdersToPayListDataImplCopyWithImpl<
          _$MyOrdersToPayListDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrdersToPayListDataImplToJson(
      this,
    );
  }
}

abstract class _MyOrdersToPayListData implements MyOrdersToPayListData {
  factory _MyOrdersToPayListData(
          {final List<MyOrdersToPayData>? myOrdersData}) =
      _$MyOrdersToPayListDataImpl;

  factory _MyOrdersToPayListData.fromJson(Map<String, dynamic> json) =
      _$MyOrdersToPayListDataImpl.fromJson;

  @override
  List<MyOrdersToPayData>? get myOrdersData;

  /// Create a copy of MyOrdersToPayListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersToPayListDataImplCopyWith<_$MyOrdersToPayListDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MyOrdersToPayData _$MyOrdersToPayDataFromJson(Map<String, dynamic> json) {
  return _MyOrdersToPayData.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersToPayData {
  @JsonKey(name: "batch_id")
  String? get batchID => throw _privateConstructorUsedError;
  @JsonKey(name: "list_description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "nested_data")
  List<MyOrdersToPayProductData>? get myOrdersProdsData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "amount_to_pay")
  double? get amountToPay => throw _privateConstructorUsedError;
  @JsonKey(name: "t_qty")
  int? get totalQty => throw _privateConstructorUsedError;

  /// Serializes this MyOrdersToPayData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersToPayData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersToPayDataCopyWith<MyOrdersToPayData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersToPayDataCopyWith<$Res> {
  factory $MyOrdersToPayDataCopyWith(
          MyOrdersToPayData value, $Res Function(MyOrdersToPayData) then) =
      _$MyOrdersToPayDataCopyWithImpl<$Res, MyOrdersToPayData>;
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "list_description") String? description,
      @JsonKey(name: "nested_data")
      List<MyOrdersToPayProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") double? amountToPay,
      @JsonKey(name: "t_qty") int? totalQty});
}

/// @nodoc
class _$MyOrdersToPayDataCopyWithImpl<$Res, $Val extends MyOrdersToPayData>
    implements $MyOrdersToPayDataCopyWith<$Res> {
  _$MyOrdersToPayDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersToPayData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? description = freezed,
    Object? myOrdersProdsData = freezed,
    Object? amountToPay = freezed,
    Object? totalQty = freezed,
  }) {
    return _then(_value.copyWith(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      myOrdersProdsData: freezed == myOrdersProdsData
          ? _value.myOrdersProdsData
          : myOrdersProdsData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersToPayProductData>?,
      amountToPay: freezed == amountToPay
          ? _value.amountToPay
          : amountToPay // ignore: cast_nullable_to_non_nullable
              as double?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersToPayDataImplCopyWith<$Res>
    implements $MyOrdersToPayDataCopyWith<$Res> {
  factory _$$MyOrdersToPayDataImplCopyWith(_$MyOrdersToPayDataImpl value,
          $Res Function(_$MyOrdersToPayDataImpl) then) =
      __$$MyOrdersToPayDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "list_description") String? description,
      @JsonKey(name: "nested_data")
      List<MyOrdersToPayProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") double? amountToPay,
      @JsonKey(name: "t_qty") int? totalQty});
}

/// @nodoc
class __$$MyOrdersToPayDataImplCopyWithImpl<$Res>
    extends _$MyOrdersToPayDataCopyWithImpl<$Res, _$MyOrdersToPayDataImpl>
    implements _$$MyOrdersToPayDataImplCopyWith<$Res> {
  __$$MyOrdersToPayDataImplCopyWithImpl(_$MyOrdersToPayDataImpl _value,
      $Res Function(_$MyOrdersToPayDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersToPayData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? description = freezed,
    Object? myOrdersProdsData = freezed,
    Object? amountToPay = freezed,
    Object? totalQty = freezed,
  }) {
    return _then(_$MyOrdersToPayDataImpl(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      myOrdersProdsData: freezed == myOrdersProdsData
          ? _value._myOrdersProdsData
          : myOrdersProdsData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersToPayProductData>?,
      amountToPay: freezed == amountToPay
          ? _value.amountToPay
          : amountToPay // ignore: cast_nullable_to_non_nullable
              as double?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrdersToPayDataImpl implements _MyOrdersToPayData {
  _$MyOrdersToPayDataImpl(
      {@JsonKey(name: "batch_id") this.batchID,
      @JsonKey(name: "list_description") this.description,
      @JsonKey(name: "nested_data")
      final List<MyOrdersToPayProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") this.amountToPay,
      @JsonKey(name: "t_qty") this.totalQty})
      : _myOrdersProdsData = myOrdersProdsData;

  factory _$MyOrdersToPayDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyOrdersToPayDataImplFromJson(json);

  @override
  @JsonKey(name: "batch_id")
  final String? batchID;
  @override
  @JsonKey(name: "list_description")
  final String? description;
  final List<MyOrdersToPayProductData>? _myOrdersProdsData;
  @override
  @JsonKey(name: "nested_data")
  List<MyOrdersToPayProductData>? get myOrdersProdsData {
    final value = _myOrdersProdsData;
    if (value == null) return null;
    if (_myOrdersProdsData is EqualUnmodifiableListView)
      return _myOrdersProdsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "amount_to_pay")
  final double? amountToPay;
  @override
  @JsonKey(name: "t_qty")
  final int? totalQty;

  @override
  String toString() {
    return 'MyOrdersToPayData(batchID: $batchID, description: $description, myOrdersProdsData: $myOrdersProdsData, amountToPay: $amountToPay, totalQty: $totalQty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersToPayDataImpl &&
            (identical(other.batchID, batchID) || other.batchID == batchID) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._myOrdersProdsData, _myOrdersProdsData) &&
            (identical(other.amountToPay, amountToPay) ||
                other.amountToPay == amountToPay) &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      batchID,
      description,
      const DeepCollectionEquality().hash(_myOrdersProdsData),
      amountToPay,
      totalQty);

  /// Create a copy of MyOrdersToPayData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersToPayDataImplCopyWith<_$MyOrdersToPayDataImpl> get copyWith =>
      __$$MyOrdersToPayDataImplCopyWithImpl<_$MyOrdersToPayDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrdersToPayDataImplToJson(
      this,
    );
  }
}

abstract class _MyOrdersToPayData implements MyOrdersToPayData {
  factory _MyOrdersToPayData(
      {@JsonKey(name: "batch_id") final String? batchID,
      @JsonKey(name: "list_description") final String? description,
      @JsonKey(name: "nested_data")
      final List<MyOrdersToPayProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") final double? amountToPay,
      @JsonKey(name: "t_qty") final int? totalQty}) = _$MyOrdersToPayDataImpl;

  factory _MyOrdersToPayData.fromJson(Map<String, dynamic> json) =
      _$MyOrdersToPayDataImpl.fromJson;

  @override
  @JsonKey(name: "batch_id")
  String? get batchID;
  @override
  @JsonKey(name: "list_description")
  String? get description;
  @override
  @JsonKey(name: "nested_data")
  List<MyOrdersToPayProductData>? get myOrdersProdsData;
  @override
  @JsonKey(name: "amount_to_pay")
  double? get amountToPay;
  @override
  @JsonKey(name: "t_qty")
  int? get totalQty;

  /// Create a copy of MyOrdersToPayData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersToPayDataImplCopyWith<_$MyOrdersToPayDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyOrdersToPayProductData _$MyOrdersToPayProductDataFromJson(
    Map<String, dynamic> json) {
  return _MyOrdersToPayProductData.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersToPayProductData {
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_name")
  String? get prodName => throw _privateConstructorUsedError;
  @JsonKey(name: "key_name")
  String? get keyName => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get knValue => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_price")
  double? get discPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get qty => throw _privateConstructorUsedError;

  /// Serializes this MyOrdersToPayProductData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersToPayProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersToPayProductDataCopyWith<MyOrdersToPayProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersToPayProductDataCopyWith<$Res> {
  factory $MyOrdersToPayProductDataCopyWith(MyOrdersToPayProductData value,
          $Res Function(MyOrdersToPayProductData) then) =
      _$MyOrdersToPayProductDataCopyWithImpl<$Res, MyOrdersToPayProductData>;
  @useResult
  $Res call(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "key_name") String? keyName,
      @JsonKey(name: "value") String? knValue,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "quantity") int? qty});
}

/// @nodoc
class _$MyOrdersToPayProductDataCopyWithImpl<$Res,
        $Val extends MyOrdersToPayProductData>
    implements $MyOrdersToPayProductDataCopyWith<$Res> {
  _$MyOrdersToPayProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersToPayProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgData = freezed,
    Object? prodName = freezed,
    Object? keyName = freezed,
    Object? knValue = freezed,
    Object? discPrice = freezed,
    Object? qty = freezed,
  }) {
    return _then(_value.copyWith(
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      knValue: freezed == knValue
          ? _value.knValue
          : knValue // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersToPayProductDataImplCopyWith<$Res>
    implements $MyOrdersToPayProductDataCopyWith<$Res> {
  factory _$$MyOrdersToPayProductDataImplCopyWith(
          _$MyOrdersToPayProductDataImpl value,
          $Res Function(_$MyOrdersToPayProductDataImpl) then) =
      __$$MyOrdersToPayProductDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "key_name") String? keyName,
      @JsonKey(name: "value") String? knValue,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "quantity") int? qty});
}

/// @nodoc
class __$$MyOrdersToPayProductDataImplCopyWithImpl<$Res>
    extends _$MyOrdersToPayProductDataCopyWithImpl<$Res,
        _$MyOrdersToPayProductDataImpl>
    implements _$$MyOrdersToPayProductDataImplCopyWith<$Res> {
  __$$MyOrdersToPayProductDataImplCopyWithImpl(
      _$MyOrdersToPayProductDataImpl _value,
      $Res Function(_$MyOrdersToPayProductDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersToPayProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgData = freezed,
    Object? prodName = freezed,
    Object? keyName = freezed,
    Object? knValue = freezed,
    Object? discPrice = freezed,
    Object? qty = freezed,
  }) {
    return _then(_$MyOrdersToPayProductDataImpl(
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      knValue: freezed == knValue
          ? _value.knValue
          : knValue // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrdersToPayProductDataImpl implements _MyOrdersToPayProductData {
  _$MyOrdersToPayProductDataImpl(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      this.imgData,
      @JsonKey(name: "prod_name") this.prodName,
      @JsonKey(name: "key_name") this.keyName,
      @JsonKey(name: "value") this.knValue,
      @JsonKey(name: "disc_price") this.discPrice,
      @JsonKey(name: "quantity") this.qty});

  factory _$MyOrdersToPayProductDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyOrdersToPayProductDataImplFromJson(json);

  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  final Uint8List? imgData;
  @override
  @JsonKey(name: "prod_name")
  final String? prodName;
  @override
  @JsonKey(name: "key_name")
  final String? keyName;
  @override
  @JsonKey(name: "value")
  final String? knValue;
  @override
  @JsonKey(name: "disc_price")
  final double? discPrice;
  @override
  @JsonKey(name: "quantity")
  final int? qty;

  @override
  String toString() {
    return 'MyOrdersToPayProductData(imgData: $imgData, prodName: $prodName, keyName: $keyName, knValue: $knValue, discPrice: $discPrice, qty: $qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersToPayProductDataImpl &&
            const DeepCollectionEquality().equals(other.imgData, imgData) &&
            (identical(other.prodName, prodName) ||
                other.prodName == prodName) &&
            (identical(other.keyName, keyName) || other.keyName == keyName) &&
            (identical(other.knValue, knValue) || other.knValue == knValue) &&
            (identical(other.discPrice, discPrice) ||
                other.discPrice == discPrice) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imgData),
      prodName,
      keyName,
      knValue,
      discPrice,
      qty);

  /// Create a copy of MyOrdersToPayProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersToPayProductDataImplCopyWith<_$MyOrdersToPayProductDataImpl>
      get copyWith => __$$MyOrdersToPayProductDataImplCopyWithImpl<
          _$MyOrdersToPayProductDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrdersToPayProductDataImplToJson(
      this,
    );
  }
}

abstract class _MyOrdersToPayProductData implements MyOrdersToPayProductData {
  factory _MyOrdersToPayProductData(
          {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
          final Uint8List? imgData,
          @JsonKey(name: "prod_name") final String? prodName,
          @JsonKey(name: "key_name") final String? keyName,
          @JsonKey(name: "value") final String? knValue,
          @JsonKey(name: "disc_price") final double? discPrice,
          @JsonKey(name: "quantity") final int? qty}) =
      _$MyOrdersToPayProductDataImpl;

  factory _MyOrdersToPayProductData.fromJson(Map<String, dynamic> json) =
      _$MyOrdersToPayProductDataImpl.fromJson;

  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData;
  @override
  @JsonKey(name: "prod_name")
  String? get prodName;
  @override
  @JsonKey(name: "key_name")
  String? get keyName;
  @override
  @JsonKey(name: "value")
  String? get knValue;
  @override
  @JsonKey(name: "disc_price")
  double? get discPrice;
  @override
  @JsonKey(name: "quantity")
  int? get qty;

  /// Create a copy of MyOrdersToPayProductData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersToPayProductDataImplCopyWith<_$MyOrdersToPayProductDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductDeliveryDetailsData _$ProductDeliveryDetailsDataFromJson(
    Map<String, dynamic> json) {
  return _ProductDeliveryDetailsData.fromJson(json);
}

/// @nodoc
mixin _$ProductDeliveryDetailsData {
  @JsonKey(name: "batch_id")
  String? get batchID => throw _privateConstructorUsedError;
  @JsonKey(name: "primary_status")
  String? get primaryStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "recipients_name")
  String? get recipientsName => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_floor")
  String? get unitFloor => throw _privateConstructorUsedError;
  @JsonKey(name: "st_bldg")
  String? get stBldg => throw _privateConstructorUsedError;
  @JsonKey(name: "district")
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "region")
  String? get region => throw _privateConstructorUsedError;
  @JsonKey(name: "address_category")
  String? get addressCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile_no")
  String? get mobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData => throw _privateConstructorUsedError;

  /// Serializes this ProductDeliveryDetailsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDeliveryDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDeliveryDetailsDataCopyWith<ProductDeliveryDetailsData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDeliveryDetailsDataCopyWith<$Res> {
  factory $ProductDeliveryDetailsDataCopyWith(ProductDeliveryDetailsData value,
          $Res Function(ProductDeliveryDetailsData) then) =
      _$ProductDeliveryDetailsDataCopyWithImpl<$Res,
          ProductDeliveryDetailsData>;
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "primary_status") String? primaryStatus,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "recipients_name") String? recipientsName,
      @JsonKey(name: "unit_floor") String? unitFloor,
      @JsonKey(name: "st_bldg") String? stBldg,
      @JsonKey(name: "district") String? district,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "region") String? region,
      @JsonKey(name: "address_category") String? addressCategory,
      @JsonKey(name: "mobile_no") String? mobileNo,
      @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData});
}

/// @nodoc
class _$ProductDeliveryDetailsDataCopyWithImpl<$Res,
        $Val extends ProductDeliveryDetailsData>
    implements $ProductDeliveryDetailsDataCopyWith<$Res> {
  _$ProductDeliveryDetailsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDeliveryDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? primaryStatus = freezed,
    Object? description = freezed,
    Object? recipientsName = freezed,
    Object? unitFloor = freezed,
    Object? stBldg = freezed,
    Object? district = freezed,
    Object? city = freezed,
    Object? region = freezed,
    Object? addressCategory = freezed,
    Object? mobileNo = freezed,
    Object? imgData = freezed,
  }) {
    return _then(_value.copyWith(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryStatus: freezed == primaryStatus
          ? _value.primaryStatus
          : primaryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientsName: freezed == recipientsName
          ? _value.recipientsName
          : recipientsName // ignore: cast_nullable_to_non_nullable
              as String?,
      unitFloor: freezed == unitFloor
          ? _value.unitFloor
          : unitFloor // ignore: cast_nullable_to_non_nullable
              as String?,
      stBldg: freezed == stBldg
          ? _value.stBldg
          : stBldg // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCategory: freezed == addressCategory
          ? _value.addressCategory
          : addressCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDeliveryDetailsDataImplCopyWith<$Res>
    implements $ProductDeliveryDetailsDataCopyWith<$Res> {
  factory _$$ProductDeliveryDetailsDataImplCopyWith(
          _$ProductDeliveryDetailsDataImpl value,
          $Res Function(_$ProductDeliveryDetailsDataImpl) then) =
      __$$ProductDeliveryDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "primary_status") String? primaryStatus,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "recipients_name") String? recipientsName,
      @JsonKey(name: "unit_floor") String? unitFloor,
      @JsonKey(name: "st_bldg") String? stBldg,
      @JsonKey(name: "district") String? district,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "region") String? region,
      @JsonKey(name: "address_category") String? addressCategory,
      @JsonKey(name: "mobile_no") String? mobileNo,
      @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData});
}

/// @nodoc
class __$$ProductDeliveryDetailsDataImplCopyWithImpl<$Res>
    extends _$ProductDeliveryDetailsDataCopyWithImpl<$Res,
        _$ProductDeliveryDetailsDataImpl>
    implements _$$ProductDeliveryDetailsDataImplCopyWith<$Res> {
  __$$ProductDeliveryDetailsDataImplCopyWithImpl(
      _$ProductDeliveryDetailsDataImpl _value,
      $Res Function(_$ProductDeliveryDetailsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDeliveryDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? primaryStatus = freezed,
    Object? description = freezed,
    Object? recipientsName = freezed,
    Object? unitFloor = freezed,
    Object? stBldg = freezed,
    Object? district = freezed,
    Object? city = freezed,
    Object? region = freezed,
    Object? addressCategory = freezed,
    Object? mobileNo = freezed,
    Object? imgData = freezed,
  }) {
    return _then(_$ProductDeliveryDetailsDataImpl(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryStatus: freezed == primaryStatus
          ? _value.primaryStatus
          : primaryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientsName: freezed == recipientsName
          ? _value.recipientsName
          : recipientsName // ignore: cast_nullable_to_non_nullable
              as String?,
      unitFloor: freezed == unitFloor
          ? _value.unitFloor
          : unitFloor // ignore: cast_nullable_to_non_nullable
              as String?,
      stBldg: freezed == stBldg
          ? _value.stBldg
          : stBldg // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCategory: freezed == addressCategory
          ? _value.addressCategory
          : addressCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDeliveryDetailsDataImpl implements _ProductDeliveryDetailsData {
  _$ProductDeliveryDetailsDataImpl(
      {@JsonKey(name: "batch_id") this.batchID,
      @JsonKey(name: "primary_status") this.primaryStatus,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "recipients_name") this.recipientsName,
      @JsonKey(name: "unit_floor") this.unitFloor,
      @JsonKey(name: "st_bldg") this.stBldg,
      @JsonKey(name: "district") this.district,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "region") this.region,
      @JsonKey(name: "address_category") this.addressCategory,
      @JsonKey(name: "mobile_no") this.mobileNo,
      @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      this.imgData});

  factory _$ProductDeliveryDetailsDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductDeliveryDetailsDataImplFromJson(json);

  @override
  @JsonKey(name: "batch_id")
  final String? batchID;
  @override
  @JsonKey(name: "primary_status")
  final String? primaryStatus;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "recipients_name")
  final String? recipientsName;
  @override
  @JsonKey(name: "unit_floor")
  final String? unitFloor;
  @override
  @JsonKey(name: "st_bldg")
  final String? stBldg;
  @override
  @JsonKey(name: "district")
  final String? district;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "region")
  final String? region;
  @override
  @JsonKey(name: "address_category")
  final String? addressCategory;
  @override
  @JsonKey(name: "mobile_no")
  final String? mobileNo;
  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  final Uint8List? imgData;

  @override
  String toString() {
    return 'ProductDeliveryDetailsData(batchID: $batchID, primaryStatus: $primaryStatus, description: $description, recipientsName: $recipientsName, unitFloor: $unitFloor, stBldg: $stBldg, district: $district, city: $city, region: $region, addressCategory: $addressCategory, mobileNo: $mobileNo, imgData: $imgData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDeliveryDetailsDataImpl &&
            (identical(other.batchID, batchID) || other.batchID == batchID) &&
            (identical(other.primaryStatus, primaryStatus) ||
                other.primaryStatus == primaryStatus) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.recipientsName, recipientsName) ||
                other.recipientsName == recipientsName) &&
            (identical(other.unitFloor, unitFloor) ||
                other.unitFloor == unitFloor) &&
            (identical(other.stBldg, stBldg) || other.stBldg == stBldg) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.addressCategory, addressCategory) ||
                other.addressCategory == addressCategory) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo) &&
            const DeepCollectionEquality().equals(other.imgData, imgData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      batchID,
      primaryStatus,
      description,
      recipientsName,
      unitFloor,
      stBldg,
      district,
      city,
      region,
      addressCategory,
      mobileNo,
      const DeepCollectionEquality().hash(imgData));

  /// Create a copy of ProductDeliveryDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDeliveryDetailsDataImplCopyWith<_$ProductDeliveryDetailsDataImpl>
      get copyWith => __$$ProductDeliveryDetailsDataImplCopyWithImpl<
          _$ProductDeliveryDetailsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDeliveryDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _ProductDeliveryDetailsData
    implements ProductDeliveryDetailsData {
  factory _ProductDeliveryDetailsData(
      {@JsonKey(name: "batch_id") final String? batchID,
      @JsonKey(name: "primary_status") final String? primaryStatus,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "recipients_name") final String? recipientsName,
      @JsonKey(name: "unit_floor") final String? unitFloor,
      @JsonKey(name: "st_bldg") final String? stBldg,
      @JsonKey(name: "district") final String? district,
      @JsonKey(name: "city") final String? city,
      @JsonKey(name: "region") final String? region,
      @JsonKey(name: "address_category") final String? addressCategory,
      @JsonKey(name: "mobile_no") final String? mobileNo,
      @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      final Uint8List? imgData}) = _$ProductDeliveryDetailsDataImpl;

  factory _ProductDeliveryDetailsData.fromJson(Map<String, dynamic> json) =
      _$ProductDeliveryDetailsDataImpl.fromJson;

  @override
  @JsonKey(name: "batch_id")
  String? get batchID;
  @override
  @JsonKey(name: "primary_status")
  String? get primaryStatus;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "recipients_name")
  String? get recipientsName;
  @override
  @JsonKey(name: "unit_floor")
  String? get unitFloor;
  @override
  @JsonKey(name: "st_bldg")
  String? get stBldg;
  @override
  @JsonKey(name: "district")
  String? get district;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "region")
  String? get region;
  @override
  @JsonKey(name: "address_category")
  String? get addressCategory;
  @override
  @JsonKey(name: "mobile_no")
  String? get mobileNo;
  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData;

  /// Create a copy of ProductDeliveryDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDeliveryDetailsDataImplCopyWith<_$ProductDeliveryDetailsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductListDeliveryProgressDetailsData
    _$ProductListDeliveryProgressDetailsDataFromJson(
        Map<String, dynamic> json) {
  return _ProductListDeliveryProgressDetailsData.fromJson(json);
}

/// @nodoc
mixin _$ProductListDeliveryProgressDetailsData {
  List<ProductDeliveryProgressDetailsData>? get delProgressList =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductListDeliveryProgressDetailsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductListDeliveryProgressDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductListDeliveryProgressDetailsDataCopyWith<
          ProductListDeliveryProgressDetailsData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListDeliveryProgressDetailsDataCopyWith<$Res> {
  factory $ProductListDeliveryProgressDetailsDataCopyWith(
          ProductListDeliveryProgressDetailsData value,
          $Res Function(ProductListDeliveryProgressDetailsData) then) =
      _$ProductListDeliveryProgressDetailsDataCopyWithImpl<$Res,
          ProductListDeliveryProgressDetailsData>;
  @useResult
  $Res call({List<ProductDeliveryProgressDetailsData>? delProgressList});
}

/// @nodoc
class _$ProductListDeliveryProgressDetailsDataCopyWithImpl<$Res,
        $Val extends ProductListDeliveryProgressDetailsData>
    implements $ProductListDeliveryProgressDetailsDataCopyWith<$Res> {
  _$ProductListDeliveryProgressDetailsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductListDeliveryProgressDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? delProgressList = freezed,
  }) {
    return _then(_value.copyWith(
      delProgressList: freezed == delProgressList
          ? _value.delProgressList
          : delProgressList // ignore: cast_nullable_to_non_nullable
              as List<ProductDeliveryProgressDetailsData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductListDeliveryProgressDetailsDataImplCopyWith<$Res>
    implements $ProductListDeliveryProgressDetailsDataCopyWith<$Res> {
  factory _$$ProductListDeliveryProgressDetailsDataImplCopyWith(
          _$ProductListDeliveryProgressDetailsDataImpl value,
          $Res Function(_$ProductListDeliveryProgressDetailsDataImpl) then) =
      __$$ProductListDeliveryProgressDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductDeliveryProgressDetailsData>? delProgressList});
}

/// @nodoc
class __$$ProductListDeliveryProgressDetailsDataImplCopyWithImpl<$Res>
    extends _$ProductListDeliveryProgressDetailsDataCopyWithImpl<$Res,
        _$ProductListDeliveryProgressDetailsDataImpl>
    implements _$$ProductListDeliveryProgressDetailsDataImplCopyWith<$Res> {
  __$$ProductListDeliveryProgressDetailsDataImplCopyWithImpl(
      _$ProductListDeliveryProgressDetailsDataImpl _value,
      $Res Function(_$ProductListDeliveryProgressDetailsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductListDeliveryProgressDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? delProgressList = freezed,
  }) {
    return _then(_$ProductListDeliveryProgressDetailsDataImpl(
      delProgressList: freezed == delProgressList
          ? _value._delProgressList
          : delProgressList // ignore: cast_nullable_to_non_nullable
              as List<ProductDeliveryProgressDetailsData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductListDeliveryProgressDetailsDataImpl
    implements _ProductListDeliveryProgressDetailsData {
  _$ProductListDeliveryProgressDetailsDataImpl(
      {final List<ProductDeliveryProgressDetailsData>? delProgressList})
      : _delProgressList = delProgressList;

  factory _$ProductListDeliveryProgressDetailsDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductListDeliveryProgressDetailsDataImplFromJson(json);

  final List<ProductDeliveryProgressDetailsData>? _delProgressList;
  @override
  List<ProductDeliveryProgressDetailsData>? get delProgressList {
    final value = _delProgressList;
    if (value == null) return null;
    if (_delProgressList is EqualUnmodifiableListView) return _delProgressList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductListDeliveryProgressDetailsData(delProgressList: $delProgressList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListDeliveryProgressDetailsDataImpl &&
            const DeepCollectionEquality()
                .equals(other._delProgressList, _delProgressList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_delProgressList));

  /// Create a copy of ProductListDeliveryProgressDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListDeliveryProgressDetailsDataImplCopyWith<
          _$ProductListDeliveryProgressDetailsDataImpl>
      get copyWith =>
          __$$ProductListDeliveryProgressDetailsDataImplCopyWithImpl<
              _$ProductListDeliveryProgressDetailsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductListDeliveryProgressDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _ProductListDeliveryProgressDetailsData
    implements ProductListDeliveryProgressDetailsData {
  factory _ProductListDeliveryProgressDetailsData(
          {final List<ProductDeliveryProgressDetailsData>? delProgressList}) =
      _$ProductListDeliveryProgressDetailsDataImpl;

  factory _ProductListDeliveryProgressDetailsData.fromJson(
          Map<String, dynamic> json) =
      _$ProductListDeliveryProgressDetailsDataImpl.fromJson;

  @override
  List<ProductDeliveryProgressDetailsData>? get delProgressList;

  /// Create a copy of ProductListDeliveryProgressDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductListDeliveryProgressDetailsDataImplCopyWith<
          _$ProductListDeliveryProgressDetailsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductDeliveryProgressDetailsData _$ProductDeliveryProgressDetailsDataFromJson(
    Map<String, dynamic> json) {
  return _ProductDeliveryProgressDetailsData.fromJson(json);
}

/// @nodoc
mixin _$ProductDeliveryProgressDetailsData {
  @JsonKey(name: "com_usd_wrds")
  String? get progressHeader => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_progress")
  List<ProductSubDeliveryProgressDetailsData>? get subProgress =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductDeliveryProgressDetailsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDeliveryProgressDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDeliveryProgressDetailsDataCopyWith<
          ProductDeliveryProgressDetailsData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDeliveryProgressDetailsDataCopyWith<$Res> {
  factory $ProductDeliveryProgressDetailsDataCopyWith(
          ProductDeliveryProgressDetailsData value,
          $Res Function(ProductDeliveryProgressDetailsData) then) =
      _$ProductDeliveryProgressDetailsDataCopyWithImpl<$Res,
          ProductDeliveryProgressDetailsData>;
  @useResult
  $Res call(
      {@JsonKey(name: "com_usd_wrds") String? progressHeader,
      @JsonKey(name: "sub_progress")
      List<ProductSubDeliveryProgressDetailsData>? subProgress});
}

/// @nodoc
class _$ProductDeliveryProgressDetailsDataCopyWithImpl<$Res,
        $Val extends ProductDeliveryProgressDetailsData>
    implements $ProductDeliveryProgressDetailsDataCopyWith<$Res> {
  _$ProductDeliveryProgressDetailsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDeliveryProgressDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressHeader = freezed,
    Object? subProgress = freezed,
  }) {
    return _then(_value.copyWith(
      progressHeader: freezed == progressHeader
          ? _value.progressHeader
          : progressHeader // ignore: cast_nullable_to_non_nullable
              as String?,
      subProgress: freezed == subProgress
          ? _value.subProgress
          : subProgress // ignore: cast_nullable_to_non_nullable
              as List<ProductSubDeliveryProgressDetailsData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDeliveryProgressDetailsDataImplCopyWith<$Res>
    implements $ProductDeliveryProgressDetailsDataCopyWith<$Res> {
  factory _$$ProductDeliveryProgressDetailsDataImplCopyWith(
          _$ProductDeliveryProgressDetailsDataImpl value,
          $Res Function(_$ProductDeliveryProgressDetailsDataImpl) then) =
      __$$ProductDeliveryProgressDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "com_usd_wrds") String? progressHeader,
      @JsonKey(name: "sub_progress")
      List<ProductSubDeliveryProgressDetailsData>? subProgress});
}

/// @nodoc
class __$$ProductDeliveryProgressDetailsDataImplCopyWithImpl<$Res>
    extends _$ProductDeliveryProgressDetailsDataCopyWithImpl<$Res,
        _$ProductDeliveryProgressDetailsDataImpl>
    implements _$$ProductDeliveryProgressDetailsDataImplCopyWith<$Res> {
  __$$ProductDeliveryProgressDetailsDataImplCopyWithImpl(
      _$ProductDeliveryProgressDetailsDataImpl _value,
      $Res Function(_$ProductDeliveryProgressDetailsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDeliveryProgressDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressHeader = freezed,
    Object? subProgress = freezed,
  }) {
    return _then(_$ProductDeliveryProgressDetailsDataImpl(
      progressHeader: freezed == progressHeader
          ? _value.progressHeader
          : progressHeader // ignore: cast_nullable_to_non_nullable
              as String?,
      subProgress: freezed == subProgress
          ? _value._subProgress
          : subProgress // ignore: cast_nullable_to_non_nullable
              as List<ProductSubDeliveryProgressDetailsData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDeliveryProgressDetailsDataImpl
    implements _ProductDeliveryProgressDetailsData {
  _$ProductDeliveryProgressDetailsDataImpl(
      {@JsonKey(name: "com_usd_wrds") this.progressHeader,
      @JsonKey(name: "sub_progress")
      final List<ProductSubDeliveryProgressDetailsData>? subProgress})
      : _subProgress = subProgress;

  factory _$ProductDeliveryProgressDetailsDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductDeliveryProgressDetailsDataImplFromJson(json);

  @override
  @JsonKey(name: "com_usd_wrds")
  final String? progressHeader;
  final List<ProductSubDeliveryProgressDetailsData>? _subProgress;
  @override
  @JsonKey(name: "sub_progress")
  List<ProductSubDeliveryProgressDetailsData>? get subProgress {
    final value = _subProgress;
    if (value == null) return null;
    if (_subProgress is EqualUnmodifiableListView) return _subProgress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductDeliveryProgressDetailsData(progressHeader: $progressHeader, subProgress: $subProgress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDeliveryProgressDetailsDataImpl &&
            (identical(other.progressHeader, progressHeader) ||
                other.progressHeader == progressHeader) &&
            const DeepCollectionEquality()
                .equals(other._subProgress, _subProgress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, progressHeader,
      const DeepCollectionEquality().hash(_subProgress));

  /// Create a copy of ProductDeliveryProgressDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDeliveryProgressDetailsDataImplCopyWith<
          _$ProductDeliveryProgressDetailsDataImpl>
      get copyWith => __$$ProductDeliveryProgressDetailsDataImplCopyWithImpl<
          _$ProductDeliveryProgressDetailsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDeliveryProgressDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _ProductDeliveryProgressDetailsData
    implements ProductDeliveryProgressDetailsData {
  factory _ProductDeliveryProgressDetailsData(
          {@JsonKey(name: "com_usd_wrds") final String? progressHeader,
          @JsonKey(name: "sub_progress")
          final List<ProductSubDeliveryProgressDetailsData>? subProgress}) =
      _$ProductDeliveryProgressDetailsDataImpl;

  factory _ProductDeliveryProgressDetailsData.fromJson(
          Map<String, dynamic> json) =
      _$ProductDeliveryProgressDetailsDataImpl.fromJson;

  @override
  @JsonKey(name: "com_usd_wrds")
  String? get progressHeader;
  @override
  @JsonKey(name: "sub_progress")
  List<ProductSubDeliveryProgressDetailsData>? get subProgress;

  /// Create a copy of ProductDeliveryProgressDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDeliveryProgressDetailsDataImplCopyWith<
          _$ProductDeliveryProgressDetailsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductSubDeliveryProgressDetailsData
    _$ProductSubDeliveryProgressDetailsDataFromJson(Map<String, dynamic> json) {
  return _ProductSubDeliveryProgressDetailsData.fromJson(json);
}

/// @nodoc
mixin _$ProductSubDeliveryProgressDetailsData {
  @JsonKey(name: "body_description")
  String? get bodyDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "dt_stamp")
  String? get dtStamp => throw _privateConstructorUsedError;

  /// Serializes this ProductSubDeliveryProgressDetailsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductSubDeliveryProgressDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductSubDeliveryProgressDetailsDataCopyWith<
          ProductSubDeliveryProgressDetailsData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSubDeliveryProgressDetailsDataCopyWith<$Res> {
  factory $ProductSubDeliveryProgressDetailsDataCopyWith(
          ProductSubDeliveryProgressDetailsData value,
          $Res Function(ProductSubDeliveryProgressDetailsData) then) =
      _$ProductSubDeliveryProgressDetailsDataCopyWithImpl<$Res,
          ProductSubDeliveryProgressDetailsData>;
  @useResult
  $Res call(
      {@JsonKey(name: "body_description") String? bodyDescription,
      @JsonKey(name: "dt_stamp") String? dtStamp});
}

/// @nodoc
class _$ProductSubDeliveryProgressDetailsDataCopyWithImpl<$Res,
        $Val extends ProductSubDeliveryProgressDetailsData>
    implements $ProductSubDeliveryProgressDetailsDataCopyWith<$Res> {
  _$ProductSubDeliveryProgressDetailsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductSubDeliveryProgressDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bodyDescription = freezed,
    Object? dtStamp = freezed,
  }) {
    return _then(_value.copyWith(
      bodyDescription: freezed == bodyDescription
          ? _value.bodyDescription
          : bodyDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      dtStamp: freezed == dtStamp
          ? _value.dtStamp
          : dtStamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductSubDeliveryProgressDetailsDataImplCopyWith<$Res>
    implements $ProductSubDeliveryProgressDetailsDataCopyWith<$Res> {
  factory _$$ProductSubDeliveryProgressDetailsDataImplCopyWith(
          _$ProductSubDeliveryProgressDetailsDataImpl value,
          $Res Function(_$ProductSubDeliveryProgressDetailsDataImpl) then) =
      __$$ProductSubDeliveryProgressDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "body_description") String? bodyDescription,
      @JsonKey(name: "dt_stamp") String? dtStamp});
}

/// @nodoc
class __$$ProductSubDeliveryProgressDetailsDataImplCopyWithImpl<$Res>
    extends _$ProductSubDeliveryProgressDetailsDataCopyWithImpl<$Res,
        _$ProductSubDeliveryProgressDetailsDataImpl>
    implements _$$ProductSubDeliveryProgressDetailsDataImplCopyWith<$Res> {
  __$$ProductSubDeliveryProgressDetailsDataImplCopyWithImpl(
      _$ProductSubDeliveryProgressDetailsDataImpl _value,
      $Res Function(_$ProductSubDeliveryProgressDetailsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductSubDeliveryProgressDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bodyDescription = freezed,
    Object? dtStamp = freezed,
  }) {
    return _then(_$ProductSubDeliveryProgressDetailsDataImpl(
      bodyDescription: freezed == bodyDescription
          ? _value.bodyDescription
          : bodyDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      dtStamp: freezed == dtStamp
          ? _value.dtStamp
          : dtStamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductSubDeliveryProgressDetailsDataImpl
    implements _ProductSubDeliveryProgressDetailsData {
  _$ProductSubDeliveryProgressDetailsDataImpl(
      {@JsonKey(name: "body_description") this.bodyDescription,
      @JsonKey(name: "dt_stamp") this.dtStamp});

  factory _$ProductSubDeliveryProgressDetailsDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductSubDeliveryProgressDetailsDataImplFromJson(json);

  @override
  @JsonKey(name: "body_description")
  final String? bodyDescription;
  @override
  @JsonKey(name: "dt_stamp")
  final String? dtStamp;

  @override
  String toString() {
    return 'ProductSubDeliveryProgressDetailsData(bodyDescription: $bodyDescription, dtStamp: $dtStamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSubDeliveryProgressDetailsDataImpl &&
            (identical(other.bodyDescription, bodyDescription) ||
                other.bodyDescription == bodyDescription) &&
            (identical(other.dtStamp, dtStamp) || other.dtStamp == dtStamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bodyDescription, dtStamp);

  /// Create a copy of ProductSubDeliveryProgressDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSubDeliveryProgressDetailsDataImplCopyWith<
          _$ProductSubDeliveryProgressDetailsDataImpl>
      get copyWith => __$$ProductSubDeliveryProgressDetailsDataImplCopyWithImpl<
          _$ProductSubDeliveryProgressDetailsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductSubDeliveryProgressDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _ProductSubDeliveryProgressDetailsData
    implements ProductSubDeliveryProgressDetailsData {
  factory _ProductSubDeliveryProgressDetailsData(
          {@JsonKey(name: "body_description") final String? bodyDescription,
          @JsonKey(name: "dt_stamp") final String? dtStamp}) =
      _$ProductSubDeliveryProgressDetailsDataImpl;

  factory _ProductSubDeliveryProgressDetailsData.fromJson(
          Map<String, dynamic> json) =
      _$ProductSubDeliveryProgressDetailsDataImpl.fromJson;

  @override
  @JsonKey(name: "body_description")
  String? get bodyDescription;
  @override
  @JsonKey(name: "dt_stamp")
  String? get dtStamp;

  /// Create a copy of ProductSubDeliveryProgressDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductSubDeliveryProgressDetailsDataImplCopyWith<
          _$ProductSubDeliveryProgressDetailsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OrderDetailsData _$OrderDetailsDataFromJson(Map<String, dynamic> json) {
  return _OrderDetailsData.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsData {
  @JsonKey(name: "batch_id")
  String? get batchID => throw _privateConstructorUsedError;
  @JsonKey(name: "primary_status")
  String? get primaryStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "spc_description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "nested_data")
  List<ProductOrderDetailsData>? get myOrdersProdsData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "amount_to_pay")
  double? get amountToPay => throw _privateConstructorUsedError;

  /// Serializes this OrderDetailsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDetailsDataCopyWith<OrderDetailsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsDataCopyWith<$Res> {
  factory $OrderDetailsDataCopyWith(
          OrderDetailsData value, $Res Function(OrderDetailsData) then) =
      _$OrderDetailsDataCopyWithImpl<$Res, OrderDetailsData>;
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "primary_status") String? primaryStatus,
      @JsonKey(name: "spc_description") String? description,
      @JsonKey(name: "nested_data")
      List<ProductOrderDetailsData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") double? amountToPay});
}

/// @nodoc
class _$OrderDetailsDataCopyWithImpl<$Res, $Val extends OrderDetailsData>
    implements $OrderDetailsDataCopyWith<$Res> {
  _$OrderDetailsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? primaryStatus = freezed,
    Object? description = freezed,
    Object? myOrdersProdsData = freezed,
    Object? amountToPay = freezed,
  }) {
    return _then(_value.copyWith(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryStatus: freezed == primaryStatus
          ? _value.primaryStatus
          : primaryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      myOrdersProdsData: freezed == myOrdersProdsData
          ? _value.myOrdersProdsData
          : myOrdersProdsData // ignore: cast_nullable_to_non_nullable
              as List<ProductOrderDetailsData>?,
      amountToPay: freezed == amountToPay
          ? _value.amountToPay
          : amountToPay // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDetailsDataImplCopyWith<$Res>
    implements $OrderDetailsDataCopyWith<$Res> {
  factory _$$OrderDetailsDataImplCopyWith(_$OrderDetailsDataImpl value,
          $Res Function(_$OrderDetailsDataImpl) then) =
      __$$OrderDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "primary_status") String? primaryStatus,
      @JsonKey(name: "spc_description") String? description,
      @JsonKey(name: "nested_data")
      List<ProductOrderDetailsData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") double? amountToPay});
}

/// @nodoc
class __$$OrderDetailsDataImplCopyWithImpl<$Res>
    extends _$OrderDetailsDataCopyWithImpl<$Res, _$OrderDetailsDataImpl>
    implements _$$OrderDetailsDataImplCopyWith<$Res> {
  __$$OrderDetailsDataImplCopyWithImpl(_$OrderDetailsDataImpl _value,
      $Res Function(_$OrderDetailsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? primaryStatus = freezed,
    Object? description = freezed,
    Object? myOrdersProdsData = freezed,
    Object? amountToPay = freezed,
  }) {
    return _then(_$OrderDetailsDataImpl(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryStatus: freezed == primaryStatus
          ? _value.primaryStatus
          : primaryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      myOrdersProdsData: freezed == myOrdersProdsData
          ? _value._myOrdersProdsData
          : myOrdersProdsData // ignore: cast_nullable_to_non_nullable
              as List<ProductOrderDetailsData>?,
      amountToPay: freezed == amountToPay
          ? _value.amountToPay
          : amountToPay // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailsDataImpl implements _OrderDetailsData {
  _$OrderDetailsDataImpl(
      {@JsonKey(name: "batch_id") this.batchID,
      @JsonKey(name: "primary_status") this.primaryStatus,
      @JsonKey(name: "spc_description") this.description,
      @JsonKey(name: "nested_data")
      final List<ProductOrderDetailsData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") this.amountToPay})
      : _myOrdersProdsData = myOrdersProdsData;

  factory _$OrderDetailsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailsDataImplFromJson(json);

  @override
  @JsonKey(name: "batch_id")
  final String? batchID;
  @override
  @JsonKey(name: "primary_status")
  final String? primaryStatus;
  @override
  @JsonKey(name: "spc_description")
  final String? description;
  final List<ProductOrderDetailsData>? _myOrdersProdsData;
  @override
  @JsonKey(name: "nested_data")
  List<ProductOrderDetailsData>? get myOrdersProdsData {
    final value = _myOrdersProdsData;
    if (value == null) return null;
    if (_myOrdersProdsData is EqualUnmodifiableListView)
      return _myOrdersProdsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "amount_to_pay")
  final double? amountToPay;

  @override
  String toString() {
    return 'OrderDetailsData(batchID: $batchID, primaryStatus: $primaryStatus, description: $description, myOrdersProdsData: $myOrdersProdsData, amountToPay: $amountToPay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsDataImpl &&
            (identical(other.batchID, batchID) || other.batchID == batchID) &&
            (identical(other.primaryStatus, primaryStatus) ||
                other.primaryStatus == primaryStatus) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._myOrdersProdsData, _myOrdersProdsData) &&
            (identical(other.amountToPay, amountToPay) ||
                other.amountToPay == amountToPay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      batchID,
      primaryStatus,
      description,
      const DeepCollectionEquality().hash(_myOrdersProdsData),
      amountToPay);

  /// Create a copy of OrderDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailsDataImplCopyWith<_$OrderDetailsDataImpl> get copyWith =>
      __$$OrderDetailsDataImplCopyWithImpl<_$OrderDetailsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _OrderDetailsData implements OrderDetailsData {
  factory _OrderDetailsData(
          {@JsonKey(name: "batch_id") final String? batchID,
          @JsonKey(name: "primary_status") final String? primaryStatus,
          @JsonKey(name: "spc_description") final String? description,
          @JsonKey(name: "nested_data")
          final List<ProductOrderDetailsData>? myOrdersProdsData,
          @JsonKey(name: "amount_to_pay") final double? amountToPay}) =
      _$OrderDetailsDataImpl;

  factory _OrderDetailsData.fromJson(Map<String, dynamic> json) =
      _$OrderDetailsDataImpl.fromJson;

  @override
  @JsonKey(name: "batch_id")
  String? get batchID;
  @override
  @JsonKey(name: "primary_status")
  String? get primaryStatus;
  @override
  @JsonKey(name: "spc_description")
  String? get description;
  @override
  @JsonKey(name: "nested_data")
  List<ProductOrderDetailsData>? get myOrdersProdsData;
  @override
  @JsonKey(name: "amount_to_pay")
  double? get amountToPay;

  /// Create a copy of OrderDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDetailsDataImplCopyWith<_$OrderDetailsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductOrderDetailsData _$ProductOrderDetailsDataFromJson(
    Map<String, dynamic> json) {
  return _ProductOrderDetailsData.fromJson(json);
}

/// @nodoc
mixin _$ProductOrderDetailsData {
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_name")
  String? get prodName => throw _privateConstructorUsedError;
  @JsonKey(name: "key_name")
  String? get keyName => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get knValue => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_price")
  double? get discPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get qty => throw _privateConstructorUsedError;

  /// Serializes this ProductOrderDetailsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductOrderDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductOrderDetailsDataCopyWith<ProductOrderDetailsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductOrderDetailsDataCopyWith<$Res> {
  factory $ProductOrderDetailsDataCopyWith(ProductOrderDetailsData value,
          $Res Function(ProductOrderDetailsData) then) =
      _$ProductOrderDetailsDataCopyWithImpl<$Res, ProductOrderDetailsData>;
  @useResult
  $Res call(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "key_name") String? keyName,
      @JsonKey(name: "value") String? knValue,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "quantity") int? qty});
}

/// @nodoc
class _$ProductOrderDetailsDataCopyWithImpl<$Res,
        $Val extends ProductOrderDetailsData>
    implements $ProductOrderDetailsDataCopyWith<$Res> {
  _$ProductOrderDetailsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductOrderDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgData = freezed,
    Object? prodName = freezed,
    Object? keyName = freezed,
    Object? knValue = freezed,
    Object? discPrice = freezed,
    Object? qty = freezed,
  }) {
    return _then(_value.copyWith(
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      knValue: freezed == knValue
          ? _value.knValue
          : knValue // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductOrderDetailsDataImplCopyWith<$Res>
    implements $ProductOrderDetailsDataCopyWith<$Res> {
  factory _$$ProductOrderDetailsDataImplCopyWith(
          _$ProductOrderDetailsDataImpl value,
          $Res Function(_$ProductOrderDetailsDataImpl) then) =
      __$$ProductOrderDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "key_name") String? keyName,
      @JsonKey(name: "value") String? knValue,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "quantity") int? qty});
}

/// @nodoc
class __$$ProductOrderDetailsDataImplCopyWithImpl<$Res>
    extends _$ProductOrderDetailsDataCopyWithImpl<$Res,
        _$ProductOrderDetailsDataImpl>
    implements _$$ProductOrderDetailsDataImplCopyWith<$Res> {
  __$$ProductOrderDetailsDataImplCopyWithImpl(
      _$ProductOrderDetailsDataImpl _value,
      $Res Function(_$ProductOrderDetailsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductOrderDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgData = freezed,
    Object? prodName = freezed,
    Object? keyName = freezed,
    Object? knValue = freezed,
    Object? discPrice = freezed,
    Object? qty = freezed,
  }) {
    return _then(_$ProductOrderDetailsDataImpl(
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      knValue: freezed == knValue
          ? _value.knValue
          : knValue // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductOrderDetailsDataImpl implements _ProductOrderDetailsData {
  _$ProductOrderDetailsDataImpl(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      this.imgData,
      @JsonKey(name: "prod_name") this.prodName,
      @JsonKey(name: "key_name") this.keyName,
      @JsonKey(name: "value") this.knValue,
      @JsonKey(name: "disc_price") this.discPrice,
      @JsonKey(name: "quantity") this.qty});

  factory _$ProductOrderDetailsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductOrderDetailsDataImplFromJson(json);

  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  final Uint8List? imgData;
  @override
  @JsonKey(name: "prod_name")
  final String? prodName;
  @override
  @JsonKey(name: "key_name")
  final String? keyName;
  @override
  @JsonKey(name: "value")
  final String? knValue;
  @override
  @JsonKey(name: "disc_price")
  final double? discPrice;
  @override
  @JsonKey(name: "quantity")
  final int? qty;

  @override
  String toString() {
    return 'ProductOrderDetailsData(imgData: $imgData, prodName: $prodName, keyName: $keyName, knValue: $knValue, discPrice: $discPrice, qty: $qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductOrderDetailsDataImpl &&
            const DeepCollectionEquality().equals(other.imgData, imgData) &&
            (identical(other.prodName, prodName) ||
                other.prodName == prodName) &&
            (identical(other.keyName, keyName) || other.keyName == keyName) &&
            (identical(other.knValue, knValue) || other.knValue == knValue) &&
            (identical(other.discPrice, discPrice) ||
                other.discPrice == discPrice) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imgData),
      prodName,
      keyName,
      knValue,
      discPrice,
      qty);

  /// Create a copy of ProductOrderDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductOrderDetailsDataImplCopyWith<_$ProductOrderDetailsDataImpl>
      get copyWith => __$$ProductOrderDetailsDataImplCopyWithImpl<
          _$ProductOrderDetailsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductOrderDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _ProductOrderDetailsData implements ProductOrderDetailsData {
  factory _ProductOrderDetailsData(
          {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
          final Uint8List? imgData,
          @JsonKey(name: "prod_name") final String? prodName,
          @JsonKey(name: "key_name") final String? keyName,
          @JsonKey(name: "value") final String? knValue,
          @JsonKey(name: "disc_price") final double? discPrice,
          @JsonKey(name: "quantity") final int? qty}) =
      _$ProductOrderDetailsDataImpl;

  factory _ProductOrderDetailsData.fromJson(Map<String, dynamic> json) =
      _$ProductOrderDetailsDataImpl.fromJson;

  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData;
  @override
  @JsonKey(name: "prod_name")
  String? get prodName;
  @override
  @JsonKey(name: "key_name")
  String? get keyName;
  @override
  @JsonKey(name: "value")
  String? get knValue;
  @override
  @JsonKey(name: "disc_price")
  double? get discPrice;
  @override
  @JsonKey(name: "quantity")
  int? get qty;

  /// Create a copy of ProductOrderDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductOrderDetailsDataImplCopyWith<_$ProductOrderDetailsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OrderDetailsSummaryData _$OrderDetailsSummaryDataFromJson(
    Map<String, dynamic> json) {
  return _OrderDetailsSummaryData.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsSummaryData {
  @JsonKey(name: "t_qty")
  int? get totalQty => throw _privateConstructorUsedError;
  @JsonKey(name: "subtotal")
  double? get subTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_f_subt")
  double? get shippingFeeSubTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "ship_f_disc_subt")
  double? get shippingFeeDisc => throw _privateConstructorUsedError;
  @JsonKey(name: "vat")
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "coins")
  double? get coins => throw _privateConstructorUsedError;
  @JsonKey(name: "glamgear_bal")
  double? get glamGearBal => throw _privateConstructorUsedError;
  @JsonKey(name: "voucher")
  double? get voucher => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_to_pay")
  double? get amountToPay => throw _privateConstructorUsedError;

  /// Serializes this OrderDetailsSummaryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDetailsSummaryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDetailsSummaryDataCopyWith<OrderDetailsSummaryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsSummaryDataCopyWith<$Res> {
  factory $OrderDetailsSummaryDataCopyWith(OrderDetailsSummaryData value,
          $Res Function(OrderDetailsSummaryData) then) =
      _$OrderDetailsSummaryDataCopyWithImpl<$Res, OrderDetailsSummaryData>;
  @useResult
  $Res call(
      {@JsonKey(name: "t_qty") int? totalQty,
      @JsonKey(name: "subtotal") double? subTotal,
      @JsonKey(name: "ship_f_subt") double? shippingFeeSubTotal,
      @JsonKey(name: "ship_f_disc_subt") double? shippingFeeDisc,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "coins") double? coins,
      @JsonKey(name: "glamgear_bal") double? glamGearBal,
      @JsonKey(name: "voucher") double? voucher,
      @JsonKey(name: "amount_to_pay") double? amountToPay});
}

/// @nodoc
class _$OrderDetailsSummaryDataCopyWithImpl<$Res,
        $Val extends OrderDetailsSummaryData>
    implements $OrderDetailsSummaryDataCopyWith<$Res> {
  _$OrderDetailsSummaryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDetailsSummaryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalQty = freezed,
    Object? subTotal = freezed,
    Object? shippingFeeSubTotal = freezed,
    Object? shippingFeeDisc = freezed,
    Object? vat = freezed,
    Object? coins = freezed,
    Object? glamGearBal = freezed,
    Object? voucher = freezed,
    Object? amountToPay = freezed,
  }) {
    return _then(_value.copyWith(
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      shippingFeeSubTotal: freezed == shippingFeeSubTotal
          ? _value.shippingFeeSubTotal
          : shippingFeeSubTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      shippingFeeDisc: freezed == shippingFeeDisc
          ? _value.shippingFeeDisc
          : shippingFeeDisc // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      coins: freezed == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as double?,
      glamGearBal: freezed == glamGearBal
          ? _value.glamGearBal
          : glamGearBal // ignore: cast_nullable_to_non_nullable
              as double?,
      voucher: freezed == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as double?,
      amountToPay: freezed == amountToPay
          ? _value.amountToPay
          : amountToPay // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDetailsSummaryDataImplCopyWith<$Res>
    implements $OrderDetailsSummaryDataCopyWith<$Res> {
  factory _$$OrderDetailsSummaryDataImplCopyWith(
          _$OrderDetailsSummaryDataImpl value,
          $Res Function(_$OrderDetailsSummaryDataImpl) then) =
      __$$OrderDetailsSummaryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "t_qty") int? totalQty,
      @JsonKey(name: "subtotal") double? subTotal,
      @JsonKey(name: "ship_f_subt") double? shippingFeeSubTotal,
      @JsonKey(name: "ship_f_disc_subt") double? shippingFeeDisc,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "coins") double? coins,
      @JsonKey(name: "glamgear_bal") double? glamGearBal,
      @JsonKey(name: "voucher") double? voucher,
      @JsonKey(name: "amount_to_pay") double? amountToPay});
}

/// @nodoc
class __$$OrderDetailsSummaryDataImplCopyWithImpl<$Res>
    extends _$OrderDetailsSummaryDataCopyWithImpl<$Res,
        _$OrderDetailsSummaryDataImpl>
    implements _$$OrderDetailsSummaryDataImplCopyWith<$Res> {
  __$$OrderDetailsSummaryDataImplCopyWithImpl(
      _$OrderDetailsSummaryDataImpl _value,
      $Res Function(_$OrderDetailsSummaryDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsSummaryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalQty = freezed,
    Object? subTotal = freezed,
    Object? shippingFeeSubTotal = freezed,
    Object? shippingFeeDisc = freezed,
    Object? vat = freezed,
    Object? coins = freezed,
    Object? glamGearBal = freezed,
    Object? voucher = freezed,
    Object? amountToPay = freezed,
  }) {
    return _then(_$OrderDetailsSummaryDataImpl(
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      shippingFeeSubTotal: freezed == shippingFeeSubTotal
          ? _value.shippingFeeSubTotal
          : shippingFeeSubTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      shippingFeeDisc: freezed == shippingFeeDisc
          ? _value.shippingFeeDisc
          : shippingFeeDisc // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      coins: freezed == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as double?,
      glamGearBal: freezed == glamGearBal
          ? _value.glamGearBal
          : glamGearBal // ignore: cast_nullable_to_non_nullable
              as double?,
      voucher: freezed == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as double?,
      amountToPay: freezed == amountToPay
          ? _value.amountToPay
          : amountToPay // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailsSummaryDataImpl implements _OrderDetailsSummaryData {
  _$OrderDetailsSummaryDataImpl(
      {@JsonKey(name: "t_qty") this.totalQty,
      @JsonKey(name: "subtotal") this.subTotal,
      @JsonKey(name: "ship_f_subt") this.shippingFeeSubTotal,
      @JsonKey(name: "ship_f_disc_subt") this.shippingFeeDisc,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "coins") this.coins,
      @JsonKey(name: "glamgear_bal") this.glamGearBal,
      @JsonKey(name: "voucher") this.voucher,
      @JsonKey(name: "amount_to_pay") this.amountToPay});

  factory _$OrderDetailsSummaryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailsSummaryDataImplFromJson(json);

  @override
  @JsonKey(name: "t_qty")
  final int? totalQty;
  @override
  @JsonKey(name: "subtotal")
  final double? subTotal;
  @override
  @JsonKey(name: "ship_f_subt")
  final double? shippingFeeSubTotal;
  @override
  @JsonKey(name: "ship_f_disc_subt")
  final double? shippingFeeDisc;
  @override
  @JsonKey(name: "vat")
  final double? vat;
  @override
  @JsonKey(name: "coins")
  final double? coins;
  @override
  @JsonKey(name: "glamgear_bal")
  final double? glamGearBal;
  @override
  @JsonKey(name: "voucher")
  final double? voucher;
  @override
  @JsonKey(name: "amount_to_pay")
  final double? amountToPay;

  @override
  String toString() {
    return 'OrderDetailsSummaryData(totalQty: $totalQty, subTotal: $subTotal, shippingFeeSubTotal: $shippingFeeSubTotal, shippingFeeDisc: $shippingFeeDisc, vat: $vat, coins: $coins, glamGearBal: $glamGearBal, voucher: $voucher, amountToPay: $amountToPay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsSummaryDataImpl &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.shippingFeeSubTotal, shippingFeeSubTotal) ||
                other.shippingFeeSubTotal == shippingFeeSubTotal) &&
            (identical(other.shippingFeeDisc, shippingFeeDisc) ||
                other.shippingFeeDisc == shippingFeeDisc) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.coins, coins) || other.coins == coins) &&
            (identical(other.glamGearBal, glamGearBal) ||
                other.glamGearBal == glamGearBal) &&
            (identical(other.voucher, voucher) || other.voucher == voucher) &&
            (identical(other.amountToPay, amountToPay) ||
                other.amountToPay == amountToPay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalQty,
      subTotal,
      shippingFeeSubTotal,
      shippingFeeDisc,
      vat,
      coins,
      glamGearBal,
      voucher,
      amountToPay);

  /// Create a copy of OrderDetailsSummaryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailsSummaryDataImplCopyWith<_$OrderDetailsSummaryDataImpl>
      get copyWith => __$$OrderDetailsSummaryDataImplCopyWithImpl<
          _$OrderDetailsSummaryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDetailsSummaryDataImplToJson(
      this,
    );
  }
}

abstract class _OrderDetailsSummaryData implements OrderDetailsSummaryData {
  factory _OrderDetailsSummaryData(
          {@JsonKey(name: "t_qty") final int? totalQty,
          @JsonKey(name: "subtotal") final double? subTotal,
          @JsonKey(name: "ship_f_subt") final double? shippingFeeSubTotal,
          @JsonKey(name: "ship_f_disc_subt") final double? shippingFeeDisc,
          @JsonKey(name: "vat") final double? vat,
          @JsonKey(name: "coins") final double? coins,
          @JsonKey(name: "glamgear_bal") final double? glamGearBal,
          @JsonKey(name: "voucher") final double? voucher,
          @JsonKey(name: "amount_to_pay") final double? amountToPay}) =
      _$OrderDetailsSummaryDataImpl;

  factory _OrderDetailsSummaryData.fromJson(Map<String, dynamic> json) =
      _$OrderDetailsSummaryDataImpl.fromJson;

  @override
  @JsonKey(name: "t_qty")
  int? get totalQty;
  @override
  @JsonKey(name: "subtotal")
  double? get subTotal;
  @override
  @JsonKey(name: "ship_f_subt")
  double? get shippingFeeSubTotal;
  @override
  @JsonKey(name: "ship_f_disc_subt")
  double? get shippingFeeDisc;
  @override
  @JsonKey(name: "vat")
  double? get vat;
  @override
  @JsonKey(name: "coins")
  double? get coins;
  @override
  @JsonKey(name: "glamgear_bal")
  double? get glamGearBal;
  @override
  @JsonKey(name: "voucher")
  double? get voucher;
  @override
  @JsonKey(name: "amount_to_pay")
  double? get amountToPay;

  /// Create a copy of OrderDetailsSummaryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDetailsSummaryDataImplCopyWith<_$OrderDetailsSummaryDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MyOrdersToShipListData _$MyOrdersToShipListDataFromJson(
    Map<String, dynamic> json) {
  return _MyOrdersToShipListData.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersToShipListData {
  List<MyOrdersToShipData>? get myOrdersData =>
      throw _privateConstructorUsedError;

  /// Serializes this MyOrdersToShipListData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersToShipListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersToShipListDataCopyWith<MyOrdersToShipListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersToShipListDataCopyWith<$Res> {
  factory $MyOrdersToShipListDataCopyWith(MyOrdersToShipListData value,
          $Res Function(MyOrdersToShipListData) then) =
      _$MyOrdersToShipListDataCopyWithImpl<$Res, MyOrdersToShipListData>;
  @useResult
  $Res call({List<MyOrdersToShipData>? myOrdersData});
}

/// @nodoc
class _$MyOrdersToShipListDataCopyWithImpl<$Res,
        $Val extends MyOrdersToShipListData>
    implements $MyOrdersToShipListDataCopyWith<$Res> {
  _$MyOrdersToShipListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersToShipListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myOrdersData = freezed,
  }) {
    return _then(_value.copyWith(
      myOrdersData: freezed == myOrdersData
          ? _value.myOrdersData
          : myOrdersData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersToShipData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersToShipListDataImplCopyWith<$Res>
    implements $MyOrdersToShipListDataCopyWith<$Res> {
  factory _$$MyOrdersToShipListDataImplCopyWith(
          _$MyOrdersToShipListDataImpl value,
          $Res Function(_$MyOrdersToShipListDataImpl) then) =
      __$$MyOrdersToShipListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MyOrdersToShipData>? myOrdersData});
}

/// @nodoc
class __$$MyOrdersToShipListDataImplCopyWithImpl<$Res>
    extends _$MyOrdersToShipListDataCopyWithImpl<$Res,
        _$MyOrdersToShipListDataImpl>
    implements _$$MyOrdersToShipListDataImplCopyWith<$Res> {
  __$$MyOrdersToShipListDataImplCopyWithImpl(
      _$MyOrdersToShipListDataImpl _value,
      $Res Function(_$MyOrdersToShipListDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersToShipListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myOrdersData = freezed,
  }) {
    return _then(_$MyOrdersToShipListDataImpl(
      myOrdersData: freezed == myOrdersData
          ? _value._myOrdersData
          : myOrdersData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersToShipData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrdersToShipListDataImpl implements _MyOrdersToShipListData {
  _$MyOrdersToShipListDataImpl({final List<MyOrdersToShipData>? myOrdersData})
      : _myOrdersData = myOrdersData;

  factory _$MyOrdersToShipListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyOrdersToShipListDataImplFromJson(json);

  final List<MyOrdersToShipData>? _myOrdersData;
  @override
  List<MyOrdersToShipData>? get myOrdersData {
    final value = _myOrdersData;
    if (value == null) return null;
    if (_myOrdersData is EqualUnmodifiableListView) return _myOrdersData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyOrdersToShipListData(myOrdersData: $myOrdersData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersToShipListDataImpl &&
            const DeepCollectionEquality()
                .equals(other._myOrdersData, _myOrdersData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_myOrdersData));

  /// Create a copy of MyOrdersToShipListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersToShipListDataImplCopyWith<_$MyOrdersToShipListDataImpl>
      get copyWith => __$$MyOrdersToShipListDataImplCopyWithImpl<
          _$MyOrdersToShipListDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrdersToShipListDataImplToJson(
      this,
    );
  }
}

abstract class _MyOrdersToShipListData implements MyOrdersToShipListData {
  factory _MyOrdersToShipListData(
          {final List<MyOrdersToShipData>? myOrdersData}) =
      _$MyOrdersToShipListDataImpl;

  factory _MyOrdersToShipListData.fromJson(Map<String, dynamic> json) =
      _$MyOrdersToShipListDataImpl.fromJson;

  @override
  List<MyOrdersToShipData>? get myOrdersData;

  /// Create a copy of MyOrdersToShipListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersToShipListDataImplCopyWith<_$MyOrdersToShipListDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MyOrdersToShipData _$MyOrdersToShipDataFromJson(Map<String, dynamic> json) {
  return _MyOrdersToShipData.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersToShipData {
  @JsonKey(name: "batch_id")
  String? get batchID => throw _privateConstructorUsedError;
  @JsonKey(name: "com_usd_wrds")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "body_description")
  String? get subStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "list_description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "nested_data")
  List<MyOrdersToShipProductData>? get myOrdersProdsData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "amount_to_pay")
  double? get amountToPay => throw _privateConstructorUsedError;
  @JsonKey(name: "t_qty")
  int? get totalQty => throw _privateConstructorUsedError;

  /// Serializes this MyOrdersToShipData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersToShipData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersToShipDataCopyWith<MyOrdersToShipData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersToShipDataCopyWith<$Res> {
  factory $MyOrdersToShipDataCopyWith(
          MyOrdersToShipData value, $Res Function(MyOrdersToShipData) then) =
      _$MyOrdersToShipDataCopyWithImpl<$Res, MyOrdersToShipData>;
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "com_usd_wrds") String? status,
      @JsonKey(name: "body_description") String? subStatus,
      @JsonKey(name: "list_description") String? description,
      @JsonKey(name: "nested_data")
      List<MyOrdersToShipProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") double? amountToPay,
      @JsonKey(name: "t_qty") int? totalQty});
}

/// @nodoc
class _$MyOrdersToShipDataCopyWithImpl<$Res, $Val extends MyOrdersToShipData>
    implements $MyOrdersToShipDataCopyWith<$Res> {
  _$MyOrdersToShipDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersToShipData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? status = freezed,
    Object? subStatus = freezed,
    Object? description = freezed,
    Object? myOrdersProdsData = freezed,
    Object? amountToPay = freezed,
    Object? totalQty = freezed,
  }) {
    return _then(_value.copyWith(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      subStatus: freezed == subStatus
          ? _value.subStatus
          : subStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      myOrdersProdsData: freezed == myOrdersProdsData
          ? _value.myOrdersProdsData
          : myOrdersProdsData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersToShipProductData>?,
      amountToPay: freezed == amountToPay
          ? _value.amountToPay
          : amountToPay // ignore: cast_nullable_to_non_nullable
              as double?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersToShipDataImplCopyWith<$Res>
    implements $MyOrdersToShipDataCopyWith<$Res> {
  factory _$$MyOrdersToShipDataImplCopyWith(_$MyOrdersToShipDataImpl value,
          $Res Function(_$MyOrdersToShipDataImpl) then) =
      __$$MyOrdersToShipDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "com_usd_wrds") String? status,
      @JsonKey(name: "body_description") String? subStatus,
      @JsonKey(name: "list_description") String? description,
      @JsonKey(name: "nested_data")
      List<MyOrdersToShipProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") double? amountToPay,
      @JsonKey(name: "t_qty") int? totalQty});
}

/// @nodoc
class __$$MyOrdersToShipDataImplCopyWithImpl<$Res>
    extends _$MyOrdersToShipDataCopyWithImpl<$Res, _$MyOrdersToShipDataImpl>
    implements _$$MyOrdersToShipDataImplCopyWith<$Res> {
  __$$MyOrdersToShipDataImplCopyWithImpl(_$MyOrdersToShipDataImpl _value,
      $Res Function(_$MyOrdersToShipDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersToShipData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? status = freezed,
    Object? subStatus = freezed,
    Object? description = freezed,
    Object? myOrdersProdsData = freezed,
    Object? amountToPay = freezed,
    Object? totalQty = freezed,
  }) {
    return _then(_$MyOrdersToShipDataImpl(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      subStatus: freezed == subStatus
          ? _value.subStatus
          : subStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      myOrdersProdsData: freezed == myOrdersProdsData
          ? _value._myOrdersProdsData
          : myOrdersProdsData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersToShipProductData>?,
      amountToPay: freezed == amountToPay
          ? _value.amountToPay
          : amountToPay // ignore: cast_nullable_to_non_nullable
              as double?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrdersToShipDataImpl implements _MyOrdersToShipData {
  _$MyOrdersToShipDataImpl(
      {@JsonKey(name: "batch_id") this.batchID,
      @JsonKey(name: "com_usd_wrds") this.status,
      @JsonKey(name: "body_description") this.subStatus,
      @JsonKey(name: "list_description") this.description,
      @JsonKey(name: "nested_data")
      final List<MyOrdersToShipProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") this.amountToPay,
      @JsonKey(name: "t_qty") this.totalQty})
      : _myOrdersProdsData = myOrdersProdsData;

  factory _$MyOrdersToShipDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyOrdersToShipDataImplFromJson(json);

  @override
  @JsonKey(name: "batch_id")
  final String? batchID;
  @override
  @JsonKey(name: "com_usd_wrds")
  final String? status;
  @override
  @JsonKey(name: "body_description")
  final String? subStatus;
  @override
  @JsonKey(name: "list_description")
  final String? description;
  final List<MyOrdersToShipProductData>? _myOrdersProdsData;
  @override
  @JsonKey(name: "nested_data")
  List<MyOrdersToShipProductData>? get myOrdersProdsData {
    final value = _myOrdersProdsData;
    if (value == null) return null;
    if (_myOrdersProdsData is EqualUnmodifiableListView)
      return _myOrdersProdsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "amount_to_pay")
  final double? amountToPay;
  @override
  @JsonKey(name: "t_qty")
  final int? totalQty;

  @override
  String toString() {
    return 'MyOrdersToShipData(batchID: $batchID, status: $status, subStatus: $subStatus, description: $description, myOrdersProdsData: $myOrdersProdsData, amountToPay: $amountToPay, totalQty: $totalQty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersToShipDataImpl &&
            (identical(other.batchID, batchID) || other.batchID == batchID) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.subStatus, subStatus) ||
                other.subStatus == subStatus) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._myOrdersProdsData, _myOrdersProdsData) &&
            (identical(other.amountToPay, amountToPay) ||
                other.amountToPay == amountToPay) &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      batchID,
      status,
      subStatus,
      description,
      const DeepCollectionEquality().hash(_myOrdersProdsData),
      amountToPay,
      totalQty);

  /// Create a copy of MyOrdersToShipData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersToShipDataImplCopyWith<_$MyOrdersToShipDataImpl> get copyWith =>
      __$$MyOrdersToShipDataImplCopyWithImpl<_$MyOrdersToShipDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrdersToShipDataImplToJson(
      this,
    );
  }
}

abstract class _MyOrdersToShipData implements MyOrdersToShipData {
  factory _MyOrdersToShipData(
      {@JsonKey(name: "batch_id") final String? batchID,
      @JsonKey(name: "com_usd_wrds") final String? status,
      @JsonKey(name: "body_description") final String? subStatus,
      @JsonKey(name: "list_description") final String? description,
      @JsonKey(name: "nested_data")
      final List<MyOrdersToShipProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") final double? amountToPay,
      @JsonKey(name: "t_qty") final int? totalQty}) = _$MyOrdersToShipDataImpl;

  factory _MyOrdersToShipData.fromJson(Map<String, dynamic> json) =
      _$MyOrdersToShipDataImpl.fromJson;

  @override
  @JsonKey(name: "batch_id")
  String? get batchID;
  @override
  @JsonKey(name: "com_usd_wrds")
  String? get status;
  @override
  @JsonKey(name: "body_description")
  String? get subStatus;
  @override
  @JsonKey(name: "list_description")
  String? get description;
  @override
  @JsonKey(name: "nested_data")
  List<MyOrdersToShipProductData>? get myOrdersProdsData;
  @override
  @JsonKey(name: "amount_to_pay")
  double? get amountToPay;
  @override
  @JsonKey(name: "t_qty")
  int? get totalQty;

  /// Create a copy of MyOrdersToShipData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersToShipDataImplCopyWith<_$MyOrdersToShipDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyOrdersToShipProductData _$MyOrdersToShipProductDataFromJson(
    Map<String, dynamic> json) {
  return _MyOrdersToShipProductData.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersToShipProductData {
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_name")
  String? get prodName => throw _privateConstructorUsedError;
  @JsonKey(name: "key_name")
  String? get keyName => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get knValue => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_price")
  double? get discPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get qty => throw _privateConstructorUsedError;

  /// Serializes this MyOrdersToShipProductData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersToShipProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersToShipProductDataCopyWith<MyOrdersToShipProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersToShipProductDataCopyWith<$Res> {
  factory $MyOrdersToShipProductDataCopyWith(MyOrdersToShipProductData value,
          $Res Function(MyOrdersToShipProductData) then) =
      _$MyOrdersToShipProductDataCopyWithImpl<$Res, MyOrdersToShipProductData>;
  @useResult
  $Res call(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "key_name") String? keyName,
      @JsonKey(name: "value") String? knValue,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "quantity") int? qty});
}

/// @nodoc
class _$MyOrdersToShipProductDataCopyWithImpl<$Res,
        $Val extends MyOrdersToShipProductData>
    implements $MyOrdersToShipProductDataCopyWith<$Res> {
  _$MyOrdersToShipProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersToShipProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgData = freezed,
    Object? prodName = freezed,
    Object? keyName = freezed,
    Object? knValue = freezed,
    Object? discPrice = freezed,
    Object? qty = freezed,
  }) {
    return _then(_value.copyWith(
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      knValue: freezed == knValue
          ? _value.knValue
          : knValue // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersToShipProductDataImplCopyWith<$Res>
    implements $MyOrdersToShipProductDataCopyWith<$Res> {
  factory _$$MyOrdersToShipProductDataImplCopyWith(
          _$MyOrdersToShipProductDataImpl value,
          $Res Function(_$MyOrdersToShipProductDataImpl) then) =
      __$$MyOrdersToShipProductDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "key_name") String? keyName,
      @JsonKey(name: "value") String? knValue,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "quantity") int? qty});
}

/// @nodoc
class __$$MyOrdersToShipProductDataImplCopyWithImpl<$Res>
    extends _$MyOrdersToShipProductDataCopyWithImpl<$Res,
        _$MyOrdersToShipProductDataImpl>
    implements _$$MyOrdersToShipProductDataImplCopyWith<$Res> {
  __$$MyOrdersToShipProductDataImplCopyWithImpl(
      _$MyOrdersToShipProductDataImpl _value,
      $Res Function(_$MyOrdersToShipProductDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersToShipProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgData = freezed,
    Object? prodName = freezed,
    Object? keyName = freezed,
    Object? knValue = freezed,
    Object? discPrice = freezed,
    Object? qty = freezed,
  }) {
    return _then(_$MyOrdersToShipProductDataImpl(
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      knValue: freezed == knValue
          ? _value.knValue
          : knValue // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrdersToShipProductDataImpl implements _MyOrdersToShipProductData {
  _$MyOrdersToShipProductDataImpl(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      this.imgData,
      @JsonKey(name: "prod_name") this.prodName,
      @JsonKey(name: "key_name") this.keyName,
      @JsonKey(name: "value") this.knValue,
      @JsonKey(name: "disc_price") this.discPrice,
      @JsonKey(name: "quantity") this.qty});

  factory _$MyOrdersToShipProductDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyOrdersToShipProductDataImplFromJson(json);

  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  final Uint8List? imgData;
  @override
  @JsonKey(name: "prod_name")
  final String? prodName;
  @override
  @JsonKey(name: "key_name")
  final String? keyName;
  @override
  @JsonKey(name: "value")
  final String? knValue;
  @override
  @JsonKey(name: "disc_price")
  final double? discPrice;
  @override
  @JsonKey(name: "quantity")
  final int? qty;

  @override
  String toString() {
    return 'MyOrdersToShipProductData(imgData: $imgData, prodName: $prodName, keyName: $keyName, knValue: $knValue, discPrice: $discPrice, qty: $qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersToShipProductDataImpl &&
            const DeepCollectionEquality().equals(other.imgData, imgData) &&
            (identical(other.prodName, prodName) ||
                other.prodName == prodName) &&
            (identical(other.keyName, keyName) || other.keyName == keyName) &&
            (identical(other.knValue, knValue) || other.knValue == knValue) &&
            (identical(other.discPrice, discPrice) ||
                other.discPrice == discPrice) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imgData),
      prodName,
      keyName,
      knValue,
      discPrice,
      qty);

  /// Create a copy of MyOrdersToShipProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersToShipProductDataImplCopyWith<_$MyOrdersToShipProductDataImpl>
      get copyWith => __$$MyOrdersToShipProductDataImplCopyWithImpl<
          _$MyOrdersToShipProductDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrdersToShipProductDataImplToJson(
      this,
    );
  }
}

abstract class _MyOrdersToShipProductData implements MyOrdersToShipProductData {
  factory _MyOrdersToShipProductData(
          {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
          final Uint8List? imgData,
          @JsonKey(name: "prod_name") final String? prodName,
          @JsonKey(name: "key_name") final String? keyName,
          @JsonKey(name: "value") final String? knValue,
          @JsonKey(name: "disc_price") final double? discPrice,
          @JsonKey(name: "quantity") final int? qty}) =
      _$MyOrdersToShipProductDataImpl;

  factory _MyOrdersToShipProductData.fromJson(Map<String, dynamic> json) =
      _$MyOrdersToShipProductDataImpl.fromJson;

  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData;
  @override
  @JsonKey(name: "prod_name")
  String? get prodName;
  @override
  @JsonKey(name: "key_name")
  String? get keyName;
  @override
  @JsonKey(name: "value")
  String? get knValue;
  @override
  @JsonKey(name: "disc_price")
  double? get discPrice;
  @override
  @JsonKey(name: "quantity")
  int? get qty;

  /// Create a copy of MyOrdersToShipProductData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersToShipProductDataImplCopyWith<_$MyOrdersToShipProductDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MyOrdersToReceiveListData _$MyOrdersToReceiveListDataFromJson(
    Map<String, dynamic> json) {
  return _MyOrdersToReceiveListData.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersToReceiveListData {
  List<MyOrdersToReceiveData>? get myOrdersData =>
      throw _privateConstructorUsedError;

  /// Serializes this MyOrdersToReceiveListData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersToReceiveListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersToReceiveListDataCopyWith<MyOrdersToReceiveListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersToReceiveListDataCopyWith<$Res> {
  factory $MyOrdersToReceiveListDataCopyWith(MyOrdersToReceiveListData value,
          $Res Function(MyOrdersToReceiveListData) then) =
      _$MyOrdersToReceiveListDataCopyWithImpl<$Res, MyOrdersToReceiveListData>;
  @useResult
  $Res call({List<MyOrdersToReceiveData>? myOrdersData});
}

/// @nodoc
class _$MyOrdersToReceiveListDataCopyWithImpl<$Res,
        $Val extends MyOrdersToReceiveListData>
    implements $MyOrdersToReceiveListDataCopyWith<$Res> {
  _$MyOrdersToReceiveListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersToReceiveListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myOrdersData = freezed,
  }) {
    return _then(_value.copyWith(
      myOrdersData: freezed == myOrdersData
          ? _value.myOrdersData
          : myOrdersData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersToReceiveData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersToReceiveListDataImplCopyWith<$Res>
    implements $MyOrdersToReceiveListDataCopyWith<$Res> {
  factory _$$MyOrdersToReceiveListDataImplCopyWith(
          _$MyOrdersToReceiveListDataImpl value,
          $Res Function(_$MyOrdersToReceiveListDataImpl) then) =
      __$$MyOrdersToReceiveListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MyOrdersToReceiveData>? myOrdersData});
}

/// @nodoc
class __$$MyOrdersToReceiveListDataImplCopyWithImpl<$Res>
    extends _$MyOrdersToReceiveListDataCopyWithImpl<$Res,
        _$MyOrdersToReceiveListDataImpl>
    implements _$$MyOrdersToReceiveListDataImplCopyWith<$Res> {
  __$$MyOrdersToReceiveListDataImplCopyWithImpl(
      _$MyOrdersToReceiveListDataImpl _value,
      $Res Function(_$MyOrdersToReceiveListDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersToReceiveListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myOrdersData = freezed,
  }) {
    return _then(_$MyOrdersToReceiveListDataImpl(
      myOrdersData: freezed == myOrdersData
          ? _value._myOrdersData
          : myOrdersData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersToReceiveData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrdersToReceiveListDataImpl implements _MyOrdersToReceiveListData {
  _$MyOrdersToReceiveListDataImpl(
      {final List<MyOrdersToReceiveData>? myOrdersData})
      : _myOrdersData = myOrdersData;

  factory _$MyOrdersToReceiveListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyOrdersToReceiveListDataImplFromJson(json);

  final List<MyOrdersToReceiveData>? _myOrdersData;
  @override
  List<MyOrdersToReceiveData>? get myOrdersData {
    final value = _myOrdersData;
    if (value == null) return null;
    if (_myOrdersData is EqualUnmodifiableListView) return _myOrdersData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyOrdersToReceiveListData(myOrdersData: $myOrdersData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersToReceiveListDataImpl &&
            const DeepCollectionEquality()
                .equals(other._myOrdersData, _myOrdersData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_myOrdersData));

  /// Create a copy of MyOrdersToReceiveListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersToReceiveListDataImplCopyWith<_$MyOrdersToReceiveListDataImpl>
      get copyWith => __$$MyOrdersToReceiveListDataImplCopyWithImpl<
          _$MyOrdersToReceiveListDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrdersToReceiveListDataImplToJson(
      this,
    );
  }
}

abstract class _MyOrdersToReceiveListData implements MyOrdersToReceiveListData {
  factory _MyOrdersToReceiveListData(
          {final List<MyOrdersToReceiveData>? myOrdersData}) =
      _$MyOrdersToReceiveListDataImpl;

  factory _MyOrdersToReceiveListData.fromJson(Map<String, dynamic> json) =
      _$MyOrdersToReceiveListDataImpl.fromJson;

  @override
  List<MyOrdersToReceiveData>? get myOrdersData;

  /// Create a copy of MyOrdersToReceiveListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersToReceiveListDataImplCopyWith<_$MyOrdersToReceiveListDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MyOrdersToReceiveData _$MyOrdersToReceiveDataFromJson(
    Map<String, dynamic> json) {
  return _MyOrdersToReceiveData.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersToReceiveData {
  @JsonKey(name: "batch_id")
  String? get batchID => throw _privateConstructorUsedError;
  @JsonKey(name: "com_usd_wrds")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "list_description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "nested_data")
  List<MyOrdersToReceiveProductData>? get myOrdersProdsData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "amount_to_pay")
  double? get amountToPay => throw _privateConstructorUsedError;
  @JsonKey(name: "t_qty")
  int? get totalQty => throw _privateConstructorUsedError;

  /// Serializes this MyOrdersToReceiveData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersToReceiveData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersToReceiveDataCopyWith<MyOrdersToReceiveData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersToReceiveDataCopyWith<$Res> {
  factory $MyOrdersToReceiveDataCopyWith(MyOrdersToReceiveData value,
          $Res Function(MyOrdersToReceiveData) then) =
      _$MyOrdersToReceiveDataCopyWithImpl<$Res, MyOrdersToReceiveData>;
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "com_usd_wrds") String? status,
      @JsonKey(name: "list_description") String? description,
      @JsonKey(name: "nested_data")
      List<MyOrdersToReceiveProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") double? amountToPay,
      @JsonKey(name: "t_qty") int? totalQty});
}

/// @nodoc
class _$MyOrdersToReceiveDataCopyWithImpl<$Res,
        $Val extends MyOrdersToReceiveData>
    implements $MyOrdersToReceiveDataCopyWith<$Res> {
  _$MyOrdersToReceiveDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersToReceiveData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? status = freezed,
    Object? description = freezed,
    Object? myOrdersProdsData = freezed,
    Object? amountToPay = freezed,
    Object? totalQty = freezed,
  }) {
    return _then(_value.copyWith(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      myOrdersProdsData: freezed == myOrdersProdsData
          ? _value.myOrdersProdsData
          : myOrdersProdsData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersToReceiveProductData>?,
      amountToPay: freezed == amountToPay
          ? _value.amountToPay
          : amountToPay // ignore: cast_nullable_to_non_nullable
              as double?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersToReceiveDataImplCopyWith<$Res>
    implements $MyOrdersToReceiveDataCopyWith<$Res> {
  factory _$$MyOrdersToReceiveDataImplCopyWith(
          _$MyOrdersToReceiveDataImpl value,
          $Res Function(_$MyOrdersToReceiveDataImpl) then) =
      __$$MyOrdersToReceiveDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "com_usd_wrds") String? status,
      @JsonKey(name: "list_description") String? description,
      @JsonKey(name: "nested_data")
      List<MyOrdersToReceiveProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") double? amountToPay,
      @JsonKey(name: "t_qty") int? totalQty});
}

/// @nodoc
class __$$MyOrdersToReceiveDataImplCopyWithImpl<$Res>
    extends _$MyOrdersToReceiveDataCopyWithImpl<$Res,
        _$MyOrdersToReceiveDataImpl>
    implements _$$MyOrdersToReceiveDataImplCopyWith<$Res> {
  __$$MyOrdersToReceiveDataImplCopyWithImpl(_$MyOrdersToReceiveDataImpl _value,
      $Res Function(_$MyOrdersToReceiveDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersToReceiveData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? status = freezed,
    Object? description = freezed,
    Object? myOrdersProdsData = freezed,
    Object? amountToPay = freezed,
    Object? totalQty = freezed,
  }) {
    return _then(_$MyOrdersToReceiveDataImpl(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      myOrdersProdsData: freezed == myOrdersProdsData
          ? _value._myOrdersProdsData
          : myOrdersProdsData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersToReceiveProductData>?,
      amountToPay: freezed == amountToPay
          ? _value.amountToPay
          : amountToPay // ignore: cast_nullable_to_non_nullable
              as double?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrdersToReceiveDataImpl implements _MyOrdersToReceiveData {
  _$MyOrdersToReceiveDataImpl(
      {@JsonKey(name: "batch_id") this.batchID,
      @JsonKey(name: "com_usd_wrds") this.status,
      @JsonKey(name: "list_description") this.description,
      @JsonKey(name: "nested_data")
      final List<MyOrdersToReceiveProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") this.amountToPay,
      @JsonKey(name: "t_qty") this.totalQty})
      : _myOrdersProdsData = myOrdersProdsData;

  factory _$MyOrdersToReceiveDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyOrdersToReceiveDataImplFromJson(json);

  @override
  @JsonKey(name: "batch_id")
  final String? batchID;
  @override
  @JsonKey(name: "com_usd_wrds")
  final String? status;
  @override
  @JsonKey(name: "list_description")
  final String? description;
  final List<MyOrdersToReceiveProductData>? _myOrdersProdsData;
  @override
  @JsonKey(name: "nested_data")
  List<MyOrdersToReceiveProductData>? get myOrdersProdsData {
    final value = _myOrdersProdsData;
    if (value == null) return null;
    if (_myOrdersProdsData is EqualUnmodifiableListView)
      return _myOrdersProdsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "amount_to_pay")
  final double? amountToPay;
  @override
  @JsonKey(name: "t_qty")
  final int? totalQty;

  @override
  String toString() {
    return 'MyOrdersToReceiveData(batchID: $batchID, status: $status, description: $description, myOrdersProdsData: $myOrdersProdsData, amountToPay: $amountToPay, totalQty: $totalQty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersToReceiveDataImpl &&
            (identical(other.batchID, batchID) || other.batchID == batchID) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._myOrdersProdsData, _myOrdersProdsData) &&
            (identical(other.amountToPay, amountToPay) ||
                other.amountToPay == amountToPay) &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      batchID,
      status,
      description,
      const DeepCollectionEquality().hash(_myOrdersProdsData),
      amountToPay,
      totalQty);

  /// Create a copy of MyOrdersToReceiveData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersToReceiveDataImplCopyWith<_$MyOrdersToReceiveDataImpl>
      get copyWith => __$$MyOrdersToReceiveDataImplCopyWithImpl<
          _$MyOrdersToReceiveDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrdersToReceiveDataImplToJson(
      this,
    );
  }
}

abstract class _MyOrdersToReceiveData implements MyOrdersToReceiveData {
  factory _MyOrdersToReceiveData(
          {@JsonKey(name: "batch_id") final String? batchID,
          @JsonKey(name: "com_usd_wrds") final String? status,
          @JsonKey(name: "list_description") final String? description,
          @JsonKey(name: "nested_data")
          final List<MyOrdersToReceiveProductData>? myOrdersProdsData,
          @JsonKey(name: "amount_to_pay") final double? amountToPay,
          @JsonKey(name: "t_qty") final int? totalQty}) =
      _$MyOrdersToReceiveDataImpl;

  factory _MyOrdersToReceiveData.fromJson(Map<String, dynamic> json) =
      _$MyOrdersToReceiveDataImpl.fromJson;

  @override
  @JsonKey(name: "batch_id")
  String? get batchID;
  @override
  @JsonKey(name: "com_usd_wrds")
  String? get status;
  @override
  @JsonKey(name: "list_description")
  String? get description;
  @override
  @JsonKey(name: "nested_data")
  List<MyOrdersToReceiveProductData>? get myOrdersProdsData;
  @override
  @JsonKey(name: "amount_to_pay")
  double? get amountToPay;
  @override
  @JsonKey(name: "t_qty")
  int? get totalQty;

  /// Create a copy of MyOrdersToReceiveData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersToReceiveDataImplCopyWith<_$MyOrdersToReceiveDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MyOrdersToReceiveProductData _$MyOrdersToReceiveProductDataFromJson(
    Map<String, dynamic> json) {
  return _MyOrdersToReceiveProductData.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersToReceiveProductData {
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_name")
  String? get prodName => throw _privateConstructorUsedError;
  @JsonKey(name: "key_name")
  String? get keyName => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get knValue => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_price")
  double? get discPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get qty => throw _privateConstructorUsedError;

  /// Serializes this MyOrdersToReceiveProductData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersToReceiveProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersToReceiveProductDataCopyWith<MyOrdersToReceiveProductData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersToReceiveProductDataCopyWith<$Res> {
  factory $MyOrdersToReceiveProductDataCopyWith(
          MyOrdersToReceiveProductData value,
          $Res Function(MyOrdersToReceiveProductData) then) =
      _$MyOrdersToReceiveProductDataCopyWithImpl<$Res,
          MyOrdersToReceiveProductData>;
  @useResult
  $Res call(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "key_name") String? keyName,
      @JsonKey(name: "value") String? knValue,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "quantity") int? qty});
}

/// @nodoc
class _$MyOrdersToReceiveProductDataCopyWithImpl<$Res,
        $Val extends MyOrdersToReceiveProductData>
    implements $MyOrdersToReceiveProductDataCopyWith<$Res> {
  _$MyOrdersToReceiveProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersToReceiveProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgData = freezed,
    Object? prodName = freezed,
    Object? keyName = freezed,
    Object? knValue = freezed,
    Object? discPrice = freezed,
    Object? qty = freezed,
  }) {
    return _then(_value.copyWith(
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      knValue: freezed == knValue
          ? _value.knValue
          : knValue // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersToReceiveProductDataImplCopyWith<$Res>
    implements $MyOrdersToReceiveProductDataCopyWith<$Res> {
  factory _$$MyOrdersToReceiveProductDataImplCopyWith(
          _$MyOrdersToReceiveProductDataImpl value,
          $Res Function(_$MyOrdersToReceiveProductDataImpl) then) =
      __$$MyOrdersToReceiveProductDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "key_name") String? keyName,
      @JsonKey(name: "value") String? knValue,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "quantity") int? qty});
}

/// @nodoc
class __$$MyOrdersToReceiveProductDataImplCopyWithImpl<$Res>
    extends _$MyOrdersToReceiveProductDataCopyWithImpl<$Res,
        _$MyOrdersToReceiveProductDataImpl>
    implements _$$MyOrdersToReceiveProductDataImplCopyWith<$Res> {
  __$$MyOrdersToReceiveProductDataImplCopyWithImpl(
      _$MyOrdersToReceiveProductDataImpl _value,
      $Res Function(_$MyOrdersToReceiveProductDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersToReceiveProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgData = freezed,
    Object? prodName = freezed,
    Object? keyName = freezed,
    Object? knValue = freezed,
    Object? discPrice = freezed,
    Object? qty = freezed,
  }) {
    return _then(_$MyOrdersToReceiveProductDataImpl(
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      knValue: freezed == knValue
          ? _value.knValue
          : knValue // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrdersToReceiveProductDataImpl
    implements _MyOrdersToReceiveProductData {
  _$MyOrdersToReceiveProductDataImpl(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      this.imgData,
      @JsonKey(name: "prod_name") this.prodName,
      @JsonKey(name: "key_name") this.keyName,
      @JsonKey(name: "value") this.knValue,
      @JsonKey(name: "disc_price") this.discPrice,
      @JsonKey(name: "quantity") this.qty});

  factory _$MyOrdersToReceiveProductDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MyOrdersToReceiveProductDataImplFromJson(json);

  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  final Uint8List? imgData;
  @override
  @JsonKey(name: "prod_name")
  final String? prodName;
  @override
  @JsonKey(name: "key_name")
  final String? keyName;
  @override
  @JsonKey(name: "value")
  final String? knValue;
  @override
  @JsonKey(name: "disc_price")
  final double? discPrice;
  @override
  @JsonKey(name: "quantity")
  final int? qty;

  @override
  String toString() {
    return 'MyOrdersToReceiveProductData(imgData: $imgData, prodName: $prodName, keyName: $keyName, knValue: $knValue, discPrice: $discPrice, qty: $qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersToReceiveProductDataImpl &&
            const DeepCollectionEquality().equals(other.imgData, imgData) &&
            (identical(other.prodName, prodName) ||
                other.prodName == prodName) &&
            (identical(other.keyName, keyName) || other.keyName == keyName) &&
            (identical(other.knValue, knValue) || other.knValue == knValue) &&
            (identical(other.discPrice, discPrice) ||
                other.discPrice == discPrice) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imgData),
      prodName,
      keyName,
      knValue,
      discPrice,
      qty);

  /// Create a copy of MyOrdersToReceiveProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersToReceiveProductDataImplCopyWith<
          _$MyOrdersToReceiveProductDataImpl>
      get copyWith => __$$MyOrdersToReceiveProductDataImplCopyWithImpl<
          _$MyOrdersToReceiveProductDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrdersToReceiveProductDataImplToJson(
      this,
    );
  }
}

abstract class _MyOrdersToReceiveProductData
    implements MyOrdersToReceiveProductData {
  factory _MyOrdersToReceiveProductData(
          {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
          final Uint8List? imgData,
          @JsonKey(name: "prod_name") final String? prodName,
          @JsonKey(name: "key_name") final String? keyName,
          @JsonKey(name: "value") final String? knValue,
          @JsonKey(name: "disc_price") final double? discPrice,
          @JsonKey(name: "quantity") final int? qty}) =
      _$MyOrdersToReceiveProductDataImpl;

  factory _MyOrdersToReceiveProductData.fromJson(Map<String, dynamic> json) =
      _$MyOrdersToReceiveProductDataImpl.fromJson;

  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData;
  @override
  @JsonKey(name: "prod_name")
  String? get prodName;
  @override
  @JsonKey(name: "key_name")
  String? get keyName;
  @override
  @JsonKey(name: "value")
  String? get knValue;
  @override
  @JsonKey(name: "disc_price")
  double? get discPrice;
  @override
  @JsonKey(name: "quantity")
  int? get qty;

  /// Create a copy of MyOrdersToReceiveProductData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersToReceiveProductDataImplCopyWith<
          _$MyOrdersToReceiveProductDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MyOrdersAllPurchasedListData _$MyOrdersAllPurchasedListDataFromJson(
    Map<String, dynamic> json) {
  return _MyOrdersAllPurchasedListData.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersAllPurchasedListData {
  List<MyOrdersAllPurchasedData>? get myOrdersData =>
      throw _privateConstructorUsedError;

  /// Serializes this MyOrdersAllPurchasedListData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersAllPurchasedListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersAllPurchasedListDataCopyWith<MyOrdersAllPurchasedListData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersAllPurchasedListDataCopyWith<$Res> {
  factory $MyOrdersAllPurchasedListDataCopyWith(
          MyOrdersAllPurchasedListData value,
          $Res Function(MyOrdersAllPurchasedListData) then) =
      _$MyOrdersAllPurchasedListDataCopyWithImpl<$Res,
          MyOrdersAllPurchasedListData>;
  @useResult
  $Res call({List<MyOrdersAllPurchasedData>? myOrdersData});
}

/// @nodoc
class _$MyOrdersAllPurchasedListDataCopyWithImpl<$Res,
        $Val extends MyOrdersAllPurchasedListData>
    implements $MyOrdersAllPurchasedListDataCopyWith<$Res> {
  _$MyOrdersAllPurchasedListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersAllPurchasedListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myOrdersData = freezed,
  }) {
    return _then(_value.copyWith(
      myOrdersData: freezed == myOrdersData
          ? _value.myOrdersData
          : myOrdersData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersAllPurchasedData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersAllPurchasedListDataImplCopyWith<$Res>
    implements $MyOrdersAllPurchasedListDataCopyWith<$Res> {
  factory _$$MyOrdersAllPurchasedListDataImplCopyWith(
          _$MyOrdersAllPurchasedListDataImpl value,
          $Res Function(_$MyOrdersAllPurchasedListDataImpl) then) =
      __$$MyOrdersAllPurchasedListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MyOrdersAllPurchasedData>? myOrdersData});
}

/// @nodoc
class __$$MyOrdersAllPurchasedListDataImplCopyWithImpl<$Res>
    extends _$MyOrdersAllPurchasedListDataCopyWithImpl<$Res,
        _$MyOrdersAllPurchasedListDataImpl>
    implements _$$MyOrdersAllPurchasedListDataImplCopyWith<$Res> {
  __$$MyOrdersAllPurchasedListDataImplCopyWithImpl(
      _$MyOrdersAllPurchasedListDataImpl _value,
      $Res Function(_$MyOrdersAllPurchasedListDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersAllPurchasedListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myOrdersData = freezed,
  }) {
    return _then(_$MyOrdersAllPurchasedListDataImpl(
      myOrdersData: freezed == myOrdersData
          ? _value._myOrdersData
          : myOrdersData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersAllPurchasedData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrdersAllPurchasedListDataImpl
    implements _MyOrdersAllPurchasedListData {
  _$MyOrdersAllPurchasedListDataImpl(
      {final List<MyOrdersAllPurchasedData>? myOrdersData})
      : _myOrdersData = myOrdersData;

  factory _$MyOrdersAllPurchasedListDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MyOrdersAllPurchasedListDataImplFromJson(json);

  final List<MyOrdersAllPurchasedData>? _myOrdersData;
  @override
  List<MyOrdersAllPurchasedData>? get myOrdersData {
    final value = _myOrdersData;
    if (value == null) return null;
    if (_myOrdersData is EqualUnmodifiableListView) return _myOrdersData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyOrdersAllPurchasedListData(myOrdersData: $myOrdersData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersAllPurchasedListDataImpl &&
            const DeepCollectionEquality()
                .equals(other._myOrdersData, _myOrdersData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_myOrdersData));

  /// Create a copy of MyOrdersAllPurchasedListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersAllPurchasedListDataImplCopyWith<
          _$MyOrdersAllPurchasedListDataImpl>
      get copyWith => __$$MyOrdersAllPurchasedListDataImplCopyWithImpl<
          _$MyOrdersAllPurchasedListDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrdersAllPurchasedListDataImplToJson(
      this,
    );
  }
}

abstract class _MyOrdersAllPurchasedListData
    implements MyOrdersAllPurchasedListData {
  factory _MyOrdersAllPurchasedListData(
          {final List<MyOrdersAllPurchasedData>? myOrdersData}) =
      _$MyOrdersAllPurchasedListDataImpl;

  factory _MyOrdersAllPurchasedListData.fromJson(Map<String, dynamic> json) =
      _$MyOrdersAllPurchasedListDataImpl.fromJson;

  @override
  List<MyOrdersAllPurchasedData>? get myOrdersData;

  /// Create a copy of MyOrdersAllPurchasedListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersAllPurchasedListDataImplCopyWith<
          _$MyOrdersAllPurchasedListDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MyOrdersAllPurchasedData _$MyOrdersAllPurchasedDataFromJson(
    Map<String, dynamic> json) {
  return _MyOrdersAllPurchasedData.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersAllPurchasedData {
  @JsonKey(name: "batch_id")
  String? get batchID => throw _privateConstructorUsedError;
  @JsonKey(name: "com_usd_wrds")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "list_description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "nested_data")
  List<MyOrdersAllPurchasedProductData>? get myOrdersProdsData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "amount_to_pay")
  double? get amountToPay => throw _privateConstructorUsedError;
  @JsonKey(name: "t_qty")
  int? get totalQty => throw _privateConstructorUsedError;

  /// Serializes this MyOrdersAllPurchasedData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersAllPurchasedData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersAllPurchasedDataCopyWith<MyOrdersAllPurchasedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersAllPurchasedDataCopyWith<$Res> {
  factory $MyOrdersAllPurchasedDataCopyWith(MyOrdersAllPurchasedData value,
          $Res Function(MyOrdersAllPurchasedData) then) =
      _$MyOrdersAllPurchasedDataCopyWithImpl<$Res, MyOrdersAllPurchasedData>;
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "com_usd_wrds") String? status,
      @JsonKey(name: "list_description") String? description,
      @JsonKey(name: "nested_data")
      List<MyOrdersAllPurchasedProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") double? amountToPay,
      @JsonKey(name: "t_qty") int? totalQty});
}

/// @nodoc
class _$MyOrdersAllPurchasedDataCopyWithImpl<$Res,
        $Val extends MyOrdersAllPurchasedData>
    implements $MyOrdersAllPurchasedDataCopyWith<$Res> {
  _$MyOrdersAllPurchasedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersAllPurchasedData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? status = freezed,
    Object? description = freezed,
    Object? myOrdersProdsData = freezed,
    Object? amountToPay = freezed,
    Object? totalQty = freezed,
  }) {
    return _then(_value.copyWith(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      myOrdersProdsData: freezed == myOrdersProdsData
          ? _value.myOrdersProdsData
          : myOrdersProdsData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersAllPurchasedProductData>?,
      amountToPay: freezed == amountToPay
          ? _value.amountToPay
          : amountToPay // ignore: cast_nullable_to_non_nullable
              as double?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersAllPurchasedDataImplCopyWith<$Res>
    implements $MyOrdersAllPurchasedDataCopyWith<$Res> {
  factory _$$MyOrdersAllPurchasedDataImplCopyWith(
          _$MyOrdersAllPurchasedDataImpl value,
          $Res Function(_$MyOrdersAllPurchasedDataImpl) then) =
      __$$MyOrdersAllPurchasedDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "com_usd_wrds") String? status,
      @JsonKey(name: "list_description") String? description,
      @JsonKey(name: "nested_data")
      List<MyOrdersAllPurchasedProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") double? amountToPay,
      @JsonKey(name: "t_qty") int? totalQty});
}

/// @nodoc
class __$$MyOrdersAllPurchasedDataImplCopyWithImpl<$Res>
    extends _$MyOrdersAllPurchasedDataCopyWithImpl<$Res,
        _$MyOrdersAllPurchasedDataImpl>
    implements _$$MyOrdersAllPurchasedDataImplCopyWith<$Res> {
  __$$MyOrdersAllPurchasedDataImplCopyWithImpl(
      _$MyOrdersAllPurchasedDataImpl _value,
      $Res Function(_$MyOrdersAllPurchasedDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersAllPurchasedData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? status = freezed,
    Object? description = freezed,
    Object? myOrdersProdsData = freezed,
    Object? amountToPay = freezed,
    Object? totalQty = freezed,
  }) {
    return _then(_$MyOrdersAllPurchasedDataImpl(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      myOrdersProdsData: freezed == myOrdersProdsData
          ? _value._myOrdersProdsData
          : myOrdersProdsData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersAllPurchasedProductData>?,
      amountToPay: freezed == amountToPay
          ? _value.amountToPay
          : amountToPay // ignore: cast_nullable_to_non_nullable
              as double?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrdersAllPurchasedDataImpl implements _MyOrdersAllPurchasedData {
  _$MyOrdersAllPurchasedDataImpl(
      {@JsonKey(name: "batch_id") this.batchID,
      @JsonKey(name: "com_usd_wrds") this.status,
      @JsonKey(name: "list_description") this.description,
      @JsonKey(name: "nested_data")
      final List<MyOrdersAllPurchasedProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") this.amountToPay,
      @JsonKey(name: "t_qty") this.totalQty})
      : _myOrdersProdsData = myOrdersProdsData;

  factory _$MyOrdersAllPurchasedDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyOrdersAllPurchasedDataImplFromJson(json);

  @override
  @JsonKey(name: "batch_id")
  final String? batchID;
  @override
  @JsonKey(name: "com_usd_wrds")
  final String? status;
  @override
  @JsonKey(name: "list_description")
  final String? description;
  final List<MyOrdersAllPurchasedProductData>? _myOrdersProdsData;
  @override
  @JsonKey(name: "nested_data")
  List<MyOrdersAllPurchasedProductData>? get myOrdersProdsData {
    final value = _myOrdersProdsData;
    if (value == null) return null;
    if (_myOrdersProdsData is EqualUnmodifiableListView)
      return _myOrdersProdsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "amount_to_pay")
  final double? amountToPay;
  @override
  @JsonKey(name: "t_qty")
  final int? totalQty;

  @override
  String toString() {
    return 'MyOrdersAllPurchasedData(batchID: $batchID, status: $status, description: $description, myOrdersProdsData: $myOrdersProdsData, amountToPay: $amountToPay, totalQty: $totalQty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersAllPurchasedDataImpl &&
            (identical(other.batchID, batchID) || other.batchID == batchID) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._myOrdersProdsData, _myOrdersProdsData) &&
            (identical(other.amountToPay, amountToPay) ||
                other.amountToPay == amountToPay) &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      batchID,
      status,
      description,
      const DeepCollectionEquality().hash(_myOrdersProdsData),
      amountToPay,
      totalQty);

  /// Create a copy of MyOrdersAllPurchasedData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersAllPurchasedDataImplCopyWith<_$MyOrdersAllPurchasedDataImpl>
      get copyWith => __$$MyOrdersAllPurchasedDataImplCopyWithImpl<
          _$MyOrdersAllPurchasedDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrdersAllPurchasedDataImplToJson(
      this,
    );
  }
}

abstract class _MyOrdersAllPurchasedData implements MyOrdersAllPurchasedData {
  factory _MyOrdersAllPurchasedData(
          {@JsonKey(name: "batch_id") final String? batchID,
          @JsonKey(name: "com_usd_wrds") final String? status,
          @JsonKey(name: "list_description") final String? description,
          @JsonKey(name: "nested_data")
          final List<MyOrdersAllPurchasedProductData>? myOrdersProdsData,
          @JsonKey(name: "amount_to_pay") final double? amountToPay,
          @JsonKey(name: "t_qty") final int? totalQty}) =
      _$MyOrdersAllPurchasedDataImpl;

  factory _MyOrdersAllPurchasedData.fromJson(Map<String, dynamic> json) =
      _$MyOrdersAllPurchasedDataImpl.fromJson;

  @override
  @JsonKey(name: "batch_id")
  String? get batchID;
  @override
  @JsonKey(name: "com_usd_wrds")
  String? get status;
  @override
  @JsonKey(name: "list_description")
  String? get description;
  @override
  @JsonKey(name: "nested_data")
  List<MyOrdersAllPurchasedProductData>? get myOrdersProdsData;
  @override
  @JsonKey(name: "amount_to_pay")
  double? get amountToPay;
  @override
  @JsonKey(name: "t_qty")
  int? get totalQty;

  /// Create a copy of MyOrdersAllPurchasedData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersAllPurchasedDataImplCopyWith<_$MyOrdersAllPurchasedDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MyOrdersAllPurchasedProductData _$MyOrdersAllPurchasedProductDataFromJson(
    Map<String, dynamic> json) {
  return _MyOrdersAllPurchasedProductData.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersAllPurchasedProductData {
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_name")
  String? get prodName => throw _privateConstructorUsedError;
  @JsonKey(name: "key_name")
  String? get keyName => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get knValue => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_price")
  double? get discPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get qty => throw _privateConstructorUsedError;

  /// Serializes this MyOrdersAllPurchasedProductData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersAllPurchasedProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersAllPurchasedProductDataCopyWith<MyOrdersAllPurchasedProductData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersAllPurchasedProductDataCopyWith<$Res> {
  factory $MyOrdersAllPurchasedProductDataCopyWith(
          MyOrdersAllPurchasedProductData value,
          $Res Function(MyOrdersAllPurchasedProductData) then) =
      _$MyOrdersAllPurchasedProductDataCopyWithImpl<$Res,
          MyOrdersAllPurchasedProductData>;
  @useResult
  $Res call(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "key_name") String? keyName,
      @JsonKey(name: "value") String? knValue,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "quantity") int? qty});
}

/// @nodoc
class _$MyOrdersAllPurchasedProductDataCopyWithImpl<$Res,
        $Val extends MyOrdersAllPurchasedProductData>
    implements $MyOrdersAllPurchasedProductDataCopyWith<$Res> {
  _$MyOrdersAllPurchasedProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersAllPurchasedProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgData = freezed,
    Object? prodName = freezed,
    Object? keyName = freezed,
    Object? knValue = freezed,
    Object? discPrice = freezed,
    Object? qty = freezed,
  }) {
    return _then(_value.copyWith(
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      knValue: freezed == knValue
          ? _value.knValue
          : knValue // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersAllPurchasedProductDataImplCopyWith<$Res>
    implements $MyOrdersAllPurchasedProductDataCopyWith<$Res> {
  factory _$$MyOrdersAllPurchasedProductDataImplCopyWith(
          _$MyOrdersAllPurchasedProductDataImpl value,
          $Res Function(_$MyOrdersAllPurchasedProductDataImpl) then) =
      __$$MyOrdersAllPurchasedProductDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "key_name") String? keyName,
      @JsonKey(name: "value") String? knValue,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "quantity") int? qty});
}

/// @nodoc
class __$$MyOrdersAllPurchasedProductDataImplCopyWithImpl<$Res>
    extends _$MyOrdersAllPurchasedProductDataCopyWithImpl<$Res,
        _$MyOrdersAllPurchasedProductDataImpl>
    implements _$$MyOrdersAllPurchasedProductDataImplCopyWith<$Res> {
  __$$MyOrdersAllPurchasedProductDataImplCopyWithImpl(
      _$MyOrdersAllPurchasedProductDataImpl _value,
      $Res Function(_$MyOrdersAllPurchasedProductDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersAllPurchasedProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgData = freezed,
    Object? prodName = freezed,
    Object? keyName = freezed,
    Object? knValue = freezed,
    Object? discPrice = freezed,
    Object? qty = freezed,
  }) {
    return _then(_$MyOrdersAllPurchasedProductDataImpl(
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      knValue: freezed == knValue
          ? _value.knValue
          : knValue // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrdersAllPurchasedProductDataImpl
    implements _MyOrdersAllPurchasedProductData {
  _$MyOrdersAllPurchasedProductDataImpl(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      this.imgData,
      @JsonKey(name: "prod_name") this.prodName,
      @JsonKey(name: "key_name") this.keyName,
      @JsonKey(name: "value") this.knValue,
      @JsonKey(name: "disc_price") this.discPrice,
      @JsonKey(name: "quantity") this.qty});

  factory _$MyOrdersAllPurchasedProductDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MyOrdersAllPurchasedProductDataImplFromJson(json);

  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  final Uint8List? imgData;
  @override
  @JsonKey(name: "prod_name")
  final String? prodName;
  @override
  @JsonKey(name: "key_name")
  final String? keyName;
  @override
  @JsonKey(name: "value")
  final String? knValue;
  @override
  @JsonKey(name: "disc_price")
  final double? discPrice;
  @override
  @JsonKey(name: "quantity")
  final int? qty;

  @override
  String toString() {
    return 'MyOrdersAllPurchasedProductData(imgData: $imgData, prodName: $prodName, keyName: $keyName, knValue: $knValue, discPrice: $discPrice, qty: $qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersAllPurchasedProductDataImpl &&
            const DeepCollectionEquality().equals(other.imgData, imgData) &&
            (identical(other.prodName, prodName) ||
                other.prodName == prodName) &&
            (identical(other.keyName, keyName) || other.keyName == keyName) &&
            (identical(other.knValue, knValue) || other.knValue == knValue) &&
            (identical(other.discPrice, discPrice) ||
                other.discPrice == discPrice) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imgData),
      prodName,
      keyName,
      knValue,
      discPrice,
      qty);

  /// Create a copy of MyOrdersAllPurchasedProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersAllPurchasedProductDataImplCopyWith<
          _$MyOrdersAllPurchasedProductDataImpl>
      get copyWith => __$$MyOrdersAllPurchasedProductDataImplCopyWithImpl<
          _$MyOrdersAllPurchasedProductDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrdersAllPurchasedProductDataImplToJson(
      this,
    );
  }
}

abstract class _MyOrdersAllPurchasedProductData
    implements MyOrdersAllPurchasedProductData {
  factory _MyOrdersAllPurchasedProductData(
          {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
          final Uint8List? imgData,
          @JsonKey(name: "prod_name") final String? prodName,
          @JsonKey(name: "key_name") final String? keyName,
          @JsonKey(name: "value") final String? knValue,
          @JsonKey(name: "disc_price") final double? discPrice,
          @JsonKey(name: "quantity") final int? qty}) =
      _$MyOrdersAllPurchasedProductDataImpl;

  factory _MyOrdersAllPurchasedProductData.fromJson(Map<String, dynamic> json) =
      _$MyOrdersAllPurchasedProductDataImpl.fromJson;

  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData;
  @override
  @JsonKey(name: "prod_name")
  String? get prodName;
  @override
  @JsonKey(name: "key_name")
  String? get keyName;
  @override
  @JsonKey(name: "value")
  String? get knValue;
  @override
  @JsonKey(name: "disc_price")
  double? get discPrice;
  @override
  @JsonKey(name: "quantity")
  int? get qty;

  /// Create a copy of MyOrdersAllPurchasedProductData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersAllPurchasedProductDataImplCopyWith<
          _$MyOrdersAllPurchasedProductDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MyOrdersReturnRefListData _$MyOrdersReturnRefListDataFromJson(
    Map<String, dynamic> json) {
  return _MyOrdersReturnRefListData.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersReturnRefListData {
  List<MyOrdersReturnRefData>? get myOrdersData =>
      throw _privateConstructorUsedError;

  /// Serializes this MyOrdersReturnRefListData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersReturnRefListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersReturnRefListDataCopyWith<MyOrdersReturnRefListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersReturnRefListDataCopyWith<$Res> {
  factory $MyOrdersReturnRefListDataCopyWith(MyOrdersReturnRefListData value,
          $Res Function(MyOrdersReturnRefListData) then) =
      _$MyOrdersReturnRefListDataCopyWithImpl<$Res, MyOrdersReturnRefListData>;
  @useResult
  $Res call({List<MyOrdersReturnRefData>? myOrdersData});
}

/// @nodoc
class _$MyOrdersReturnRefListDataCopyWithImpl<$Res,
        $Val extends MyOrdersReturnRefListData>
    implements $MyOrdersReturnRefListDataCopyWith<$Res> {
  _$MyOrdersReturnRefListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersReturnRefListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myOrdersData = freezed,
  }) {
    return _then(_value.copyWith(
      myOrdersData: freezed == myOrdersData
          ? _value.myOrdersData
          : myOrdersData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersReturnRefData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersReturnRefListDataImplCopyWith<$Res>
    implements $MyOrdersReturnRefListDataCopyWith<$Res> {
  factory _$$MyOrdersReturnRefListDataImplCopyWith(
          _$MyOrdersReturnRefListDataImpl value,
          $Res Function(_$MyOrdersReturnRefListDataImpl) then) =
      __$$MyOrdersReturnRefListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MyOrdersReturnRefData>? myOrdersData});
}

/// @nodoc
class __$$MyOrdersReturnRefListDataImplCopyWithImpl<$Res>
    extends _$MyOrdersReturnRefListDataCopyWithImpl<$Res,
        _$MyOrdersReturnRefListDataImpl>
    implements _$$MyOrdersReturnRefListDataImplCopyWith<$Res> {
  __$$MyOrdersReturnRefListDataImplCopyWithImpl(
      _$MyOrdersReturnRefListDataImpl _value,
      $Res Function(_$MyOrdersReturnRefListDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersReturnRefListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myOrdersData = freezed,
  }) {
    return _then(_$MyOrdersReturnRefListDataImpl(
      myOrdersData: freezed == myOrdersData
          ? _value._myOrdersData
          : myOrdersData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersReturnRefData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrdersReturnRefListDataImpl implements _MyOrdersReturnRefListData {
  _$MyOrdersReturnRefListDataImpl(
      {final List<MyOrdersReturnRefData>? myOrdersData})
      : _myOrdersData = myOrdersData;

  factory _$MyOrdersReturnRefListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyOrdersReturnRefListDataImplFromJson(json);

  final List<MyOrdersReturnRefData>? _myOrdersData;
  @override
  List<MyOrdersReturnRefData>? get myOrdersData {
    final value = _myOrdersData;
    if (value == null) return null;
    if (_myOrdersData is EqualUnmodifiableListView) return _myOrdersData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyOrdersReturnRefListData(myOrdersData: $myOrdersData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersReturnRefListDataImpl &&
            const DeepCollectionEquality()
                .equals(other._myOrdersData, _myOrdersData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_myOrdersData));

  /// Create a copy of MyOrdersReturnRefListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersReturnRefListDataImplCopyWith<_$MyOrdersReturnRefListDataImpl>
      get copyWith => __$$MyOrdersReturnRefListDataImplCopyWithImpl<
          _$MyOrdersReturnRefListDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrdersReturnRefListDataImplToJson(
      this,
    );
  }
}

abstract class _MyOrdersReturnRefListData implements MyOrdersReturnRefListData {
  factory _MyOrdersReturnRefListData(
          {final List<MyOrdersReturnRefData>? myOrdersData}) =
      _$MyOrdersReturnRefListDataImpl;

  factory _MyOrdersReturnRefListData.fromJson(Map<String, dynamic> json) =
      _$MyOrdersReturnRefListDataImpl.fromJson;

  @override
  List<MyOrdersReturnRefData>? get myOrdersData;

  /// Create a copy of MyOrdersReturnRefListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersReturnRefListDataImplCopyWith<_$MyOrdersReturnRefListDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MyOrdersReturnRefData _$MyOrdersReturnRefDataFromJson(
    Map<String, dynamic> json) {
  return _MyOrdersReturnRefData.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersReturnRefData {
  @JsonKey(name: "batch_id")
  String? get batchID => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_status")
  String? get shippingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "nested_data")
  List<MyOrdersReturnRefProductData>? get myOrdersProdsData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "amount_to_pay")
  double? get amountToPay => throw _privateConstructorUsedError;
  @JsonKey(name: "t_qty")
  int? get totalQty => throw _privateConstructorUsedError;

  /// Serializes this MyOrdersReturnRefData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersReturnRefData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersReturnRefDataCopyWith<MyOrdersReturnRefData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersReturnRefDataCopyWith<$Res> {
  factory $MyOrdersReturnRefDataCopyWith(MyOrdersReturnRefData value,
          $Res Function(MyOrdersReturnRefData) then) =
      _$MyOrdersReturnRefDataCopyWithImpl<$Res, MyOrdersReturnRefData>;
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "shipping_status") String? shippingStatus,
      @JsonKey(name: "nested_data")
      List<MyOrdersReturnRefProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") double? amountToPay,
      @JsonKey(name: "t_qty") int? totalQty});
}

/// @nodoc
class _$MyOrdersReturnRefDataCopyWithImpl<$Res,
        $Val extends MyOrdersReturnRefData>
    implements $MyOrdersReturnRefDataCopyWith<$Res> {
  _$MyOrdersReturnRefDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersReturnRefData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? shippingStatus = freezed,
    Object? myOrdersProdsData = freezed,
    Object? amountToPay = freezed,
    Object? totalQty = freezed,
  }) {
    return _then(_value.copyWith(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingStatus: freezed == shippingStatus
          ? _value.shippingStatus
          : shippingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      myOrdersProdsData: freezed == myOrdersProdsData
          ? _value.myOrdersProdsData
          : myOrdersProdsData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersReturnRefProductData>?,
      amountToPay: freezed == amountToPay
          ? _value.amountToPay
          : amountToPay // ignore: cast_nullable_to_non_nullable
              as double?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersReturnRefDataImplCopyWith<$Res>
    implements $MyOrdersReturnRefDataCopyWith<$Res> {
  factory _$$MyOrdersReturnRefDataImplCopyWith(
          _$MyOrdersReturnRefDataImpl value,
          $Res Function(_$MyOrdersReturnRefDataImpl) then) =
      __$$MyOrdersReturnRefDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "shipping_status") String? shippingStatus,
      @JsonKey(name: "nested_data")
      List<MyOrdersReturnRefProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") double? amountToPay,
      @JsonKey(name: "t_qty") int? totalQty});
}

/// @nodoc
class __$$MyOrdersReturnRefDataImplCopyWithImpl<$Res>
    extends _$MyOrdersReturnRefDataCopyWithImpl<$Res,
        _$MyOrdersReturnRefDataImpl>
    implements _$$MyOrdersReturnRefDataImplCopyWith<$Res> {
  __$$MyOrdersReturnRefDataImplCopyWithImpl(_$MyOrdersReturnRefDataImpl _value,
      $Res Function(_$MyOrdersReturnRefDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersReturnRefData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? shippingStatus = freezed,
    Object? myOrdersProdsData = freezed,
    Object? amountToPay = freezed,
    Object? totalQty = freezed,
  }) {
    return _then(_$MyOrdersReturnRefDataImpl(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingStatus: freezed == shippingStatus
          ? _value.shippingStatus
          : shippingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      myOrdersProdsData: freezed == myOrdersProdsData
          ? _value._myOrdersProdsData
          : myOrdersProdsData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersReturnRefProductData>?,
      amountToPay: freezed == amountToPay
          ? _value.amountToPay
          : amountToPay // ignore: cast_nullable_to_non_nullable
              as double?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrdersReturnRefDataImpl implements _MyOrdersReturnRefData {
  _$MyOrdersReturnRefDataImpl(
      {@JsonKey(name: "batch_id") this.batchID,
      @JsonKey(name: "shipping_status") this.shippingStatus,
      @JsonKey(name: "nested_data")
      final List<MyOrdersReturnRefProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") this.amountToPay,
      @JsonKey(name: "t_qty") this.totalQty})
      : _myOrdersProdsData = myOrdersProdsData;

  factory _$MyOrdersReturnRefDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyOrdersReturnRefDataImplFromJson(json);

  @override
  @JsonKey(name: "batch_id")
  final String? batchID;
  @override
  @JsonKey(name: "shipping_status")
  final String? shippingStatus;
  final List<MyOrdersReturnRefProductData>? _myOrdersProdsData;
  @override
  @JsonKey(name: "nested_data")
  List<MyOrdersReturnRefProductData>? get myOrdersProdsData {
    final value = _myOrdersProdsData;
    if (value == null) return null;
    if (_myOrdersProdsData is EqualUnmodifiableListView)
      return _myOrdersProdsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "amount_to_pay")
  final double? amountToPay;
  @override
  @JsonKey(name: "t_qty")
  final int? totalQty;

  @override
  String toString() {
    return 'MyOrdersReturnRefData(batchID: $batchID, shippingStatus: $shippingStatus, myOrdersProdsData: $myOrdersProdsData, amountToPay: $amountToPay, totalQty: $totalQty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersReturnRefDataImpl &&
            (identical(other.batchID, batchID) || other.batchID == batchID) &&
            (identical(other.shippingStatus, shippingStatus) ||
                other.shippingStatus == shippingStatus) &&
            const DeepCollectionEquality()
                .equals(other._myOrdersProdsData, _myOrdersProdsData) &&
            (identical(other.amountToPay, amountToPay) ||
                other.amountToPay == amountToPay) &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      batchID,
      shippingStatus,
      const DeepCollectionEquality().hash(_myOrdersProdsData),
      amountToPay,
      totalQty);

  /// Create a copy of MyOrdersReturnRefData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersReturnRefDataImplCopyWith<_$MyOrdersReturnRefDataImpl>
      get copyWith => __$$MyOrdersReturnRefDataImplCopyWithImpl<
          _$MyOrdersReturnRefDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrdersReturnRefDataImplToJson(
      this,
    );
  }
}

abstract class _MyOrdersReturnRefData implements MyOrdersReturnRefData {
  factory _MyOrdersReturnRefData(
          {@JsonKey(name: "batch_id") final String? batchID,
          @JsonKey(name: "shipping_status") final String? shippingStatus,
          @JsonKey(name: "nested_data")
          final List<MyOrdersReturnRefProductData>? myOrdersProdsData,
          @JsonKey(name: "amount_to_pay") final double? amountToPay,
          @JsonKey(name: "t_qty") final int? totalQty}) =
      _$MyOrdersReturnRefDataImpl;

  factory _MyOrdersReturnRefData.fromJson(Map<String, dynamic> json) =
      _$MyOrdersReturnRefDataImpl.fromJson;

  @override
  @JsonKey(name: "batch_id")
  String? get batchID;
  @override
  @JsonKey(name: "shipping_status")
  String? get shippingStatus;
  @override
  @JsonKey(name: "nested_data")
  List<MyOrdersReturnRefProductData>? get myOrdersProdsData;
  @override
  @JsonKey(name: "amount_to_pay")
  double? get amountToPay;
  @override
  @JsonKey(name: "t_qty")
  int? get totalQty;

  /// Create a copy of MyOrdersReturnRefData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersReturnRefDataImplCopyWith<_$MyOrdersReturnRefDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MyOrdersReturnRefProductData _$MyOrdersReturnRefProductDataFromJson(
    Map<String, dynamic> json) {
  return _MyOrdersReturnRefProductData.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersReturnRefProductData {
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_name")
  String? get prodName => throw _privateConstructorUsedError;
  @JsonKey(name: "key_name")
  String? get keyName => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get knValue => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_price")
  double? get discPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get qty => throw _privateConstructorUsedError;

  /// Serializes this MyOrdersReturnRefProductData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersReturnRefProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersReturnRefProductDataCopyWith<MyOrdersReturnRefProductData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersReturnRefProductDataCopyWith<$Res> {
  factory $MyOrdersReturnRefProductDataCopyWith(
          MyOrdersReturnRefProductData value,
          $Res Function(MyOrdersReturnRefProductData) then) =
      _$MyOrdersReturnRefProductDataCopyWithImpl<$Res,
          MyOrdersReturnRefProductData>;
  @useResult
  $Res call(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "key_name") String? keyName,
      @JsonKey(name: "value") String? knValue,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "quantity") int? qty});
}

/// @nodoc
class _$MyOrdersReturnRefProductDataCopyWithImpl<$Res,
        $Val extends MyOrdersReturnRefProductData>
    implements $MyOrdersReturnRefProductDataCopyWith<$Res> {
  _$MyOrdersReturnRefProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersReturnRefProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgData = freezed,
    Object? prodName = freezed,
    Object? keyName = freezed,
    Object? knValue = freezed,
    Object? discPrice = freezed,
    Object? qty = freezed,
  }) {
    return _then(_value.copyWith(
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      knValue: freezed == knValue
          ? _value.knValue
          : knValue // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersReturnRefProductDataImplCopyWith<$Res>
    implements $MyOrdersReturnRefProductDataCopyWith<$Res> {
  factory _$$MyOrdersReturnRefProductDataImplCopyWith(
          _$MyOrdersReturnRefProductDataImpl value,
          $Res Function(_$MyOrdersReturnRefProductDataImpl) then) =
      __$$MyOrdersReturnRefProductDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "key_name") String? keyName,
      @JsonKey(name: "value") String? knValue,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "quantity") int? qty});
}

/// @nodoc
class __$$MyOrdersReturnRefProductDataImplCopyWithImpl<$Res>
    extends _$MyOrdersReturnRefProductDataCopyWithImpl<$Res,
        _$MyOrdersReturnRefProductDataImpl>
    implements _$$MyOrdersReturnRefProductDataImplCopyWith<$Res> {
  __$$MyOrdersReturnRefProductDataImplCopyWithImpl(
      _$MyOrdersReturnRefProductDataImpl _value,
      $Res Function(_$MyOrdersReturnRefProductDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersReturnRefProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgData = freezed,
    Object? prodName = freezed,
    Object? keyName = freezed,
    Object? knValue = freezed,
    Object? discPrice = freezed,
    Object? qty = freezed,
  }) {
    return _then(_$MyOrdersReturnRefProductDataImpl(
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      knValue: freezed == knValue
          ? _value.knValue
          : knValue // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrdersReturnRefProductDataImpl
    implements _MyOrdersReturnRefProductData {
  _$MyOrdersReturnRefProductDataImpl(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      this.imgData,
      @JsonKey(name: "prod_name") this.prodName,
      @JsonKey(name: "key_name") this.keyName,
      @JsonKey(name: "value") this.knValue,
      @JsonKey(name: "disc_price") this.discPrice,
      @JsonKey(name: "quantity") this.qty});

  factory _$MyOrdersReturnRefProductDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MyOrdersReturnRefProductDataImplFromJson(json);

  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  final Uint8List? imgData;
  @override
  @JsonKey(name: "prod_name")
  final String? prodName;
  @override
  @JsonKey(name: "key_name")
  final String? keyName;
  @override
  @JsonKey(name: "value")
  final String? knValue;
  @override
  @JsonKey(name: "disc_price")
  final double? discPrice;
  @override
  @JsonKey(name: "quantity")
  final int? qty;

  @override
  String toString() {
    return 'MyOrdersReturnRefProductData(imgData: $imgData, prodName: $prodName, keyName: $keyName, knValue: $knValue, discPrice: $discPrice, qty: $qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersReturnRefProductDataImpl &&
            const DeepCollectionEquality().equals(other.imgData, imgData) &&
            (identical(other.prodName, prodName) ||
                other.prodName == prodName) &&
            (identical(other.keyName, keyName) || other.keyName == keyName) &&
            (identical(other.knValue, knValue) || other.knValue == knValue) &&
            (identical(other.discPrice, discPrice) ||
                other.discPrice == discPrice) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imgData),
      prodName,
      keyName,
      knValue,
      discPrice,
      qty);

  /// Create a copy of MyOrdersReturnRefProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersReturnRefProductDataImplCopyWith<
          _$MyOrdersReturnRefProductDataImpl>
      get copyWith => __$$MyOrdersReturnRefProductDataImplCopyWithImpl<
          _$MyOrdersReturnRefProductDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrdersReturnRefProductDataImplToJson(
      this,
    );
  }
}

abstract class _MyOrdersReturnRefProductData
    implements MyOrdersReturnRefProductData {
  factory _MyOrdersReturnRefProductData(
          {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
          final Uint8List? imgData,
          @JsonKey(name: "prod_name") final String? prodName,
          @JsonKey(name: "key_name") final String? keyName,
          @JsonKey(name: "value") final String? knValue,
          @JsonKey(name: "disc_price") final double? discPrice,
          @JsonKey(name: "quantity") final int? qty}) =
      _$MyOrdersReturnRefProductDataImpl;

  factory _MyOrdersReturnRefProductData.fromJson(Map<String, dynamic> json) =
      _$MyOrdersReturnRefProductDataImpl.fromJson;

  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData;
  @override
  @JsonKey(name: "prod_name")
  String? get prodName;
  @override
  @JsonKey(name: "key_name")
  String? get keyName;
  @override
  @JsonKey(name: "value")
  String? get knValue;
  @override
  @JsonKey(name: "disc_price")
  double? get discPrice;
  @override
  @JsonKey(name: "quantity")
  int? get qty;

  /// Create a copy of MyOrdersReturnRefProductData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersReturnRefProductDataImplCopyWith<
          _$MyOrdersReturnRefProductDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MyOrdersCancellationListData _$MyOrdersCancellationListDataFromJson(
    Map<String, dynamic> json) {
  return _MyOrdersCancellationListData.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersCancellationListData {
  List<MyOrdersCancellationData>? get myOrdersData =>
      throw _privateConstructorUsedError;

  /// Serializes this MyOrdersCancellationListData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersCancellationListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersCancellationListDataCopyWith<MyOrdersCancellationListData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersCancellationListDataCopyWith<$Res> {
  factory $MyOrdersCancellationListDataCopyWith(
          MyOrdersCancellationListData value,
          $Res Function(MyOrdersCancellationListData) then) =
      _$MyOrdersCancellationListDataCopyWithImpl<$Res,
          MyOrdersCancellationListData>;
  @useResult
  $Res call({List<MyOrdersCancellationData>? myOrdersData});
}

/// @nodoc
class _$MyOrdersCancellationListDataCopyWithImpl<$Res,
        $Val extends MyOrdersCancellationListData>
    implements $MyOrdersCancellationListDataCopyWith<$Res> {
  _$MyOrdersCancellationListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersCancellationListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myOrdersData = freezed,
  }) {
    return _then(_value.copyWith(
      myOrdersData: freezed == myOrdersData
          ? _value.myOrdersData
          : myOrdersData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersCancellationData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersCancellationListDataImplCopyWith<$Res>
    implements $MyOrdersCancellationListDataCopyWith<$Res> {
  factory _$$MyOrdersCancellationListDataImplCopyWith(
          _$MyOrdersCancellationListDataImpl value,
          $Res Function(_$MyOrdersCancellationListDataImpl) then) =
      __$$MyOrdersCancellationListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MyOrdersCancellationData>? myOrdersData});
}

/// @nodoc
class __$$MyOrdersCancellationListDataImplCopyWithImpl<$Res>
    extends _$MyOrdersCancellationListDataCopyWithImpl<$Res,
        _$MyOrdersCancellationListDataImpl>
    implements _$$MyOrdersCancellationListDataImplCopyWith<$Res> {
  __$$MyOrdersCancellationListDataImplCopyWithImpl(
      _$MyOrdersCancellationListDataImpl _value,
      $Res Function(_$MyOrdersCancellationListDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersCancellationListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myOrdersData = freezed,
  }) {
    return _then(_$MyOrdersCancellationListDataImpl(
      myOrdersData: freezed == myOrdersData
          ? _value._myOrdersData
          : myOrdersData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersCancellationData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrdersCancellationListDataImpl
    implements _MyOrdersCancellationListData {
  _$MyOrdersCancellationListDataImpl(
      {final List<MyOrdersCancellationData>? myOrdersData})
      : _myOrdersData = myOrdersData;

  factory _$MyOrdersCancellationListDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MyOrdersCancellationListDataImplFromJson(json);

  final List<MyOrdersCancellationData>? _myOrdersData;
  @override
  List<MyOrdersCancellationData>? get myOrdersData {
    final value = _myOrdersData;
    if (value == null) return null;
    if (_myOrdersData is EqualUnmodifiableListView) return _myOrdersData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyOrdersCancellationListData(myOrdersData: $myOrdersData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersCancellationListDataImpl &&
            const DeepCollectionEquality()
                .equals(other._myOrdersData, _myOrdersData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_myOrdersData));

  /// Create a copy of MyOrdersCancellationListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersCancellationListDataImplCopyWith<
          _$MyOrdersCancellationListDataImpl>
      get copyWith => __$$MyOrdersCancellationListDataImplCopyWithImpl<
          _$MyOrdersCancellationListDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrdersCancellationListDataImplToJson(
      this,
    );
  }
}

abstract class _MyOrdersCancellationListData
    implements MyOrdersCancellationListData {
  factory _MyOrdersCancellationListData(
          {final List<MyOrdersCancellationData>? myOrdersData}) =
      _$MyOrdersCancellationListDataImpl;

  factory _MyOrdersCancellationListData.fromJson(Map<String, dynamic> json) =
      _$MyOrdersCancellationListDataImpl.fromJson;

  @override
  List<MyOrdersCancellationData>? get myOrdersData;

  /// Create a copy of MyOrdersCancellationListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersCancellationListDataImplCopyWith<
          _$MyOrdersCancellationListDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MyOrdersCancellationData _$MyOrdersCancellationDataFromJson(
    Map<String, dynamic> json) {
  return _MyOrdersCancellationData.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersCancellationData {
  @JsonKey(name: "batch_id")
  String? get batchID => throw _privateConstructorUsedError;
  @JsonKey(name: "list_description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "nested_data")
  List<MyOrdersCancellationProductData>? get myOrdersProdsData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "amount_to_pay")
  double? get amountToPay => throw _privateConstructorUsedError;
  @JsonKey(name: "t_qty")
  int? get totalQty => throw _privateConstructorUsedError;

  /// Serializes this MyOrdersCancellationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersCancellationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersCancellationDataCopyWith<MyOrdersCancellationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersCancellationDataCopyWith<$Res> {
  factory $MyOrdersCancellationDataCopyWith(MyOrdersCancellationData value,
          $Res Function(MyOrdersCancellationData) then) =
      _$MyOrdersCancellationDataCopyWithImpl<$Res, MyOrdersCancellationData>;
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "list_description") String? description,
      @JsonKey(name: "nested_data")
      List<MyOrdersCancellationProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") double? amountToPay,
      @JsonKey(name: "t_qty") int? totalQty});
}

/// @nodoc
class _$MyOrdersCancellationDataCopyWithImpl<$Res,
        $Val extends MyOrdersCancellationData>
    implements $MyOrdersCancellationDataCopyWith<$Res> {
  _$MyOrdersCancellationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersCancellationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? description = freezed,
    Object? myOrdersProdsData = freezed,
    Object? amountToPay = freezed,
    Object? totalQty = freezed,
  }) {
    return _then(_value.copyWith(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      myOrdersProdsData: freezed == myOrdersProdsData
          ? _value.myOrdersProdsData
          : myOrdersProdsData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersCancellationProductData>?,
      amountToPay: freezed == amountToPay
          ? _value.amountToPay
          : amountToPay // ignore: cast_nullable_to_non_nullable
              as double?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersCancellationDataImplCopyWith<$Res>
    implements $MyOrdersCancellationDataCopyWith<$Res> {
  factory _$$MyOrdersCancellationDataImplCopyWith(
          _$MyOrdersCancellationDataImpl value,
          $Res Function(_$MyOrdersCancellationDataImpl) then) =
      __$$MyOrdersCancellationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "list_description") String? description,
      @JsonKey(name: "nested_data")
      List<MyOrdersCancellationProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") double? amountToPay,
      @JsonKey(name: "t_qty") int? totalQty});
}

/// @nodoc
class __$$MyOrdersCancellationDataImplCopyWithImpl<$Res>
    extends _$MyOrdersCancellationDataCopyWithImpl<$Res,
        _$MyOrdersCancellationDataImpl>
    implements _$$MyOrdersCancellationDataImplCopyWith<$Res> {
  __$$MyOrdersCancellationDataImplCopyWithImpl(
      _$MyOrdersCancellationDataImpl _value,
      $Res Function(_$MyOrdersCancellationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersCancellationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? description = freezed,
    Object? myOrdersProdsData = freezed,
    Object? amountToPay = freezed,
    Object? totalQty = freezed,
  }) {
    return _then(_$MyOrdersCancellationDataImpl(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      myOrdersProdsData: freezed == myOrdersProdsData
          ? _value._myOrdersProdsData
          : myOrdersProdsData // ignore: cast_nullable_to_non_nullable
              as List<MyOrdersCancellationProductData>?,
      amountToPay: freezed == amountToPay
          ? _value.amountToPay
          : amountToPay // ignore: cast_nullable_to_non_nullable
              as double?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrdersCancellationDataImpl implements _MyOrdersCancellationData {
  _$MyOrdersCancellationDataImpl(
      {@JsonKey(name: "batch_id") this.batchID,
      @JsonKey(name: "list_description") this.description,
      @JsonKey(name: "nested_data")
      final List<MyOrdersCancellationProductData>? myOrdersProdsData,
      @JsonKey(name: "amount_to_pay") this.amountToPay,
      @JsonKey(name: "t_qty") this.totalQty})
      : _myOrdersProdsData = myOrdersProdsData;

  factory _$MyOrdersCancellationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyOrdersCancellationDataImplFromJson(json);

  @override
  @JsonKey(name: "batch_id")
  final String? batchID;
  @override
  @JsonKey(name: "list_description")
  final String? description;
  final List<MyOrdersCancellationProductData>? _myOrdersProdsData;
  @override
  @JsonKey(name: "nested_data")
  List<MyOrdersCancellationProductData>? get myOrdersProdsData {
    final value = _myOrdersProdsData;
    if (value == null) return null;
    if (_myOrdersProdsData is EqualUnmodifiableListView)
      return _myOrdersProdsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "amount_to_pay")
  final double? amountToPay;
  @override
  @JsonKey(name: "t_qty")
  final int? totalQty;

  @override
  String toString() {
    return 'MyOrdersCancellationData(batchID: $batchID, description: $description, myOrdersProdsData: $myOrdersProdsData, amountToPay: $amountToPay, totalQty: $totalQty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersCancellationDataImpl &&
            (identical(other.batchID, batchID) || other.batchID == batchID) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._myOrdersProdsData, _myOrdersProdsData) &&
            (identical(other.amountToPay, amountToPay) ||
                other.amountToPay == amountToPay) &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      batchID,
      description,
      const DeepCollectionEquality().hash(_myOrdersProdsData),
      amountToPay,
      totalQty);

  /// Create a copy of MyOrdersCancellationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersCancellationDataImplCopyWith<_$MyOrdersCancellationDataImpl>
      get copyWith => __$$MyOrdersCancellationDataImplCopyWithImpl<
          _$MyOrdersCancellationDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrdersCancellationDataImplToJson(
      this,
    );
  }
}

abstract class _MyOrdersCancellationData implements MyOrdersCancellationData {
  factory _MyOrdersCancellationData(
          {@JsonKey(name: "batch_id") final String? batchID,
          @JsonKey(name: "list_description") final String? description,
          @JsonKey(name: "nested_data")
          final List<MyOrdersCancellationProductData>? myOrdersProdsData,
          @JsonKey(name: "amount_to_pay") final double? amountToPay,
          @JsonKey(name: "t_qty") final int? totalQty}) =
      _$MyOrdersCancellationDataImpl;

  factory _MyOrdersCancellationData.fromJson(Map<String, dynamic> json) =
      _$MyOrdersCancellationDataImpl.fromJson;

  @override
  @JsonKey(name: "batch_id")
  String? get batchID;
  @override
  @JsonKey(name: "list_description")
  String? get description;
  @override
  @JsonKey(name: "nested_data")
  List<MyOrdersCancellationProductData>? get myOrdersProdsData;
  @override
  @JsonKey(name: "amount_to_pay")
  double? get amountToPay;
  @override
  @JsonKey(name: "t_qty")
  int? get totalQty;

  /// Create a copy of MyOrdersCancellationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersCancellationDataImplCopyWith<_$MyOrdersCancellationDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MyOrdersCancellationProductData _$MyOrdersCancellationProductDataFromJson(
    Map<String, dynamic> json) {
  return _MyOrdersCancellationProductData.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersCancellationProductData {
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_name")
  String? get prodName => throw _privateConstructorUsedError;
  @JsonKey(name: "key_name")
  String? get keyName => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get knValue => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_price")
  double? get discPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get qty => throw _privateConstructorUsedError;

  /// Serializes this MyOrdersCancellationProductData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersCancellationProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersCancellationProductDataCopyWith<MyOrdersCancellationProductData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersCancellationProductDataCopyWith<$Res> {
  factory $MyOrdersCancellationProductDataCopyWith(
          MyOrdersCancellationProductData value,
          $Res Function(MyOrdersCancellationProductData) then) =
      _$MyOrdersCancellationProductDataCopyWithImpl<$Res,
          MyOrdersCancellationProductData>;
  @useResult
  $Res call(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "key_name") String? keyName,
      @JsonKey(name: "value") String? knValue,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "quantity") int? qty});
}

/// @nodoc
class _$MyOrdersCancellationProductDataCopyWithImpl<$Res,
        $Val extends MyOrdersCancellationProductData>
    implements $MyOrdersCancellationProductDataCopyWith<$Res> {
  _$MyOrdersCancellationProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersCancellationProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgData = freezed,
    Object? prodName = freezed,
    Object? keyName = freezed,
    Object? knValue = freezed,
    Object? discPrice = freezed,
    Object? qty = freezed,
  }) {
    return _then(_value.copyWith(
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      knValue: freezed == knValue
          ? _value.knValue
          : knValue // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersCancellationProductDataImplCopyWith<$Res>
    implements $MyOrdersCancellationProductDataCopyWith<$Res> {
  factory _$$MyOrdersCancellationProductDataImplCopyWith(
          _$MyOrdersCancellationProductDataImpl value,
          $Res Function(_$MyOrdersCancellationProductDataImpl) then) =
      __$$MyOrdersCancellationProductDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "key_name") String? keyName,
      @JsonKey(name: "value") String? knValue,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "quantity") int? qty});
}

/// @nodoc
class __$$MyOrdersCancellationProductDataImplCopyWithImpl<$Res>
    extends _$MyOrdersCancellationProductDataCopyWithImpl<$Res,
        _$MyOrdersCancellationProductDataImpl>
    implements _$$MyOrdersCancellationProductDataImplCopyWith<$Res> {
  __$$MyOrdersCancellationProductDataImplCopyWithImpl(
      _$MyOrdersCancellationProductDataImpl _value,
      $Res Function(_$MyOrdersCancellationProductDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersCancellationProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgData = freezed,
    Object? prodName = freezed,
    Object? keyName = freezed,
    Object? knValue = freezed,
    Object? discPrice = freezed,
    Object? qty = freezed,
  }) {
    return _then(_$MyOrdersCancellationProductDataImpl(
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      knValue: freezed == knValue
          ? _value.knValue
          : knValue // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrdersCancellationProductDataImpl
    implements _MyOrdersCancellationProductData {
  _$MyOrdersCancellationProductDataImpl(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      this.imgData,
      @JsonKey(name: "prod_name") this.prodName,
      @JsonKey(name: "key_name") this.keyName,
      @JsonKey(name: "value") this.knValue,
      @JsonKey(name: "disc_price") this.discPrice,
      @JsonKey(name: "quantity") this.qty});

  factory _$MyOrdersCancellationProductDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MyOrdersCancellationProductDataImplFromJson(json);

  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  final Uint8List? imgData;
  @override
  @JsonKey(name: "prod_name")
  final String? prodName;
  @override
  @JsonKey(name: "key_name")
  final String? keyName;
  @override
  @JsonKey(name: "value")
  final String? knValue;
  @override
  @JsonKey(name: "disc_price")
  final double? discPrice;
  @override
  @JsonKey(name: "quantity")
  final int? qty;

  @override
  String toString() {
    return 'MyOrdersCancellationProductData(imgData: $imgData, prodName: $prodName, keyName: $keyName, knValue: $knValue, discPrice: $discPrice, qty: $qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersCancellationProductDataImpl &&
            const DeepCollectionEquality().equals(other.imgData, imgData) &&
            (identical(other.prodName, prodName) ||
                other.prodName == prodName) &&
            (identical(other.keyName, keyName) || other.keyName == keyName) &&
            (identical(other.knValue, knValue) || other.knValue == knValue) &&
            (identical(other.discPrice, discPrice) ||
                other.discPrice == discPrice) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imgData),
      prodName,
      keyName,
      knValue,
      discPrice,
      qty);

  /// Create a copy of MyOrdersCancellationProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersCancellationProductDataImplCopyWith<
          _$MyOrdersCancellationProductDataImpl>
      get copyWith => __$$MyOrdersCancellationProductDataImplCopyWithImpl<
          _$MyOrdersCancellationProductDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrdersCancellationProductDataImplToJson(
      this,
    );
  }
}

abstract class _MyOrdersCancellationProductData
    implements MyOrdersCancellationProductData {
  factory _MyOrdersCancellationProductData(
          {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
          final Uint8List? imgData,
          @JsonKey(name: "prod_name") final String? prodName,
          @JsonKey(name: "key_name") final String? keyName,
          @JsonKey(name: "value") final String? knValue,
          @JsonKey(name: "disc_price") final double? discPrice,
          @JsonKey(name: "quantity") final int? qty}) =
      _$MyOrdersCancellationProductDataImpl;

  factory _MyOrdersCancellationProductData.fromJson(Map<String, dynamic> json) =
      _$MyOrdersCancellationProductDataImpl.fromJson;

  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData;
  @override
  @JsonKey(name: "prod_name")
  String? get prodName;
  @override
  @JsonKey(name: "key_name")
  String? get keyName;
  @override
  @JsonKey(name: "value")
  String? get knValue;
  @override
  @JsonKey(name: "disc_price")
  double? get discPrice;
  @override
  @JsonKey(name: "quantity")
  int? get qty;

  /// Create a copy of MyOrdersCancellationProductData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersCancellationProductDataImplCopyWith<
          _$MyOrdersCancellationProductDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CancelDetailsData _$CancelDetailsDataFromJson(Map<String, dynamic> json) {
  return _CancelDetailsData.fromJson(json);
}

/// @nodoc
mixin _$CancelDetailsData {
  @JsonKey(name: "batch_id")
  String? get batchID => throw _privateConstructorUsedError;
  @JsonKey(name: "primary_status")
  String? get primaryStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "spc_description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "note_description")
  String? get noteDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "nested_data")
  List<CancelDetailsProductData>? get myOrdersProdsData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "is_refundable")
  bool? get isRefundable => throw _privateConstructorUsedError;
  @JsonKey(name: "refundable")
  double? get refundableAmt => throw _privateConstructorUsedError;
  @JsonKey(name: "current_step")
  int? get currentStep => throw _privateConstructorUsedError;
  @JsonKey(name: "cancellation_d")
  String? get cancellationDate => throw _privateConstructorUsedError;

  /// Serializes this CancelDetailsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CancelDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CancelDetailsDataCopyWith<CancelDetailsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelDetailsDataCopyWith<$Res> {
  factory $CancelDetailsDataCopyWith(
          CancelDetailsData value, $Res Function(CancelDetailsData) then) =
      _$CancelDetailsDataCopyWithImpl<$Res, CancelDetailsData>;
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "primary_status") String? primaryStatus,
      @JsonKey(name: "spc_description") String? description,
      @JsonKey(name: "note_description") String? noteDescription,
      @JsonKey(name: "nested_data")
      List<CancelDetailsProductData>? myOrdersProdsData,
      @JsonKey(name: "is_refundable") bool? isRefundable,
      @JsonKey(name: "refundable") double? refundableAmt,
      @JsonKey(name: "current_step") int? currentStep,
      @JsonKey(name: "cancellation_d") String? cancellationDate});
}

/// @nodoc
class _$CancelDetailsDataCopyWithImpl<$Res, $Val extends CancelDetailsData>
    implements $CancelDetailsDataCopyWith<$Res> {
  _$CancelDetailsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CancelDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? primaryStatus = freezed,
    Object? description = freezed,
    Object? noteDescription = freezed,
    Object? myOrdersProdsData = freezed,
    Object? isRefundable = freezed,
    Object? refundableAmt = freezed,
    Object? currentStep = freezed,
    Object? cancellationDate = freezed,
  }) {
    return _then(_value.copyWith(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryStatus: freezed == primaryStatus
          ? _value.primaryStatus
          : primaryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      noteDescription: freezed == noteDescription
          ? _value.noteDescription
          : noteDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      myOrdersProdsData: freezed == myOrdersProdsData
          ? _value.myOrdersProdsData
          : myOrdersProdsData // ignore: cast_nullable_to_non_nullable
              as List<CancelDetailsProductData>?,
      isRefundable: freezed == isRefundable
          ? _value.isRefundable
          : isRefundable // ignore: cast_nullable_to_non_nullable
              as bool?,
      refundableAmt: freezed == refundableAmt
          ? _value.refundableAmt
          : refundableAmt // ignore: cast_nullable_to_non_nullable
              as double?,
      currentStep: freezed == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int?,
      cancellationDate: freezed == cancellationDate
          ? _value.cancellationDate
          : cancellationDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CancelDetailsDataImplCopyWith<$Res>
    implements $CancelDetailsDataCopyWith<$Res> {
  factory _$$CancelDetailsDataImplCopyWith(_$CancelDetailsDataImpl value,
          $Res Function(_$CancelDetailsDataImpl) then) =
      __$$CancelDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "batch_id") String? batchID,
      @JsonKey(name: "primary_status") String? primaryStatus,
      @JsonKey(name: "spc_description") String? description,
      @JsonKey(name: "note_description") String? noteDescription,
      @JsonKey(name: "nested_data")
      List<CancelDetailsProductData>? myOrdersProdsData,
      @JsonKey(name: "is_refundable") bool? isRefundable,
      @JsonKey(name: "refundable") double? refundableAmt,
      @JsonKey(name: "current_step") int? currentStep,
      @JsonKey(name: "cancellation_d") String? cancellationDate});
}

/// @nodoc
class __$$CancelDetailsDataImplCopyWithImpl<$Res>
    extends _$CancelDetailsDataCopyWithImpl<$Res, _$CancelDetailsDataImpl>
    implements _$$CancelDetailsDataImplCopyWith<$Res> {
  __$$CancelDetailsDataImplCopyWithImpl(_$CancelDetailsDataImpl _value,
      $Res Function(_$CancelDetailsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CancelDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchID = freezed,
    Object? primaryStatus = freezed,
    Object? description = freezed,
    Object? noteDescription = freezed,
    Object? myOrdersProdsData = freezed,
    Object? isRefundable = freezed,
    Object? refundableAmt = freezed,
    Object? currentStep = freezed,
    Object? cancellationDate = freezed,
  }) {
    return _then(_$CancelDetailsDataImpl(
      batchID: freezed == batchID
          ? _value.batchID
          : batchID // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryStatus: freezed == primaryStatus
          ? _value.primaryStatus
          : primaryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      noteDescription: freezed == noteDescription
          ? _value.noteDescription
          : noteDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      myOrdersProdsData: freezed == myOrdersProdsData
          ? _value._myOrdersProdsData
          : myOrdersProdsData // ignore: cast_nullable_to_non_nullable
              as List<CancelDetailsProductData>?,
      isRefundable: freezed == isRefundable
          ? _value.isRefundable
          : isRefundable // ignore: cast_nullable_to_non_nullable
              as bool?,
      refundableAmt: freezed == refundableAmt
          ? _value.refundableAmt
          : refundableAmt // ignore: cast_nullable_to_non_nullable
              as double?,
      currentStep: freezed == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int?,
      cancellationDate: freezed == cancellationDate
          ? _value.cancellationDate
          : cancellationDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CancelDetailsDataImpl implements _CancelDetailsData {
  _$CancelDetailsDataImpl(
      {@JsonKey(name: "batch_id") this.batchID,
      @JsonKey(name: "primary_status") this.primaryStatus,
      @JsonKey(name: "spc_description") this.description,
      @JsonKey(name: "note_description") this.noteDescription,
      @JsonKey(name: "nested_data")
      final List<CancelDetailsProductData>? myOrdersProdsData,
      @JsonKey(name: "is_refundable") this.isRefundable,
      @JsonKey(name: "refundable") this.refundableAmt,
      @JsonKey(name: "current_step") this.currentStep,
      @JsonKey(name: "cancellation_d") this.cancellationDate})
      : _myOrdersProdsData = myOrdersProdsData;

  factory _$CancelDetailsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancelDetailsDataImplFromJson(json);

  @override
  @JsonKey(name: "batch_id")
  final String? batchID;
  @override
  @JsonKey(name: "primary_status")
  final String? primaryStatus;
  @override
  @JsonKey(name: "spc_description")
  final String? description;
  @override
  @JsonKey(name: "note_description")
  final String? noteDescription;
  final List<CancelDetailsProductData>? _myOrdersProdsData;
  @override
  @JsonKey(name: "nested_data")
  List<CancelDetailsProductData>? get myOrdersProdsData {
    final value = _myOrdersProdsData;
    if (value == null) return null;
    if (_myOrdersProdsData is EqualUnmodifiableListView)
      return _myOrdersProdsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "is_refundable")
  final bool? isRefundable;
  @override
  @JsonKey(name: "refundable")
  final double? refundableAmt;
  @override
  @JsonKey(name: "current_step")
  final int? currentStep;
  @override
  @JsonKey(name: "cancellation_d")
  final String? cancellationDate;

  @override
  String toString() {
    return 'CancelDetailsData(batchID: $batchID, primaryStatus: $primaryStatus, description: $description, noteDescription: $noteDescription, myOrdersProdsData: $myOrdersProdsData, isRefundable: $isRefundable, refundableAmt: $refundableAmt, currentStep: $currentStep, cancellationDate: $cancellationDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelDetailsDataImpl &&
            (identical(other.batchID, batchID) || other.batchID == batchID) &&
            (identical(other.primaryStatus, primaryStatus) ||
                other.primaryStatus == primaryStatus) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.noteDescription, noteDescription) ||
                other.noteDescription == noteDescription) &&
            const DeepCollectionEquality()
                .equals(other._myOrdersProdsData, _myOrdersProdsData) &&
            (identical(other.isRefundable, isRefundable) ||
                other.isRefundable == isRefundable) &&
            (identical(other.refundableAmt, refundableAmt) ||
                other.refundableAmt == refundableAmt) &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            (identical(other.cancellationDate, cancellationDate) ||
                other.cancellationDate == cancellationDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      batchID,
      primaryStatus,
      description,
      noteDescription,
      const DeepCollectionEquality().hash(_myOrdersProdsData),
      isRefundable,
      refundableAmt,
      currentStep,
      cancellationDate);

  /// Create a copy of CancelDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelDetailsDataImplCopyWith<_$CancelDetailsDataImpl> get copyWith =>
      __$$CancelDetailsDataImplCopyWithImpl<_$CancelDetailsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CancelDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _CancelDetailsData implements CancelDetailsData {
  factory _CancelDetailsData(
          {@JsonKey(name: "batch_id") final String? batchID,
          @JsonKey(name: "primary_status") final String? primaryStatus,
          @JsonKey(name: "spc_description") final String? description,
          @JsonKey(name: "note_description") final String? noteDescription,
          @JsonKey(name: "nested_data")
          final List<CancelDetailsProductData>? myOrdersProdsData,
          @JsonKey(name: "is_refundable") final bool? isRefundable,
          @JsonKey(name: "refundable") final double? refundableAmt,
          @JsonKey(name: "current_step") final int? currentStep,
          @JsonKey(name: "cancellation_d") final String? cancellationDate}) =
      _$CancelDetailsDataImpl;

  factory _CancelDetailsData.fromJson(Map<String, dynamic> json) =
      _$CancelDetailsDataImpl.fromJson;

  @override
  @JsonKey(name: "batch_id")
  String? get batchID;
  @override
  @JsonKey(name: "primary_status")
  String? get primaryStatus;
  @override
  @JsonKey(name: "spc_description")
  String? get description;
  @override
  @JsonKey(name: "note_description")
  String? get noteDescription;
  @override
  @JsonKey(name: "nested_data")
  List<CancelDetailsProductData>? get myOrdersProdsData;
  @override
  @JsonKey(name: "is_refundable")
  bool? get isRefundable;
  @override
  @JsonKey(name: "refundable")
  double? get refundableAmt;
  @override
  @JsonKey(name: "current_step")
  int? get currentStep;
  @override
  @JsonKey(name: "cancellation_d")
  String? get cancellationDate;

  /// Create a copy of CancelDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelDetailsDataImplCopyWith<_$CancelDetailsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CancelDetailsProductData _$CancelDetailsProductDataFromJson(
    Map<String, dynamic> json) {
  return _CancelDetailsProductData.fromJson(json);
}

/// @nodoc
mixin _$CancelDetailsProductData {
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_name")
  String? get prodName => throw _privateConstructorUsedError;
  @JsonKey(name: "key_name")
  String? get keyName => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get knValue => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_price")
  double? get discPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get qty => throw _privateConstructorUsedError;

  /// Serializes this CancelDetailsProductData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CancelDetailsProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CancelDetailsProductDataCopyWith<CancelDetailsProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelDetailsProductDataCopyWith<$Res> {
  factory $CancelDetailsProductDataCopyWith(CancelDetailsProductData value,
          $Res Function(CancelDetailsProductData) then) =
      _$CancelDetailsProductDataCopyWithImpl<$Res, CancelDetailsProductData>;
  @useResult
  $Res call(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "key_name") String? keyName,
      @JsonKey(name: "value") String? knValue,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "quantity") int? qty});
}

/// @nodoc
class _$CancelDetailsProductDataCopyWithImpl<$Res,
        $Val extends CancelDetailsProductData>
    implements $CancelDetailsProductDataCopyWith<$Res> {
  _$CancelDetailsProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CancelDetailsProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgData = freezed,
    Object? prodName = freezed,
    Object? keyName = freezed,
    Object? knValue = freezed,
    Object? discPrice = freezed,
    Object? qty = freezed,
  }) {
    return _then(_value.copyWith(
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      knValue: freezed == knValue
          ? _value.knValue
          : knValue // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CancelDetailsProductDataImplCopyWith<$Res>
    implements $CancelDetailsProductDataCopyWith<$Res> {
  factory _$$CancelDetailsProductDataImplCopyWith(
          _$CancelDetailsProductDataImpl value,
          $Res Function(_$CancelDetailsProductDataImpl) then) =
      __$$CancelDetailsProductDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      Uint8List? imgData,
      @JsonKey(name: "prod_name") String? prodName,
      @JsonKey(name: "key_name") String? keyName,
      @JsonKey(name: "value") String? knValue,
      @JsonKey(name: "disc_price") double? discPrice,
      @JsonKey(name: "quantity") int? qty});
}

/// @nodoc
class __$$CancelDetailsProductDataImplCopyWithImpl<$Res>
    extends _$CancelDetailsProductDataCopyWithImpl<$Res,
        _$CancelDetailsProductDataImpl>
    implements _$$CancelDetailsProductDataImplCopyWith<$Res> {
  __$$CancelDetailsProductDataImplCopyWithImpl(
      _$CancelDetailsProductDataImpl _value,
      $Res Function(_$CancelDetailsProductDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CancelDetailsProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgData = freezed,
    Object? prodName = freezed,
    Object? keyName = freezed,
    Object? knValue = freezed,
    Object? discPrice = freezed,
    Object? qty = freezed,
  }) {
    return _then(_$CancelDetailsProductDataImpl(
      imgData: freezed == imgData
          ? _value.imgData
          : imgData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      prodName: freezed == prodName
          ? _value.prodName
          : prodName // ignore: cast_nullable_to_non_nullable
              as String?,
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      knValue: freezed == knValue
          ? _value.knValue
          : knValue // ignore: cast_nullable_to_non_nullable
              as String?,
      discPrice: freezed == discPrice
          ? _value.discPrice
          : discPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CancelDetailsProductDataImpl implements _CancelDetailsProductData {
  _$CancelDetailsProductDataImpl(
      {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
      this.imgData,
      @JsonKey(name: "prod_name") this.prodName,
      @JsonKey(name: "key_name") this.keyName,
      @JsonKey(name: "value") this.knValue,
      @JsonKey(name: "disc_price") this.discPrice,
      @JsonKey(name: "quantity") this.qty});

  factory _$CancelDetailsProductDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancelDetailsProductDataImplFromJson(json);

  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  final Uint8List? imgData;
  @override
  @JsonKey(name: "prod_name")
  final String? prodName;
  @override
  @JsonKey(name: "key_name")
  final String? keyName;
  @override
  @JsonKey(name: "value")
  final String? knValue;
  @override
  @JsonKey(name: "disc_price")
  final double? discPrice;
  @override
  @JsonKey(name: "quantity")
  final int? qty;

  @override
  String toString() {
    return 'CancelDetailsProductData(imgData: $imgData, prodName: $prodName, keyName: $keyName, knValue: $knValue, discPrice: $discPrice, qty: $qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelDetailsProductDataImpl &&
            const DeepCollectionEquality().equals(other.imgData, imgData) &&
            (identical(other.prodName, prodName) ||
                other.prodName == prodName) &&
            (identical(other.keyName, keyName) || other.keyName == keyName) &&
            (identical(other.knValue, knValue) || other.knValue == knValue) &&
            (identical(other.discPrice, discPrice) ||
                other.discPrice == discPrice) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imgData),
      prodName,
      keyName,
      knValue,
      discPrice,
      qty);

  /// Create a copy of CancelDetailsProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelDetailsProductDataImplCopyWith<_$CancelDetailsProductDataImpl>
      get copyWith => __$$CancelDetailsProductDataImplCopyWithImpl<
          _$CancelDetailsProductDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CancelDetailsProductDataImplToJson(
      this,
    );
  }
}

abstract class _CancelDetailsProductData implements CancelDetailsProductData {
  factory _CancelDetailsProductData(
          {@JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
          final Uint8List? imgData,
          @JsonKey(name: "prod_name") final String? prodName,
          @JsonKey(name: "key_name") final String? keyName,
          @JsonKey(name: "value") final String? knValue,
          @JsonKey(name: "disc_price") final double? discPrice,
          @JsonKey(name: "quantity") final int? qty}) =
      _$CancelDetailsProductDataImpl;

  factory _CancelDetailsProductData.fromJson(Map<String, dynamic> json) =
      _$CancelDetailsProductDataImpl.fromJson;

  @override
  @JsonKey(name: "img_data", fromJson: _fromBase64, toJson: _toBase64)
  Uint8List? get imgData;
  @override
  @JsonKey(name: "prod_name")
  String? get prodName;
  @override
  @JsonKey(name: "key_name")
  String? get keyName;
  @override
  @JsonKey(name: "value")
  String? get knValue;
  @override
  @JsonKey(name: "disc_price")
  double? get discPrice;
  @override
  @JsonKey(name: "quantity")
  int? get qty;

  /// Create a copy of CancelDetailsProductData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelDetailsProductDataImplCopyWith<_$CancelDetailsProductDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubjectForEditAddressData _$SubjectForEditAddressDataFromJson(
    Map<String, dynamic> json) {
  return _SubjectForEditAddressData.fromJson(json);
}

/// @nodoc
mixin _$SubjectForEditAddressData {
  @JsonKey(name: "shipping_add_id")
  String? get shipAddID => throw _privateConstructorUsedError;
  @JsonKey(name: "recipients_name")
  String? get recipientName => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile_no")
  String? get mobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: "region_index")
  int? get regionIndex => throw _privateConstructorUsedError;
  @JsonKey(name: "region_code")
  String? get regionCode => throw _privateConstructorUsedError;
  @JsonKey(name: "region_name")
  String? get regionName => throw _privateConstructorUsedError;
  @JsonKey(name: "city_index")
  int? get cityIndex => throw _privateConstructorUsedError;
  @JsonKey(name: "city_code")
  String? get cityCode => throw _privateConstructorUsedError;
  @JsonKey(name: "city_name")
  String? get cityName => throw _privateConstructorUsedError;
  @JsonKey(name: "district_index")
  int? get districtIndex => throw _privateConstructorUsedError;
  @JsonKey(name: "district_code")
  String? get districtCode => throw _privateConstructorUsedError;
  @JsonKey(name: "district_name")
  String? get districtName => throw _privateConstructorUsedError;
  @JsonKey(name: "st_bldg")
  String? get stBldg => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_floor")
  String? get unitFloor => throw _privateConstructorUsedError;
  @JsonKey(name: "address_category")
  String? get addressCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "is_default")
  bool? get isDefault => throw _privateConstructorUsedError;

  /// Serializes this SubjectForEditAddressData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubjectForEditAddressData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectForEditAddressDataCopyWith<SubjectForEditAddressData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectForEditAddressDataCopyWith<$Res> {
  factory $SubjectForEditAddressDataCopyWith(SubjectForEditAddressData value,
          $Res Function(SubjectForEditAddressData) then) =
      _$SubjectForEditAddressDataCopyWithImpl<$Res, SubjectForEditAddressData>;
  @useResult
  $Res call(
      {@JsonKey(name: "shipping_add_id") String? shipAddID,
      @JsonKey(name: "recipients_name") String? recipientName,
      @JsonKey(name: "mobile_no") String? mobileNo,
      @JsonKey(name: "region_index") int? regionIndex,
      @JsonKey(name: "region_code") String? regionCode,
      @JsonKey(name: "region_name") String? regionName,
      @JsonKey(name: "city_index") int? cityIndex,
      @JsonKey(name: "city_code") String? cityCode,
      @JsonKey(name: "city_name") String? cityName,
      @JsonKey(name: "district_index") int? districtIndex,
      @JsonKey(name: "district_code") String? districtCode,
      @JsonKey(name: "district_name") String? districtName,
      @JsonKey(name: "st_bldg") String? stBldg,
      @JsonKey(name: "unit_floor") String? unitFloor,
      @JsonKey(name: "address_category") String? addressCategory,
      @JsonKey(name: "is_default") bool? isDefault});
}

/// @nodoc
class _$SubjectForEditAddressDataCopyWithImpl<$Res,
        $Val extends SubjectForEditAddressData>
    implements $SubjectForEditAddressDataCopyWith<$Res> {
  _$SubjectForEditAddressDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubjectForEditAddressData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipAddID = freezed,
    Object? recipientName = freezed,
    Object? mobileNo = freezed,
    Object? regionIndex = freezed,
    Object? regionCode = freezed,
    Object? regionName = freezed,
    Object? cityIndex = freezed,
    Object? cityCode = freezed,
    Object? cityName = freezed,
    Object? districtIndex = freezed,
    Object? districtCode = freezed,
    Object? districtName = freezed,
    Object? stBldg = freezed,
    Object? unitFloor = freezed,
    Object? addressCategory = freezed,
    Object? isDefault = freezed,
  }) {
    return _then(_value.copyWith(
      shipAddID: freezed == shipAddID
          ? _value.shipAddID
          : shipAddID // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientName: freezed == recipientName
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      regionIndex: freezed == regionIndex
          ? _value.regionIndex
          : regionIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      regionCode: freezed == regionCode
          ? _value.regionCode
          : regionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      regionName: freezed == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String?,
      cityIndex: freezed == cityIndex
          ? _value.cityIndex
          : cityIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      cityCode: freezed == cityCode
          ? _value.cityCode
          : cityCode // ignore: cast_nullable_to_non_nullable
              as String?,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      districtIndex: freezed == districtIndex
          ? _value.districtIndex
          : districtIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      districtCode: freezed == districtCode
          ? _value.districtCode
          : districtCode // ignore: cast_nullable_to_non_nullable
              as String?,
      districtName: freezed == districtName
          ? _value.districtName
          : districtName // ignore: cast_nullable_to_non_nullable
              as String?,
      stBldg: freezed == stBldg
          ? _value.stBldg
          : stBldg // ignore: cast_nullable_to_non_nullable
              as String?,
      unitFloor: freezed == unitFloor
          ? _value.unitFloor
          : unitFloor // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCategory: freezed == addressCategory
          ? _value.addressCategory
          : addressCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectForEditAddressDataImplCopyWith<$Res>
    implements $SubjectForEditAddressDataCopyWith<$Res> {
  factory _$$SubjectForEditAddressDataImplCopyWith(
          _$SubjectForEditAddressDataImpl value,
          $Res Function(_$SubjectForEditAddressDataImpl) then) =
      __$$SubjectForEditAddressDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "shipping_add_id") String? shipAddID,
      @JsonKey(name: "recipients_name") String? recipientName,
      @JsonKey(name: "mobile_no") String? mobileNo,
      @JsonKey(name: "region_index") int? regionIndex,
      @JsonKey(name: "region_code") String? regionCode,
      @JsonKey(name: "region_name") String? regionName,
      @JsonKey(name: "city_index") int? cityIndex,
      @JsonKey(name: "city_code") String? cityCode,
      @JsonKey(name: "city_name") String? cityName,
      @JsonKey(name: "district_index") int? districtIndex,
      @JsonKey(name: "district_code") String? districtCode,
      @JsonKey(name: "district_name") String? districtName,
      @JsonKey(name: "st_bldg") String? stBldg,
      @JsonKey(name: "unit_floor") String? unitFloor,
      @JsonKey(name: "address_category") String? addressCategory,
      @JsonKey(name: "is_default") bool? isDefault});
}

/// @nodoc
class __$$SubjectForEditAddressDataImplCopyWithImpl<$Res>
    extends _$SubjectForEditAddressDataCopyWithImpl<$Res,
        _$SubjectForEditAddressDataImpl>
    implements _$$SubjectForEditAddressDataImplCopyWith<$Res> {
  __$$SubjectForEditAddressDataImplCopyWithImpl(
      _$SubjectForEditAddressDataImpl _value,
      $Res Function(_$SubjectForEditAddressDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubjectForEditAddressData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipAddID = freezed,
    Object? recipientName = freezed,
    Object? mobileNo = freezed,
    Object? regionIndex = freezed,
    Object? regionCode = freezed,
    Object? regionName = freezed,
    Object? cityIndex = freezed,
    Object? cityCode = freezed,
    Object? cityName = freezed,
    Object? districtIndex = freezed,
    Object? districtCode = freezed,
    Object? districtName = freezed,
    Object? stBldg = freezed,
    Object? unitFloor = freezed,
    Object? addressCategory = freezed,
    Object? isDefault = freezed,
  }) {
    return _then(_$SubjectForEditAddressDataImpl(
      shipAddID: freezed == shipAddID
          ? _value.shipAddID
          : shipAddID // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientName: freezed == recipientName
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      regionIndex: freezed == regionIndex
          ? _value.regionIndex
          : regionIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      regionCode: freezed == regionCode
          ? _value.regionCode
          : regionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      regionName: freezed == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String?,
      cityIndex: freezed == cityIndex
          ? _value.cityIndex
          : cityIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      cityCode: freezed == cityCode
          ? _value.cityCode
          : cityCode // ignore: cast_nullable_to_non_nullable
              as String?,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      districtIndex: freezed == districtIndex
          ? _value.districtIndex
          : districtIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      districtCode: freezed == districtCode
          ? _value.districtCode
          : districtCode // ignore: cast_nullable_to_non_nullable
              as String?,
      districtName: freezed == districtName
          ? _value.districtName
          : districtName // ignore: cast_nullable_to_non_nullable
              as String?,
      stBldg: freezed == stBldg
          ? _value.stBldg
          : stBldg // ignore: cast_nullable_to_non_nullable
              as String?,
      unitFloor: freezed == unitFloor
          ? _value.unitFloor
          : unitFloor // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCategory: freezed == addressCategory
          ? _value.addressCategory
          : addressCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectForEditAddressDataImpl implements _SubjectForEditAddressData {
  _$SubjectForEditAddressDataImpl(
      {@JsonKey(name: "shipping_add_id") this.shipAddID,
      @JsonKey(name: "recipients_name") this.recipientName,
      @JsonKey(name: "mobile_no") this.mobileNo,
      @JsonKey(name: "region_index") this.regionIndex,
      @JsonKey(name: "region_code") this.regionCode,
      @JsonKey(name: "region_name") this.regionName,
      @JsonKey(name: "city_index") this.cityIndex,
      @JsonKey(name: "city_code") this.cityCode,
      @JsonKey(name: "city_name") this.cityName,
      @JsonKey(name: "district_index") this.districtIndex,
      @JsonKey(name: "district_code") this.districtCode,
      @JsonKey(name: "district_name") this.districtName,
      @JsonKey(name: "st_bldg") this.stBldg,
      @JsonKey(name: "unit_floor") this.unitFloor,
      @JsonKey(name: "address_category") this.addressCategory,
      @JsonKey(name: "is_default") this.isDefault});

  factory _$SubjectForEditAddressDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectForEditAddressDataImplFromJson(json);

  @override
  @JsonKey(name: "shipping_add_id")
  final String? shipAddID;
  @override
  @JsonKey(name: "recipients_name")
  final String? recipientName;
  @override
  @JsonKey(name: "mobile_no")
  final String? mobileNo;
  @override
  @JsonKey(name: "region_index")
  final int? regionIndex;
  @override
  @JsonKey(name: "region_code")
  final String? regionCode;
  @override
  @JsonKey(name: "region_name")
  final String? regionName;
  @override
  @JsonKey(name: "city_index")
  final int? cityIndex;
  @override
  @JsonKey(name: "city_code")
  final String? cityCode;
  @override
  @JsonKey(name: "city_name")
  final String? cityName;
  @override
  @JsonKey(name: "district_index")
  final int? districtIndex;
  @override
  @JsonKey(name: "district_code")
  final String? districtCode;
  @override
  @JsonKey(name: "district_name")
  final String? districtName;
  @override
  @JsonKey(name: "st_bldg")
  final String? stBldg;
  @override
  @JsonKey(name: "unit_floor")
  final String? unitFloor;
  @override
  @JsonKey(name: "address_category")
  final String? addressCategory;
  @override
  @JsonKey(name: "is_default")
  final bool? isDefault;

  @override
  String toString() {
    return 'SubjectForEditAddressData(shipAddID: $shipAddID, recipientName: $recipientName, mobileNo: $mobileNo, regionIndex: $regionIndex, regionCode: $regionCode, regionName: $regionName, cityIndex: $cityIndex, cityCode: $cityCode, cityName: $cityName, districtIndex: $districtIndex, districtCode: $districtCode, districtName: $districtName, stBldg: $stBldg, unitFloor: $unitFloor, addressCategory: $addressCategory, isDefault: $isDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectForEditAddressDataImpl &&
            (identical(other.shipAddID, shipAddID) ||
                other.shipAddID == shipAddID) &&
            (identical(other.recipientName, recipientName) ||
                other.recipientName == recipientName) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo) &&
            (identical(other.regionIndex, regionIndex) ||
                other.regionIndex == regionIndex) &&
            (identical(other.regionCode, regionCode) ||
                other.regionCode == regionCode) &&
            (identical(other.regionName, regionName) ||
                other.regionName == regionName) &&
            (identical(other.cityIndex, cityIndex) ||
                other.cityIndex == cityIndex) &&
            (identical(other.cityCode, cityCode) ||
                other.cityCode == cityCode) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.districtIndex, districtIndex) ||
                other.districtIndex == districtIndex) &&
            (identical(other.districtCode, districtCode) ||
                other.districtCode == districtCode) &&
            (identical(other.districtName, districtName) ||
                other.districtName == districtName) &&
            (identical(other.stBldg, stBldg) || other.stBldg == stBldg) &&
            (identical(other.unitFloor, unitFloor) ||
                other.unitFloor == unitFloor) &&
            (identical(other.addressCategory, addressCategory) ||
                other.addressCategory == addressCategory) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      shipAddID,
      recipientName,
      mobileNo,
      regionIndex,
      regionCode,
      regionName,
      cityIndex,
      cityCode,
      cityName,
      districtIndex,
      districtCode,
      districtName,
      stBldg,
      unitFloor,
      addressCategory,
      isDefault);

  /// Create a copy of SubjectForEditAddressData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectForEditAddressDataImplCopyWith<_$SubjectForEditAddressDataImpl>
      get copyWith => __$$SubjectForEditAddressDataImplCopyWithImpl<
          _$SubjectForEditAddressDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectForEditAddressDataImplToJson(
      this,
    );
  }
}

abstract class _SubjectForEditAddressData implements SubjectForEditAddressData {
  factory _SubjectForEditAddressData(
          {@JsonKey(name: "shipping_add_id") final String? shipAddID,
          @JsonKey(name: "recipients_name") final String? recipientName,
          @JsonKey(name: "mobile_no") final String? mobileNo,
          @JsonKey(name: "region_index") final int? regionIndex,
          @JsonKey(name: "region_code") final String? regionCode,
          @JsonKey(name: "region_name") final String? regionName,
          @JsonKey(name: "city_index") final int? cityIndex,
          @JsonKey(name: "city_code") final String? cityCode,
          @JsonKey(name: "city_name") final String? cityName,
          @JsonKey(name: "district_index") final int? districtIndex,
          @JsonKey(name: "district_code") final String? districtCode,
          @JsonKey(name: "district_name") final String? districtName,
          @JsonKey(name: "st_bldg") final String? stBldg,
          @JsonKey(name: "unit_floor") final String? unitFloor,
          @JsonKey(name: "address_category") final String? addressCategory,
          @JsonKey(name: "is_default") final bool? isDefault}) =
      _$SubjectForEditAddressDataImpl;

  factory _SubjectForEditAddressData.fromJson(Map<String, dynamic> json) =
      _$SubjectForEditAddressDataImpl.fromJson;

  @override
  @JsonKey(name: "shipping_add_id")
  String? get shipAddID;
  @override
  @JsonKey(name: "recipients_name")
  String? get recipientName;
  @override
  @JsonKey(name: "mobile_no")
  String? get mobileNo;
  @override
  @JsonKey(name: "region_index")
  int? get regionIndex;
  @override
  @JsonKey(name: "region_code")
  String? get regionCode;
  @override
  @JsonKey(name: "region_name")
  String? get regionName;
  @override
  @JsonKey(name: "city_index")
  int? get cityIndex;
  @override
  @JsonKey(name: "city_code")
  String? get cityCode;
  @override
  @JsonKey(name: "city_name")
  String? get cityName;
  @override
  @JsonKey(name: "district_index")
  int? get districtIndex;
  @override
  @JsonKey(name: "district_code")
  String? get districtCode;
  @override
  @JsonKey(name: "district_name")
  String? get districtName;
  @override
  @JsonKey(name: "st_bldg")
  String? get stBldg;
  @override
  @JsonKey(name: "unit_floor")
  String? get unitFloor;
  @override
  @JsonKey(name: "address_category")
  String? get addressCategory;
  @override
  @JsonKey(name: "is_default")
  bool? get isDefault;

  /// Create a copy of SubjectForEditAddressData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectForEditAddressDataImplCopyWith<_$SubjectForEditAddressDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

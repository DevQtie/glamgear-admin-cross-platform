// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminData _$AdminDataFromJson(Map<String, dynamic> json) {
  return _AdminData.fromJson(json);
}

/// @nodoc
mixin _$AdminData {
  @JsonKey(name: "admin_id")
  String? get adminID => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "full_name")
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: "comp_email")
  String? get compEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "admin_role")
  String? get adminRole => throw _privateConstructorUsedError;

  /// Serializes this AdminData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminDataCopyWith<AdminData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminDataCopyWith<$Res> {
  factory $AdminDataCopyWith(AdminData value, $Res Function(AdminData) then) =
      _$AdminDataCopyWithImpl<$Res, AdminData>;
  @useResult
  $Res call(
      {@JsonKey(name: "admin_id") String? adminID,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "comp_email") String? compEmail,
      @JsonKey(name: "admin_role") String? adminRole});
}

/// @nodoc
class _$AdminDataCopyWithImpl<$Res, $Val extends AdminData>
    implements $AdminDataCopyWith<$Res> {
  _$AdminDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminID = freezed,
    Object? username = freezed,
    Object? fullName = freezed,
    Object? compEmail = freezed,
    Object? adminRole = freezed,
  }) {
    return _then(_value.copyWith(
      adminID: freezed == adminID
          ? _value.adminID
          : adminID // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      compEmail: freezed == compEmail
          ? _value.compEmail
          : compEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      adminRole: freezed == adminRole
          ? _value.adminRole
          : adminRole // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminDataImplCopyWith<$Res>
    implements $AdminDataCopyWith<$Res> {
  factory _$$AdminDataImplCopyWith(
          _$AdminDataImpl value, $Res Function(_$AdminDataImpl) then) =
      __$$AdminDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "admin_id") String? adminID,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "comp_email") String? compEmail,
      @JsonKey(name: "admin_role") String? adminRole});
}

/// @nodoc
class __$$AdminDataImplCopyWithImpl<$Res>
    extends _$AdminDataCopyWithImpl<$Res, _$AdminDataImpl>
    implements _$$AdminDataImplCopyWith<$Res> {
  __$$AdminDataImplCopyWithImpl(
      _$AdminDataImpl _value, $Res Function(_$AdminDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminID = freezed,
    Object? username = freezed,
    Object? fullName = freezed,
    Object? compEmail = freezed,
    Object? adminRole = freezed,
  }) {
    return _then(_$AdminDataImpl(
      adminID: freezed == adminID
          ? _value.adminID
          : adminID // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      compEmail: freezed == compEmail
          ? _value.compEmail
          : compEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      adminRole: freezed == adminRole
          ? _value.adminRole
          : adminRole // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminDataImpl implements _AdminData {
  _$AdminDataImpl(
      {@JsonKey(name: "admin_id") this.adminID,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "full_name") this.fullName,
      @JsonKey(name: "comp_email") this.compEmail,
      @JsonKey(name: "admin_role") this.adminRole});

  factory _$AdminDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminDataImplFromJson(json);

  @override
  @JsonKey(name: "admin_id")
  final String? adminID;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "full_name")
  final String? fullName;
  @override
  @JsonKey(name: "comp_email")
  final String? compEmail;
  @override
  @JsonKey(name: "admin_role")
  final String? adminRole;

  @override
  String toString() {
    return 'AdminData(adminID: $adminID, username: $username, fullName: $fullName, compEmail: $compEmail, adminRole: $adminRole)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminDataImpl &&
            (identical(other.adminID, adminID) || other.adminID == adminID) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.compEmail, compEmail) ||
                other.compEmail == compEmail) &&
            (identical(other.adminRole, adminRole) ||
                other.adminRole == adminRole));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, adminID, username, fullName, compEmail, adminRole);

  /// Create a copy of AdminData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminDataImplCopyWith<_$AdminDataImpl> get copyWith =>
      __$$AdminDataImplCopyWithImpl<_$AdminDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminDataImplToJson(
      this,
    );
  }
}

abstract class _AdminData implements AdminData {
  factory _AdminData(
      {@JsonKey(name: "admin_id") final String? adminID,
      @JsonKey(name: "username") final String? username,
      @JsonKey(name: "full_name") final String? fullName,
      @JsonKey(name: "comp_email") final String? compEmail,
      @JsonKey(name: "admin_role") final String? adminRole}) = _$AdminDataImpl;

  factory _AdminData.fromJson(Map<String, dynamic> json) =
      _$AdminDataImpl.fromJson;

  @override
  @JsonKey(name: "admin_id")
  String? get adminID;
  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "full_name")
  String? get fullName;
  @override
  @JsonKey(name: "comp_email")
  String? get compEmail;
  @override
  @JsonKey(name: "admin_role")
  String? get adminRole;

  /// Create a copy of AdminData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminDataImplCopyWith<_$AdminDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

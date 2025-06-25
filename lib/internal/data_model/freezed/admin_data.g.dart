// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminDataImpl _$$AdminDataImplFromJson(Map<String, dynamic> json) =>
    _$AdminDataImpl(
      adminID: json['admin_id'] as String?,
      username: json['username'] as String?,
      fullName: json['full_name'] as String?,
      compEmail: json['comp_email'] as String?,
      adminRole: json['admin_role'] as String?,
    );

Map<String, dynamic> _$$AdminDataImplToJson(_$AdminDataImpl instance) =>
    <String, dynamic>{
      'admin_id': instance.adminID,
      'username': instance.username,
      'full_name': instance.fullName,
      'comp_email': instance.compEmail,
      'admin_role': instance.adminRole,
    };

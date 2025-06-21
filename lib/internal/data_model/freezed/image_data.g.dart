// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageDataImpl _$$ImageDataImplFromJson(Map<String, dynamic> json) =>
    _$ImageDataImpl(
      imgId: json['img_id'] as String?,
      img: _fromBase64(json['img_data'] as String?),
    );

Map<String, dynamic> _$$ImageDataImplToJson(_$ImageDataImpl instance) =>
    <String, dynamic>{
      'img_id': instance.imgId,
      'img_data': _toBase64(instance.img),
    };

_$ImageProdVarDataImpl _$$ImageProdVarDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageProdVarDataImpl(
      imgId: json['img_id'] as String?,
      img: _fromBase64(json['img_data'] as String?),
    );

Map<String, dynamic> _$$ImageProdVarDataImplToJson(
        _$ImageProdVarDataImpl instance) =>
    <String, dynamic>{
      'img_id': instance.imgId,
      'img_data': _toBase64(instance.img),
    };

_$ImageDatawSubImpl _$$ImageDatawSubImplFromJson(Map<String, dynamic> json) =>
    _$ImageDatawSubImpl(
      prodId: json['prod_id'] as String?,
      img: _fromBase64(json['img_data'] as String?),
      tag: json['tag'] as String?,
    );

Map<String, dynamic> _$$ImageDatawSubImplToJson(_$ImageDatawSubImpl instance) =>
    <String, dynamic>{
      'prod_id': instance.prodId,
      'img_data': _toBase64(instance.img),
      'tag': instance.tag,
    };

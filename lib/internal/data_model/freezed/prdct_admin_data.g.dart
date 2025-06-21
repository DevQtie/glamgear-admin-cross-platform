// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prdct_admin_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductAdminDataImpl _$$ProductAdminDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductAdminDataImpl(
      productData: _productDataFromJson(json['json_data'] as List?),
    );

Map<String, dynamic> _$$ProductAdminDataImplToJson(
        _$ProductAdminDataImpl instance) =>
    <String, dynamic>{
      'json_data': _productDataToJson(instance.productData),
    };

_$ProductDataImpl _$$ProductDataImplFromJson(Map<String, dynamic> json) =>
    _$ProductDataImpl(
      prodId: json['prod_id'] as String?,
      prodName: json['prod_name'] as String?,
      category: json['cat_name'] as String?,
      prodKeyVal: _prodKeyValFromJson(json['nested_specs_key'] as List?),
      prodImg: _imageDataFromJson(json['nested_p_img_key'] as List?),
      prodPromoTag: _prodPromoTagFromJson(json['nested_p_tag_key'] as List?),
      origPrice: (json['orig_price'] as num?)?.toDouble(),
      discPrice: (json['disc_price'] as num?)?.toDouble(),
      valueAddedTax: (json['value_added_tax'] as num?)?.toDouble(),
      stock: (json['stock'] as num?)?.toInt(),
      availability: json['availability'] as bool?,
      prodDescription: json['desc_data'] as String?,
      userIdModifier: json['user_id_modifier'] as String?,
    );

Map<String, dynamic> _$$ProductDataImplToJson(_$ProductDataImpl instance) =>
    <String, dynamic>{
      'prod_id': instance.prodId,
      'prod_name': instance.prodName,
      'cat_name': instance.category,
      'nested_specs_key': _prodKeyValToJson(instance.prodKeyVal),
      'nested_p_img_key': _imageDataToJson(instance.prodImg),
      'nested_p_tag_key': _prodPromoTagToJson(instance.prodPromoTag),
      'orig_price': instance.origPrice,
      'disc_price': instance.discPrice,
      'value_added_tax': instance.valueAddedTax,
      'stock': instance.stock,
      'availability': instance.availability,
      'desc_data': instance.prodDescription,
      'user_id_modifier': instance.userIdModifier,
    };

_$ProductVarAdminDataImpl _$$ProductVarAdminDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductVarAdminDataImpl(
      keyNameID: json['pv_key_name_id'] as String?,
      keyValue: json['value'] as String?,
      origPrice: (json['orig_price'] as num?)?.toDouble(),
      discPrice: (json['disc_price'] as num?)?.toDouble(),
      valueAddedTax: (json['value_added_tax'] as num?)?.toDouble(),
      stock: (json['stock'] as num?)?.toInt(),
      availability: json['availability'] as bool?,
      prodImg: (json['prodImg'] as List<dynamic>?)
          ?.map((e) => ImageData.fromJson(e as Map<String, dynamic>))
          .toList(),
      userIdModifier: json['user_id_modifier'] as String?,
    );

Map<String, dynamic> _$$ProductVarAdminDataImplToJson(
        _$ProductVarAdminDataImpl instance) =>
    <String, dynamic>{
      'pv_key_name_id': instance.keyNameID,
      'value': instance.keyValue,
      'orig_price': instance.origPrice,
      'disc_price': instance.discPrice,
      'value_added_tax': instance.valueAddedTax,
      'stock': instance.stock,
      'availability': instance.availability,
      'prodImg': instance.prodImg,
      'user_id_modifier': instance.userIdModifier,
    };

_$ProductKeyNamesImpl _$$ProductKeyNamesImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductKeyNamesImpl(
      productKeyName: (json['productKeyName'] as List<dynamic>?)
          ?.map((e) => ProductKeyName.fromJson(e as Map<String, dynamic>))
          .toList(),
      productVarKeyName: (json['productVarKeyName'] as List<dynamic>?)
          ?.map((e) => ProductVarKeyName.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductKeyNamesImplToJson(
        _$ProductKeyNamesImpl instance) =>
    <String, dynamic>{
      'productKeyName': instance.productKeyName,
      'productVarKeyName': instance.productVarKeyName,
    };

_$ProductKeyNameImpl _$$ProductKeyNameImplFromJson(Map<String, dynamic> json) =>
    _$ProductKeyNameImpl(
      prodKeyNameID: json['p_key_name_id'] as String?,
      prodKeyName: json['key_name'] as String?,
    );

Map<String, dynamic> _$$ProductKeyNameImplToJson(
        _$ProductKeyNameImpl instance) =>
    <String, dynamic>{
      'p_key_name_id': instance.prodKeyNameID,
      'key_name': instance.prodKeyName,
    };

_$ProductVarKeyNameImpl _$$ProductVarKeyNameImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductVarKeyNameImpl(
      prodVarKeyNameID: json['pv_key_name_id'] as String?,
      prodVarKeyName: json['key_name'] as String?,
    );

Map<String, dynamic> _$$ProductVarKeyNameImplToJson(
        _$ProductVarKeyNameImpl instance) =>
    <String, dynamic>{
      'pv_key_name_id': instance.prodVarKeyNameID,
      'key_name': instance.prodVarKeyName,
    };

_$ProductKeyValueImpl _$$ProductKeyValueImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductKeyValueImpl(
      prodKeyNameID: json['p_key_name_id'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$ProductKeyValueImplToJson(
        _$ProductKeyValueImpl instance) =>
    <String, dynamic>{
      'p_key_name_id': instance.prodKeyNameID,
      'value': instance.value,
    };

_$ProductPromoTagImpl _$$ProductPromoTagImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductPromoTagImpl(
      promoTagID: json['promo_tag_id'] as String?,
      tagValue: json['tag_values'] as String?,
    );

Map<String, dynamic> _$$ProductPromoTagImplToJson(
        _$ProductPromoTagImpl instance) =>
    <String, dynamic>{
      'promo_tag_id': instance.promoTagID,
      'tag_values': instance.tagValue,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prdct_client_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserVerificationStatusImpl _$$UserVerificationStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$UserVerificationStatusImpl(
      roleType: json['role_type'] as String?,
      isPendingVerification: json['pending_ver'] as bool?,
      isVerified: json['is_verified'] as bool?,
      remarks: json['remarks'] as String?,
      modificationLevel: json['modif_lvl'] as String?,
    );

Map<String, dynamic> _$$UserVerificationStatusImplToJson(
        _$UserVerificationStatusImpl instance) =>
    <String, dynamic>{
      'role_type': instance.roleType,
      'pending_ver': instance.isPendingVerification,
      'is_verified': instance.isVerified,
      'remarks': instance.remarks,
      'modif_lvl': instance.modificationLevel,
    };

_$ProductClientDashboardDataImpl _$$ProductClientDashboardDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductClientDashboardDataImpl(
      productData: _productClientDbFromJson(json['json_data'] as List?),
    );

Map<String, dynamic> _$$ProductClientDashboardDataImplToJson(
        _$ProductClientDashboardDataImpl instance) =>
    <String, dynamic>{
      'json_data': _productClientDbToJson(instance.productData),
    };

_$ProductDashboardDataImpl _$$ProductDashboardDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDashboardDataImpl(
      prodId: json['prod_id'] as String?,
      prodName: json['prod_name'] as String?,
      origPrice: (json['orig_price'] as num?)?.toDouble(),
      discPrice: (json['disc_price'] as num?)?.toDouble(),
      disPerc: json['dis_perc'] as String?,
      prodPromoTag: _prodPromoTagFromJson(json['nested_p_tag_key'] as List?),
      prodImg: _imageDataFromJson(json['nested_p_img_key'] as List?),
    );

Map<String, dynamic> _$$ProductDashboardDataImplToJson(
        _$ProductDashboardDataImpl instance) =>
    <String, dynamic>{
      'prod_id': instance.prodId,
      'prod_name': instance.prodName,
      'orig_price': instance.origPrice,
      'disc_price': instance.discPrice,
      'dis_perc': instance.disPerc,
      'nested_p_tag_key': _prodPromoTagToJson(instance.prodPromoTag),
      'nested_p_img_key': _imageDataToJson(instance.prodImg),
    };

_$ProductClientPreviewDataImpl _$$ProductClientPreviewDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductClientPreviewDataImpl(
      productData: _prodClientPVFromJson(json['productData'] as List?),
    );

Map<String, dynamic> _$$ProductClientPreviewDataImplToJson(
        _$ProductClientPreviewDataImpl instance) =>
    <String, dynamic>{
      'productData': _prodClientPVToJson(instance.productData),
    };

_$ProductClientPreviewImgDataImpl _$$ProductClientPreviewImgDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductClientPreviewImgDataImpl(
      prodImg: _imageDatawSubFromJson(json['nested_pv_img_key'] as List?),
    );

Map<String, dynamic> _$$ProductClientPreviewImgDataImplToJson(
        _$ProductClientPreviewImgDataImpl instance) =>
    <String, dynamic>{
      'nested_pv_img_key': _imageDatawSubToJson(instance.prodImg),
    };

_$ProductClientPreviewFullDescDataImpl
    _$$ProductClientPreviewFullDescDataImplFromJson(
            Map<String, dynamic> json) =>
        _$ProductClientPreviewFullDescDataImpl(
          prodDescription: json['desc_data'] as String?,
        );

Map<String, dynamic> _$$ProductClientPreviewFullDescDataImplToJson(
        _$ProductClientPreviewFullDescDataImpl instance) =>
    <String, dynamic>{
      'desc_data': _prodDescToJson(instance.prodDescription),
    };

_$ProductPreviewDataImpl _$$ProductPreviewDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductPreviewDataImpl(
      prodVarData: (json['nested_prod_var'] as List<dynamic>?)
          ?.map((e) =>
              ProductVariantGetterData.fromJson(e as Map<String, dynamic>))
          .toList(),
      prodMainPropPD: _prodMainPropFromJson(json['nested_prod_key'] as List?),
      prodPromoTag: _prodPromoTagFromJson(json['nested_p_tag_key'] as List?),
      prodKeyVal: _prodKeyValFromJson(json['nested_specs_key'] as List?),
    );

Map<String, dynamic> _$$ProductPreviewDataImplToJson(
        _$ProductPreviewDataImpl instance) =>
    <String, dynamic>{
      'nested_prod_var': instance.prodVarData,
      'nested_prod_key': _prodMainPropToJson(instance.prodMainPropPD),
      'nested_p_tag_key': _prodPromoTagToJson(instance.prodPromoTag),
      'nested_specs_key': _prodKeyValToJson(instance.prodKeyVal),
    };

_$BadgeDataImpl _$$BadgeDataImplFromJson(Map<String, dynamic> json) =>
    _$BadgeDataImpl(
      badgeData: (json['badgeData'] as List<dynamic>?)
          ?.map((e) => BadgeCounts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BadgeDataImplToJson(_$BadgeDataImpl instance) =>
    <String, dynamic>{
      'badgeData': instance.badgeData,
    };

_$BadgeCountsImpl _$$BadgeCountsImplFromJson(Map<String, dynamic> json) =>
    _$BadgeCountsImpl(
      cartBdgeCnt: json['cart_badge_cnt'] as String?,
      mssgBdgeCnt: json['mssg_badge_cnt'] as String?,
    );

Map<String, dynamic> _$$BadgeCountsImplToJson(_$BadgeCountsImpl instance) =>
    <String, dynamic>{
      'cart_badge_cnt': instance.cartBdgeCnt,
      'mssg_badge_cnt': instance.mssgBdgeCnt,
    };

_$ProductVariantGetterDataImpl _$$ProductVariantGetterDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductVariantGetterDataImpl(
      prodVarId: json['prod_var_id'] as String?,
      prodVarCount: (json['variant_cnt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProductVariantGetterDataImplToJson(
        _$ProductVariantGetterDataImpl instance) =>
    <String, dynamic>{
      'prod_var_id': instance.prodVarId,
      'variant_cnt': instance.prodVarCount,
    };

_$ProductMainPropertiesPreviewDataImpl
    _$$ProductMainPropertiesPreviewDataImplFromJson(
            Map<String, dynamic> json) =>
        _$ProductMainPropertiesPreviewDataImpl(
          prodId: json['prod_id'] as String?,
          prodName: json['prod_name'] as String?,
          origPrice: (json['orig_price'] as num?)?.toDouble(),
          discPrice: (json['disc_price'] as num?)?.toDouble(),
          disPerc: json['dis_perc'] as String?,
          stock: (json['stock'] as num?)?.toInt(),
          availability: json['availability'] as bool?,
        );

Map<String, dynamic> _$$ProductMainPropertiesPreviewDataImplToJson(
        _$ProductMainPropertiesPreviewDataImpl instance) =>
    <String, dynamic>{
      'prod_id': instance.prodId,
      'prod_name': instance.prodName,
      'orig_price': instance.origPrice,
      'disc_price': instance.discPrice,
      'dis_perc': instance.disPerc,
      'stock': instance.stock,
      'availability': instance.availability,
    };

_$ProductVariantSpecsImpl _$$ProductVariantSpecsImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductVariantSpecsImpl(
      prodVarSpecOptData: (json['prodVarSpecOptData'] as List<dynamic>?)
          ?.map((e) => ProductVarPreviewClientKeyValue.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductVariantSpecsImplToJson(
        _$ProductVariantSpecsImpl instance) =>
    <String, dynamic>{
      'prodVarSpecOptData': instance.prodVarSpecOptData,
    };

_$ProductVariantPreviewImpl _$$ProductVariantPreviewImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductVariantPreviewImpl(
      prodVarPreviewData:
          _prodVarPreviewFromJson(json['prodVarPreviewData'] as List?),
    );

Map<String, dynamic> _$$ProductVariantPreviewImplToJson(
        _$ProductVariantPreviewImpl instance) =>
    <String, dynamic>{
      'prodVarPreviewData': _prodVarPreviewToJson(instance.prodVarPreviewData),
    };

_$ProductVariantPreviewImgDataImpl _$$ProductVariantPreviewImgDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductVariantPreviewImgDataImpl(
      prodImg: _imageProdVarDataFromJson(json['nested_pv_img_key'] as List?),
    );

Map<String, dynamic> _$$ProductVariantPreviewImgDataImplToJson(
        _$ProductVariantPreviewImgDataImpl instance) =>
    <String, dynamic>{
      'nested_pv_img_key': _imageProdVarDataToJson(instance.prodImg),
    };

_$ProductVariantPreviewDataImpl _$$ProductVariantPreviewDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductVariantPreviewDataImpl(
      prodVarId: json['prod_var_id'] as String?,
      origPrice: (json['orig_price'] as num?)?.toDouble(),
      discPrice: (json['disc_price'] as num?)?.toDouble(),
      disPerc: json['dis_perc'] as String?,
      stock: (json['stock'] as num?)?.toInt(),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$ProductVariantPreviewDataImplToJson(
        _$ProductVariantPreviewDataImpl instance) =>
    <String, dynamic>{
      'prod_var_id': instance.prodVarId,
      'orig_price': instance.origPrice,
      'disc_price': instance.discPrice,
      'dis_perc': instance.disPerc,
      'stock': instance.stock,
      'value': instance.value,
    };

_$ProductClientKeyValueImpl _$$ProductClientKeyValueImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductClientKeyValueImpl(
      prodKeyNameID: json['p_key_name_id'] as String?,
      prodKeyName: json['key_name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$ProductClientKeyValueImplToJson(
        _$ProductClientKeyValueImpl instance) =>
    <String, dynamic>{
      'p_key_name_id': instance.prodKeyNameID,
      'key_name': instance.prodKeyName,
      'value': instance.value,
    };

_$ProductVarClientKeyValueImpl _$$ProductVarClientKeyValueImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductVarClientKeyValueImpl(
      prodVarID: json['prod_var_id'] as String?,
      prodVKeyName: json['key_name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$ProductVarClientKeyValueImplToJson(
        _$ProductVarClientKeyValueImpl instance) =>
    <String, dynamic>{
      'prod_var_id': instance.prodVarID,
      'key_name': instance.prodVKeyName,
      'value': instance.value,
    };

_$ProductVarPreviewClientKeyValueImpl
    _$$ProductVarPreviewClientKeyValueImplFromJson(Map<String, dynamic> json) =>
        _$ProductVarPreviewClientKeyValueImpl(
          prodVarID: json['prod_var_id'] as String?,
          prodVKeyName: json['key_name'] as String?,
          value: json['value'] as String?,
          availability: json['availability'] as bool?,
        );

Map<String, dynamic> _$$ProductVarPreviewClientKeyValueImplToJson(
        _$ProductVarPreviewClientKeyValueImpl instance) =>
    <String, dynamic>{
      'prod_var_id': instance.prodVarID,
      'key_name': instance.prodVKeyName,
      'value': instance.value,
      'availability': instance.availability,
    };

_$CartListDataImpl _$$CartListDataImplFromJson(Map<String, dynamic> json) =>
    _$CartListDataImpl(
      cartPropsData: (json['cartPropsData'] as List<dynamic>?)
          ?.map((e) => CartPropertiesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CartListDataImplToJson(_$CartListDataImpl instance) =>
    <String, dynamic>{
      'cartPropsData': instance.cartPropsData,
    };

_$CartPropertiesDataImpl _$$CartPropertiesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CartPropertiesDataImpl(
      cartID: json['cart_id'] as String?,
      imgData: _fromBase64(json['nested_img'] as String?),
      cartProdPropData: (json['nested_prod'] as List<dynamic>?)
          ?.map(
              (e) => CartProdPropertiesData.fromJson(e as Map<String, dynamic>))
          .toList(),
      isSelected: json['is_selected'] as bool?,
      quantity: (json['quantity'] as num?)?.toInt(),
      availability: json['nested_availability'] as bool?,
      availableQty: (json['nested_available_qty'] as num?)?.toInt(),
      prodVarSpecOptData:
          _prodVarKeyValFromJson(json['nested_pv_specs'] as List?),
    );

Map<String, dynamic> _$$CartPropertiesDataImplToJson(
        _$CartPropertiesDataImpl instance) =>
    <String, dynamic>{
      'cart_id': instance.cartID,
      'nested_img': _toBase64(instance.imgData),
      'nested_prod': instance.cartProdPropData,
      'is_selected': instance.isSelected,
      'quantity': instance.quantity,
      'nested_availability': instance.availability,
      'nested_available_qty': instance.availableQty,
      'nested_pv_specs': _prodVarKeyValToJson(instance.prodVarSpecOptData),
    };

_$CartProdPropertiesDataImpl _$$CartProdPropertiesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CartProdPropertiesDataImpl(
      prodID: json['prod_id'] as String?,
      prodName: json['prod_name'] as String?,
      discPrice: (json['disc_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CartProdPropertiesDataImplToJson(
        _$CartProdPropertiesDataImpl instance) =>
    <String, dynamic>{
      'prod_id': instance.prodID,
      'prod_name': instance.prodName,
      'disc_price': instance.discPrice,
    };

_$CartBottomPropDataImpl _$$CartBottomPropDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CartBottomPropDataImpl(
      isAllSelected: json['is_all_seleted'] as bool?,
      subTotal: (json['subt_price'] as num?)?.toDouble(),
      tdiscPrice: (json['t_disc'] as num?)?.toDouble(),
      tQuantity: (json['t_qty'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CartBottomPropDataImplToJson(
        _$CartBottomPropDataImpl instance) =>
    <String, dynamic>{
      'is_all_seleted': instance.isAllSelected,
      'subt_price': instance.subTotal,
      't_disc': instance.tdiscPrice,
      't_qty': instance.tQuantity,
    };

_$CheckoutProductImpl _$$CheckoutProductImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckoutProductImpl(
      checkoutProductData: (json['checkoutProductData'] as List<dynamic>?)
          ?.map((e) => CheckoutProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CheckoutProductImplToJson(
        _$CheckoutProductImpl instance) =>
    <String, dynamic>{
      'checkoutProductData': instance.checkoutProductData,
    };

_$CheckoutProductDataImpl _$$CheckoutProductDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckoutProductDataImpl(
      batchID: json['batch_id'] as String?,
      imgData: _fromBase64(json['img_data'] as String?),
      prodName: json['prod_name'] as String?,
      variant: json['value'] as String?,
      discPrice: (json['disc_price'] as num?)?.toDouble(),
      quantity: (json['quantity'] as num?)?.toInt(),
      stock: (json['stock'] as num?)?.toInt(),
      tagValue: json['tag_values'] as String?,
    );

Map<String, dynamic> _$$CheckoutProductDataImplToJson(
        _$CheckoutProductDataImpl instance) =>
    <String, dynamic>{
      'batch_id': instance.batchID,
      'img_data': _toBase64(instance.imgData),
      'prod_name': instance.prodName,
      'value': instance.variant,
      'disc_price': instance.discPrice,
      'quantity': instance.quantity,
      'stock': instance.stock,
      'tag_values': instance.tagValue,
    };

_$CheckoutProductPricesDataImpl _$$CheckoutProductPricesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckoutProductPricesDataImpl(
      merchSubTotal: (json['merch_subt'] as num?)?.toDouble(),
      voucher: (json['voucher'] as num?)?.toDouble(),
      shippingFeeSubTotal: (json['ship_f_subt'] as num?)?.toDouble(),
      shippingFeeDiscSubTotal: (json['ship_f_disc_subt'] as num?)?.toDouble(),
      total: (json['total'] as num?)?.toDouble(),
      totalDisc: (json['total_disc'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CheckoutProductPricesDataImplToJson(
        _$CheckoutProductPricesDataImpl instance) =>
    <String, dynamic>{
      'merch_subt': instance.merchSubTotal,
      'voucher': instance.voucher,
      'ship_f_subt': instance.shippingFeeSubTotal,
      'ship_f_disc_subt': instance.shippingFeeDiscSubTotal,
      'total': instance.total,
      'total_disc': instance.totalDisc,
    };

_$UserShippingAddressImpl _$$UserShippingAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$UserShippingAddressImpl(
      userShippingData: (json['userShippingData'] as List<dynamic>?)
          ?.map((e) =>
              UserShippingAddressData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserShippingAddressImplToJson(
        _$UserShippingAddressImpl instance) =>
    <String, dynamic>{
      'userShippingData': instance.userShippingData,
    };

_$UserShippingAddressDataSingleImpl
    _$$UserShippingAddressDataSingleImplFromJson(Map<String, dynamic> json) =>
        _$UserShippingAddressDataSingleImpl(
          shippingAddressID: json['shipping_add_id'] as String?,
          recipientName: json['recipients_name'] as String?,
          mobileNo: json['mobile_no'] as String?,
          region: json['region'] as String?,
          city: json['city'] as String?,
          district: json['district'] as String?,
          stBldg: json['st_bldg'] as String?,
          unitFloor: json['unit_floor'] as String?,
          addressCategory: json['address_category'] as String?,
          isDefault: json['is_default'] as bool?,
          isSelected: json['is_selected'] as bool?,
        );

Map<String, dynamic> _$$UserShippingAddressDataSingleImplToJson(
        _$UserShippingAddressDataSingleImpl instance) =>
    <String, dynamic>{
      'shipping_add_id': instance.shippingAddressID,
      'recipients_name': instance.recipientName,
      'mobile_no': instance.mobileNo,
      'region': instance.region,
      'city': instance.city,
      'district': instance.district,
      'st_bldg': instance.stBldg,
      'unit_floor': instance.unitFloor,
      'address_category': instance.addressCategory,
      'is_default': instance.isDefault,
      'is_selected': instance.isSelected,
    };

_$UserShippingAddressDataImpl _$$UserShippingAddressDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserShippingAddressDataImpl(
      shippingAddressID: json['shipping_add_id'] as String?,
      recipientName: json['recipients_name'] as String?,
      mobileNo: json['mobile_no'] as String?,
      region: json['region'] as String?,
      city: json['city'] as String?,
      district: json['district'] as String?,
      stBldg: json['st_bldg'] as String?,
      unitFloor: json['unit_floor'] as String?,
      addressCategory: json['address_category'] as String?,
      isDefault: json['is_default'] as bool?,
      isSelected: json['is_selected'] as bool?,
    );

Map<String, dynamic> _$$UserShippingAddressDataImplToJson(
        _$UserShippingAddressDataImpl instance) =>
    <String, dynamic>{
      'shipping_add_id': instance.shippingAddressID,
      'recipients_name': instance.recipientName,
      'mobile_no': instance.mobileNo,
      'region': instance.region,
      'city': instance.city,
      'district': instance.district,
      'st_bldg': instance.stBldg,
      'unit_floor': instance.unitFloor,
      'address_category': instance.addressCategory,
      'is_default': instance.isDefault,
      'is_selected': instance.isSelected,
    };

_$DisplayNameMyOrdersBadgeCountsImpl
    _$$DisplayNameMyOrdersBadgeCountsImplFromJson(Map<String, dynamic> json) =>
        _$DisplayNameMyOrdersBadgeCountsImpl(
          displayName: json['disp_name'] as String?,
          toPayBC: json['tp_bc'] as String?,
          toShipBC: json['ts_bc'] as String?,
          toReceiveBC: json['tr_bc'] as String?,
        );

Map<String, dynamic> _$$DisplayNameMyOrdersBadgeCountsImplToJson(
        _$DisplayNameMyOrdersBadgeCountsImpl instance) =>
    <String, dynamic>{
      'disp_name': instance.displayName,
      'tp_bc': instance.toPayBC,
      'ts_bc': instance.toShipBC,
      'tr_bc': instance.toReceiveBC,
    };

_$MyOrdersToPayListDataImpl _$$MyOrdersToPayListDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MyOrdersToPayListDataImpl(
      myOrdersData: (json['myOrdersData'] as List<dynamic>?)
          ?.map((e) => MyOrdersToPayData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyOrdersToPayListDataImplToJson(
        _$MyOrdersToPayListDataImpl instance) =>
    <String, dynamic>{
      'myOrdersData': instance.myOrdersData,
    };

_$MyOrdersToPayDataImpl _$$MyOrdersToPayDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MyOrdersToPayDataImpl(
      batchID: json['batch_id'] as String?,
      description: json['list_description'] as String?,
      myOrdersProdsData: (json['nested_data'] as List<dynamic>?)
          ?.map((e) =>
              MyOrdersToPayProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
      amountToPay: (json['amount_to_pay'] as num?)?.toDouble(),
      totalQty: (json['t_qty'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MyOrdersToPayDataImplToJson(
        _$MyOrdersToPayDataImpl instance) =>
    <String, dynamic>{
      'batch_id': instance.batchID,
      'list_description': instance.description,
      'nested_data': instance.myOrdersProdsData,
      'amount_to_pay': instance.amountToPay,
      't_qty': instance.totalQty,
    };

_$MyOrdersToPayProductDataImpl _$$MyOrdersToPayProductDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MyOrdersToPayProductDataImpl(
      imgData: _fromBase64(json['img_data'] as String?),
      prodName: json['prod_name'] as String?,
      keyName: json['key_name'] as String?,
      knValue: json['value'] as String?,
      discPrice: (json['disc_price'] as num?)?.toDouble(),
      qty: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MyOrdersToPayProductDataImplToJson(
        _$MyOrdersToPayProductDataImpl instance) =>
    <String, dynamic>{
      'img_data': _toBase64(instance.imgData),
      'prod_name': instance.prodName,
      'key_name': instance.keyName,
      'value': instance.knValue,
      'disc_price': instance.discPrice,
      'quantity': instance.qty,
    };

_$ProductDeliveryDetailsDataImpl _$$ProductDeliveryDetailsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDeliveryDetailsDataImpl(
      batchID: json['batch_id'] as String?,
      primaryStatus: json['primary_status'] as String?,
      description: json['description'] as String?,
      recipientsName: json['recipients_name'] as String?,
      unitFloor: json['unit_floor'] as String?,
      stBldg: json['st_bldg'] as String?,
      district: json['district'] as String?,
      city: json['city'] as String?,
      region: json['region'] as String?,
      addressCategory: json['address_category'] as String?,
      mobileNo: json['mobile_no'] as String?,
      imgData: _fromBase64(json['img_data'] as String?),
    );

Map<String, dynamic> _$$ProductDeliveryDetailsDataImplToJson(
        _$ProductDeliveryDetailsDataImpl instance) =>
    <String, dynamic>{
      'batch_id': instance.batchID,
      'primary_status': instance.primaryStatus,
      'description': instance.description,
      'recipients_name': instance.recipientsName,
      'unit_floor': instance.unitFloor,
      'st_bldg': instance.stBldg,
      'district': instance.district,
      'city': instance.city,
      'region': instance.region,
      'address_category': instance.addressCategory,
      'mobile_no': instance.mobileNo,
      'img_data': _toBase64(instance.imgData),
    };

_$ProductListDeliveryProgressDetailsDataImpl
    _$$ProductListDeliveryProgressDetailsDataImplFromJson(
            Map<String, dynamic> json) =>
        _$ProductListDeliveryProgressDetailsDataImpl(
          delProgressList: (json['delProgressList'] as List<dynamic>?)
              ?.map((e) => ProductDeliveryProgressDetailsData.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$ProductListDeliveryProgressDetailsDataImplToJson(
        _$ProductListDeliveryProgressDetailsDataImpl instance) =>
    <String, dynamic>{
      'delProgressList': instance.delProgressList,
    };

_$ProductDeliveryProgressDetailsDataImpl
    _$$ProductDeliveryProgressDetailsDataImplFromJson(
            Map<String, dynamic> json) =>
        _$ProductDeliveryProgressDetailsDataImpl(
          progressHeader: json['com_usd_wrds'] as String?,
          subProgress: (json['sub_progress'] as List<dynamic>?)
              ?.map((e) => ProductSubDeliveryProgressDetailsData.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$ProductDeliveryProgressDetailsDataImplToJson(
        _$ProductDeliveryProgressDetailsDataImpl instance) =>
    <String, dynamic>{
      'com_usd_wrds': instance.progressHeader,
      'sub_progress': instance.subProgress,
    };

_$ProductSubDeliveryProgressDetailsDataImpl
    _$$ProductSubDeliveryProgressDetailsDataImplFromJson(
            Map<String, dynamic> json) =>
        _$ProductSubDeliveryProgressDetailsDataImpl(
          bodyDescription: json['body_description'] as String?,
          dtStamp: json['dt_stamp'] as String?,
        );

Map<String, dynamic> _$$ProductSubDeliveryProgressDetailsDataImplToJson(
        _$ProductSubDeliveryProgressDetailsDataImpl instance) =>
    <String, dynamic>{
      'body_description': instance.bodyDescription,
      'dt_stamp': instance.dtStamp,
    };

_$OrderDetailsDataImpl _$$OrderDetailsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDetailsDataImpl(
      batchID: json['batch_id'] as String?,
      primaryStatus: json['primary_status'] as String?,
      description: json['spc_description'] as String?,
      myOrdersProdsData: (json['nested_data'] as List<dynamic>?)
          ?.map((e) =>
              ProductOrderDetailsData.fromJson(e as Map<String, dynamic>))
          .toList(),
      amountToPay: (json['amount_to_pay'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$OrderDetailsDataImplToJson(
        _$OrderDetailsDataImpl instance) =>
    <String, dynamic>{
      'batch_id': instance.batchID,
      'primary_status': instance.primaryStatus,
      'spc_description': instance.description,
      'nested_data': instance.myOrdersProdsData,
      'amount_to_pay': instance.amountToPay,
    };

_$ProductOrderDetailsDataImpl _$$ProductOrderDetailsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductOrderDetailsDataImpl(
      imgData: _fromBase64(json['img_data'] as String?),
      prodName: json['prod_name'] as String?,
      keyName: json['key_name'] as String?,
      knValue: json['value'] as String?,
      discPrice: (json['disc_price'] as num?)?.toDouble(),
      qty: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProductOrderDetailsDataImplToJson(
        _$ProductOrderDetailsDataImpl instance) =>
    <String, dynamic>{
      'img_data': _toBase64(instance.imgData),
      'prod_name': instance.prodName,
      'key_name': instance.keyName,
      'value': instance.knValue,
      'disc_price': instance.discPrice,
      'quantity': instance.qty,
    };

_$OrderDetailsSummaryDataImpl _$$OrderDetailsSummaryDataImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDetailsSummaryDataImpl(
      totalQty: (json['t_qty'] as num?)?.toInt(),
      subTotal: (json['subtotal'] as num?)?.toDouble(),
      shippingFeeSubTotal: (json['ship_f_subt'] as num?)?.toDouble(),
      shippingFeeDisc: (json['ship_f_disc_subt'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      coins: (json['coins'] as num?)?.toDouble(),
      glamGearBal: (json['glamgear_bal'] as num?)?.toDouble(),
      voucher: (json['voucher'] as num?)?.toDouble(),
      amountToPay: (json['amount_to_pay'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$OrderDetailsSummaryDataImplToJson(
        _$OrderDetailsSummaryDataImpl instance) =>
    <String, dynamic>{
      't_qty': instance.totalQty,
      'subtotal': instance.subTotal,
      'ship_f_subt': instance.shippingFeeSubTotal,
      'ship_f_disc_subt': instance.shippingFeeDisc,
      'vat': instance.vat,
      'coins': instance.coins,
      'glamgear_bal': instance.glamGearBal,
      'voucher': instance.voucher,
      'amount_to_pay': instance.amountToPay,
    };

_$MyOrdersToShipListDataImpl _$$MyOrdersToShipListDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MyOrdersToShipListDataImpl(
      myOrdersData: (json['myOrdersData'] as List<dynamic>?)
          ?.map((e) => MyOrdersToShipData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyOrdersToShipListDataImplToJson(
        _$MyOrdersToShipListDataImpl instance) =>
    <String, dynamic>{
      'myOrdersData': instance.myOrdersData,
    };

_$MyOrdersToShipDataImpl _$$MyOrdersToShipDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MyOrdersToShipDataImpl(
      batchID: json['batch_id'] as String?,
      status: json['com_usd_wrds'] as String?,
      subStatus: json['body_description'] as String?,
      description: json['list_description'] as String?,
      myOrdersProdsData: (json['nested_data'] as List<dynamic>?)
          ?.map((e) =>
              MyOrdersToShipProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
      amountToPay: (json['amount_to_pay'] as num?)?.toDouble(),
      totalQty: (json['t_qty'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MyOrdersToShipDataImplToJson(
        _$MyOrdersToShipDataImpl instance) =>
    <String, dynamic>{
      'batch_id': instance.batchID,
      'com_usd_wrds': instance.status,
      'body_description': instance.subStatus,
      'list_description': instance.description,
      'nested_data': instance.myOrdersProdsData,
      'amount_to_pay': instance.amountToPay,
      't_qty': instance.totalQty,
    };

_$MyOrdersToShipProductDataImpl _$$MyOrdersToShipProductDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MyOrdersToShipProductDataImpl(
      imgData: _fromBase64(json['img_data'] as String?),
      prodName: json['prod_name'] as String?,
      keyName: json['key_name'] as String?,
      knValue: json['value'] as String?,
      discPrice: (json['disc_price'] as num?)?.toDouble(),
      qty: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MyOrdersToShipProductDataImplToJson(
        _$MyOrdersToShipProductDataImpl instance) =>
    <String, dynamic>{
      'img_data': _toBase64(instance.imgData),
      'prod_name': instance.prodName,
      'key_name': instance.keyName,
      'value': instance.knValue,
      'disc_price': instance.discPrice,
      'quantity': instance.qty,
    };

_$MyOrdersToReceiveListDataImpl _$$MyOrdersToReceiveListDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MyOrdersToReceiveListDataImpl(
      myOrdersData: (json['myOrdersData'] as List<dynamic>?)
          ?.map(
              (e) => MyOrdersToReceiveData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyOrdersToReceiveListDataImplToJson(
        _$MyOrdersToReceiveListDataImpl instance) =>
    <String, dynamic>{
      'myOrdersData': instance.myOrdersData,
    };

_$MyOrdersToReceiveDataImpl _$$MyOrdersToReceiveDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MyOrdersToReceiveDataImpl(
      batchID: json['batch_id'] as String?,
      status: json['com_usd_wrds'] as String?,
      description: json['list_description'] as String?,
      myOrdersProdsData: (json['nested_data'] as List<dynamic>?)
          ?.map((e) =>
              MyOrdersToReceiveProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
      amountToPay: (json['amount_to_pay'] as num?)?.toDouble(),
      totalQty: (json['t_qty'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MyOrdersToReceiveDataImplToJson(
        _$MyOrdersToReceiveDataImpl instance) =>
    <String, dynamic>{
      'batch_id': instance.batchID,
      'com_usd_wrds': instance.status,
      'list_description': instance.description,
      'nested_data': instance.myOrdersProdsData,
      'amount_to_pay': instance.amountToPay,
      't_qty': instance.totalQty,
    };

_$MyOrdersToReceiveProductDataImpl _$$MyOrdersToReceiveProductDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MyOrdersToReceiveProductDataImpl(
      imgData: _fromBase64(json['img_data'] as String?),
      prodName: json['prod_name'] as String?,
      keyName: json['key_name'] as String?,
      knValue: json['value'] as String?,
      discPrice: (json['disc_price'] as num?)?.toDouble(),
      qty: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MyOrdersToReceiveProductDataImplToJson(
        _$MyOrdersToReceiveProductDataImpl instance) =>
    <String, dynamic>{
      'img_data': _toBase64(instance.imgData),
      'prod_name': instance.prodName,
      'key_name': instance.keyName,
      'value': instance.knValue,
      'disc_price': instance.discPrice,
      'quantity': instance.qty,
    };

_$MyOrdersAllPurchasedListDataImpl _$$MyOrdersAllPurchasedListDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MyOrdersAllPurchasedListDataImpl(
      myOrdersData: (json['myOrdersData'] as List<dynamic>?)
          ?.map((e) =>
              MyOrdersAllPurchasedData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyOrdersAllPurchasedListDataImplToJson(
        _$MyOrdersAllPurchasedListDataImpl instance) =>
    <String, dynamic>{
      'myOrdersData': instance.myOrdersData,
    };

_$MyOrdersAllPurchasedDataImpl _$$MyOrdersAllPurchasedDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MyOrdersAllPurchasedDataImpl(
      batchID: json['batch_id'] as String?,
      status: json['com_usd_wrds'] as String?,
      description: json['list_description'] as String?,
      myOrdersProdsData: (json['nested_data'] as List<dynamic>?)
          ?.map((e) => MyOrdersAllPurchasedProductData.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      amountToPay: (json['amount_to_pay'] as num?)?.toDouble(),
      totalQty: (json['t_qty'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MyOrdersAllPurchasedDataImplToJson(
        _$MyOrdersAllPurchasedDataImpl instance) =>
    <String, dynamic>{
      'batch_id': instance.batchID,
      'com_usd_wrds': instance.status,
      'list_description': instance.description,
      'nested_data': instance.myOrdersProdsData,
      'amount_to_pay': instance.amountToPay,
      't_qty': instance.totalQty,
    };

_$MyOrdersAllPurchasedProductDataImpl
    _$$MyOrdersAllPurchasedProductDataImplFromJson(Map<String, dynamic> json) =>
        _$MyOrdersAllPurchasedProductDataImpl(
          imgData: _fromBase64(json['img_data'] as String?),
          prodName: json['prod_name'] as String?,
          keyName: json['key_name'] as String?,
          knValue: json['value'] as String?,
          discPrice: (json['disc_price'] as num?)?.toDouble(),
          qty: (json['quantity'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$MyOrdersAllPurchasedProductDataImplToJson(
        _$MyOrdersAllPurchasedProductDataImpl instance) =>
    <String, dynamic>{
      'img_data': _toBase64(instance.imgData),
      'prod_name': instance.prodName,
      'key_name': instance.keyName,
      'value': instance.knValue,
      'disc_price': instance.discPrice,
      'quantity': instance.qty,
    };

_$MyOrdersReturnRefListDataImpl _$$MyOrdersReturnRefListDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MyOrdersReturnRefListDataImpl(
      myOrdersData: (json['myOrdersData'] as List<dynamic>?)
          ?.map(
              (e) => MyOrdersReturnRefData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyOrdersReturnRefListDataImplToJson(
        _$MyOrdersReturnRefListDataImpl instance) =>
    <String, dynamic>{
      'myOrdersData': instance.myOrdersData,
    };

_$MyOrdersReturnRefDataImpl _$$MyOrdersReturnRefDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MyOrdersReturnRefDataImpl(
      batchID: json['batch_id'] as String?,
      shippingStatus: json['shipping_status'] as String?,
      myOrdersProdsData: (json['nested_data'] as List<dynamic>?)
          ?.map((e) =>
              MyOrdersReturnRefProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
      amountToPay: (json['amount_to_pay'] as num?)?.toDouble(),
      totalQty: (json['t_qty'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MyOrdersReturnRefDataImplToJson(
        _$MyOrdersReturnRefDataImpl instance) =>
    <String, dynamic>{
      'batch_id': instance.batchID,
      'shipping_status': instance.shippingStatus,
      'nested_data': instance.myOrdersProdsData,
      'amount_to_pay': instance.amountToPay,
      't_qty': instance.totalQty,
    };

_$MyOrdersReturnRefProductDataImpl _$$MyOrdersReturnRefProductDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MyOrdersReturnRefProductDataImpl(
      imgData: _fromBase64(json['img_data'] as String?),
      prodName: json['prod_name'] as String?,
      keyName: json['key_name'] as String?,
      knValue: json['value'] as String?,
      discPrice: (json['disc_price'] as num?)?.toDouble(),
      qty: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MyOrdersReturnRefProductDataImplToJson(
        _$MyOrdersReturnRefProductDataImpl instance) =>
    <String, dynamic>{
      'img_data': _toBase64(instance.imgData),
      'prod_name': instance.prodName,
      'key_name': instance.keyName,
      'value': instance.knValue,
      'disc_price': instance.discPrice,
      'quantity': instance.qty,
    };

_$MyOrdersCancellationListDataImpl _$$MyOrdersCancellationListDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MyOrdersCancellationListDataImpl(
      myOrdersData: (json['myOrdersData'] as List<dynamic>?)
          ?.map((e) =>
              MyOrdersCancellationData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyOrdersCancellationListDataImplToJson(
        _$MyOrdersCancellationListDataImpl instance) =>
    <String, dynamic>{
      'myOrdersData': instance.myOrdersData,
    };

_$MyOrdersCancellationDataImpl _$$MyOrdersCancellationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MyOrdersCancellationDataImpl(
      batchID: json['batch_id'] as String?,
      description: json['list_description'] as String?,
      myOrdersProdsData: (json['nested_data'] as List<dynamic>?)
          ?.map((e) => MyOrdersCancellationProductData.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      amountToPay: (json['amount_to_pay'] as num?)?.toDouble(),
      totalQty: (json['t_qty'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MyOrdersCancellationDataImplToJson(
        _$MyOrdersCancellationDataImpl instance) =>
    <String, dynamic>{
      'batch_id': instance.batchID,
      'list_description': instance.description,
      'nested_data': instance.myOrdersProdsData,
      'amount_to_pay': instance.amountToPay,
      't_qty': instance.totalQty,
    };

_$MyOrdersCancellationProductDataImpl
    _$$MyOrdersCancellationProductDataImplFromJson(Map<String, dynamic> json) =>
        _$MyOrdersCancellationProductDataImpl(
          imgData: _fromBase64(json['img_data'] as String?),
          prodName: json['prod_name'] as String?,
          keyName: json['key_name'] as String?,
          knValue: json['value'] as String?,
          discPrice: (json['disc_price'] as num?)?.toDouble(),
          qty: (json['quantity'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$MyOrdersCancellationProductDataImplToJson(
        _$MyOrdersCancellationProductDataImpl instance) =>
    <String, dynamic>{
      'img_data': _toBase64(instance.imgData),
      'prod_name': instance.prodName,
      'key_name': instance.keyName,
      'value': instance.knValue,
      'disc_price': instance.discPrice,
      'quantity': instance.qty,
    };

_$CancelDetailsDataImpl _$$CancelDetailsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CancelDetailsDataImpl(
      batchID: json['batch_id'] as String?,
      primaryStatus: json['primary_status'] as String?,
      description: json['spc_description'] as String?,
      noteDescription: json['note_description'] as String?,
      myOrdersProdsData: (json['nested_data'] as List<dynamic>?)
          ?.map((e) =>
              CancelDetailsProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
      isRefundable: json['is_refundable'] as bool?,
      refundableAmt: (json['refundable'] as num?)?.toDouble(),
      currentStep: (json['current_step'] as num?)?.toInt(),
      cancellationDate: json['cancellation_d'] as String?,
    );

Map<String, dynamic> _$$CancelDetailsDataImplToJson(
        _$CancelDetailsDataImpl instance) =>
    <String, dynamic>{
      'batch_id': instance.batchID,
      'primary_status': instance.primaryStatus,
      'spc_description': instance.description,
      'note_description': instance.noteDescription,
      'nested_data': instance.myOrdersProdsData,
      'is_refundable': instance.isRefundable,
      'refundable': instance.refundableAmt,
      'current_step': instance.currentStep,
      'cancellation_d': instance.cancellationDate,
    };

_$CancelDetailsProductDataImpl _$$CancelDetailsProductDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CancelDetailsProductDataImpl(
      imgData: _fromBase64(json['img_data'] as String?),
      prodName: json['prod_name'] as String?,
      keyName: json['key_name'] as String?,
      knValue: json['value'] as String?,
      discPrice: (json['disc_price'] as num?)?.toDouble(),
      qty: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CancelDetailsProductDataImplToJson(
        _$CancelDetailsProductDataImpl instance) =>
    <String, dynamic>{
      'img_data': _toBase64(instance.imgData),
      'prod_name': instance.prodName,
      'key_name': instance.keyName,
      'value': instance.knValue,
      'disc_price': instance.discPrice,
      'quantity': instance.qty,
    };

_$SubjectForEditAddressDataImpl _$$SubjectForEditAddressDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SubjectForEditAddressDataImpl(
      shipAddID: json['shipping_add_id'] as String?,
      recipientName: json['recipients_name'] as String?,
      mobileNo: json['mobile_no'] as String?,
      regionIndex: (json['region_index'] as num?)?.toInt(),
      regionCode: json['region_code'] as String?,
      regionName: json['region_name'] as String?,
      cityIndex: (json['city_index'] as num?)?.toInt(),
      cityCode: json['city_code'] as String?,
      cityName: json['city_name'] as String?,
      districtIndex: (json['district_index'] as num?)?.toInt(),
      districtCode: json['district_code'] as String?,
      districtName: json['district_name'] as String?,
      stBldg: json['st_bldg'] as String?,
      unitFloor: json['unit_floor'] as String?,
      addressCategory: json['address_category'] as String?,
      isDefault: json['is_default'] as bool?,
    );

Map<String, dynamic> _$$SubjectForEditAddressDataImplToJson(
        _$SubjectForEditAddressDataImpl instance) =>
    <String, dynamic>{
      'shipping_add_id': instance.shipAddID,
      'recipients_name': instance.recipientName,
      'mobile_no': instance.mobileNo,
      'region_index': instance.regionIndex,
      'region_code': instance.regionCode,
      'region_name': instance.regionName,
      'city_index': instance.cityIndex,
      'city_code': instance.cityCode,
      'city_name': instance.cityName,
      'district_index': instance.districtIndex,
      'district_code': instance.districtCode,
      'district_name': instance.districtName,
      'st_bldg': instance.stBldg,
      'unit_floor': instance.unitFloor,
      'address_category': instance.addressCategory,
      'is_default': instance.isDefault,
    };

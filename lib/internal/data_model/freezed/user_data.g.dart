// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      userId: json['userId'] as String?,
      frontIdImg: _fileFromJson(json['frontIdImg'] as String?),
      frontIdImgSize: (json['frontIdImgSize'] as num?)?.toDouble(),
      backIdImg: _fileFromJson(json['backIdImg'] as String?),
      backIdImgSize: (json['backIdImgSize'] as num?)?.toDouble(),
      selfieImg: _fileFromJson(json['selfieImg'] as String?),
      selfieIdImgSize: (json['selfieIdImgSize'] as num?)?.toDouble(),
      givenName: json['givenName'] as String?,
      middleName: json['middleName'] as String?,
      familyName: json['familyName'] as String?,
      suffix: json['suffix'] as String?,
      gender: json['gender'] as String?,
      birthday: json['birthday'] as String?,
      nationality: json['nationality'] as String?,
      country: json['country'] as String?,
      province: json['province'] as String?,
      cityMun: json['cityMun'] as String?,
      brgy: json['brgy'] as String?,
      unitHBldgSt: json['unitHBldgSt'] as String?,
      villSub: json['villSub'] as String?,
      zipCode: json['zipCode'] as String?,
      sourceOfFund: json['sourceOfFund'] as String?,
      empStatus: json['empStatus'] as String?,
      employer: json['employer'] as String?,
      occupation: json['occupation'] as String?,
      mobileNo: json['mobileNo'] as String?,
      password: json['password'] as String?,
      functionKey: json['functionKey'] as String?,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'frontIdImg': _fileToJson(instance.frontIdImg),
      'frontIdImgSize': instance.frontIdImgSize,
      'backIdImg': _fileToJson(instance.backIdImg),
      'backIdImgSize': instance.backIdImgSize,
      'selfieImg': _fileToJson(instance.selfieImg),
      'selfieIdImgSize': instance.selfieIdImgSize,
      'givenName': instance.givenName,
      'middleName': instance.middleName,
      'familyName': instance.familyName,
      'suffix': instance.suffix,
      'gender': instance.gender,
      'birthday': instance.birthday,
      'nationality': instance.nationality,
      'country': instance.country,
      'province': instance.province,
      'cityMun': instance.cityMun,
      'brgy': instance.brgy,
      'unitHBldgSt': instance.unitHBldgSt,
      'villSub': instance.villSub,
      'zipCode': instance.zipCode,
      'sourceOfFund': instance.sourceOfFund,
      'empStatus': instance.empStatus,
      'employer': instance.employer,
      'occupation': instance.occupation,
      'mobileNo': instance.mobileNo,
      'password': instance.password,
      'functionKey': instance.functionKey,
    };

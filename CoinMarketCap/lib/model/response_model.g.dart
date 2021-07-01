// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseModel _$ResponseModelFromJson(Map<String, dynamic> json) {
  return ResponseModel(
    json['status'] == null
        ? null
        : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
    (json['data'] as List)
        ?.map((e) =>
            e == null ? null : DataModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ResponseModelToJson(ResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return DataModel(
    json['id'] as int,
    json['rank'] as int,
    json['name'] as String,
    json['symbol'] as String,
    json['slug'] as String,
    json['is_active'] as int,
    json['first_historical_data'] as String,
    json['last_historical_data'] as String,
    json['platform'] == null
        ? null
        : PlatformModel.fromJson(json['platform'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'id': instance.id,
      'rank': instance.rank,
      'name': instance.name,
      'symbol': instance.symbol,
      'slug': instance.slug,
      'is_active': instance.is_active,
      'first_historical_data': instance.first_historical_data,
      'last_historical_data': instance.last_historical_data,
      'platform': instance.platform,
    };

StatusModel _$StatusModelFromJson(Map<String, dynamic> json) {
  return StatusModel(
    json['timestamp'] as String,
    json['error_code'] as int,
    json['error_message'] as String,
    json['elapsed'] as int,
    json['credit_count'] as int,
  );
}

Map<String, dynamic> _$StatusModelToJson(StatusModel instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'error_code': instance.error_code,
      'error_message': instance.error_message,
      'elapsed': instance.elapsed,
      'credit_count': instance.credit_count,
    };

PlatformModel _$PlatformModelFromJson(Map<String, dynamic> json) {
  return PlatformModel(
    json['id'] as int,
    json['name'] as String,
    json['symbol'] as String,
    json['slug'] as String,
    json['token_address'] as String,
  );
}

Map<String, dynamic> _$PlatformModelToJson(PlatformModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'slug': instance.slug,
      'token_address': instance.token_address,
    };

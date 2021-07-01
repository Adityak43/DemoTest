import 'package:json_annotation/json_annotation.dart';

part 'response_model.g.dart';

@JsonSerializable()
class ResponseModel {
  StatusModel status;
  List<DataModel> data;

  ResponseModel(
    this.status,
    this.data,
  );

  @override
  String toString() {
    return 'ResponseModel{status: $status, data: $data}';
  }

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseModelToJson(this);
}

@JsonSerializable()
class DataModel {
  int id;
  int rank;
  String name;
  String symbol;
  String slug;
  int is_active;
  String first_historical_data;
  String last_historical_data;
  PlatformModel platform;

  DataModel(
    this.id,
    this.rank,
    this.name,
    this.symbol,
    this.slug,
    this.is_active,
    this.first_historical_data,
    this.last_historical_data,
    this.platform,
  );

  @override
  String toString() {
    return 'DataModel{id: $id, rank: $rank, name: $name, symbol: $symbol, slug: $slug, is_active: $is_active, first_historical_data: $first_historical_data, last_historical_data: $last_historical_data, platform: $platform}';
  }

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}

@JsonSerializable()
class StatusModel {
  String timestamp;
  int error_code;
  String error_message;
  int elapsed;
  int credit_count;

  StatusModel(
    this.timestamp,
    this.error_code,
    this.error_message,
    this.elapsed,
    this.credit_count,
  );

  factory StatusModel.fromJson(Map<String, dynamic> json) =>
      _$StatusModelFromJson(json);

  Map<String, dynamic> toJson() => _$StatusModelToJson(this);
}

@JsonSerializable()
class PlatformModel {
  int id;
  String name;
  String symbol;
  String slug;
  String token_address;

  PlatformModel(
    this.id,
    this.name,
    this.symbol,
    this.slug,
    this.token_address,
  );

  @override
  String toString() {
    return 'PlatformModel{id: $id, name: $name, symbol: $symbol, slug: $slug, token_address: $token_address}';
  }

  factory PlatformModel.fromJson(Map<String, dynamic> json) =>
      _$PlatformModelFromJson(json);

  Map<String, dynamic> toJson() => _$PlatformModelToJson(this);
}

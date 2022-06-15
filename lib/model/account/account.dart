import 'package:hodi/enums/enum_role.dart';
import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@JsonSerializable()
class Account {
  final AccountData data;
  final AccountSupport support;
  Account({required this.data, required this.support});

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  Map<String, dynamic> toJson() => _$AccountToJson(this);
}

@JsonSerializable()
class AccountData {
  final int id;
  final String email;
  final String first_name;
  final String last_name;
  final String avatar;
  AccountData(
      {required this.avatar,
      required this.email,
      required this.first_name,
      required this.id,
      required this.last_name});

  factory AccountData.fromJson(Map<String, dynamic> json) =>
      _$AccountDataFromJson(json);

  Map<String, dynamic> toJson() => _$AccountDataToJson(this);
}

@JsonSerializable()
class AccountSupport {
  final String url;
  final String text;
  AccountSupport({required this.text, required this.url});

  factory AccountSupport.fromJson(Map<String, dynamic> json) =>
      _$AccountSupportFromJson(json);

  Map<String, dynamic> toJson() => _$AccountSupportToJson(this);
}

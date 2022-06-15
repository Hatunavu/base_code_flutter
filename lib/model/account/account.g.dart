// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) => Account(
      data: AccountData.fromJson(json['data'] as Map<String, dynamic>),
      support: AccountSupport.fromJson(json['support'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'data': instance.data,
      'support': instance.support,
    };

AccountData _$AccountDataFromJson(Map<String, dynamic> json) => AccountData(
      avatar: json['avatar'] as String,
      email: json['email'] as String,
      first_name: json['first_name'] as String,
      id: json['id'] as int,
      last_name: json['last_name'] as String,
    );

Map<String, dynamic> _$AccountDataToJson(AccountData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'avatar': instance.avatar,
    };

AccountSupport _$AccountSupportFromJson(Map<String, dynamic> json) =>
    AccountSupport(
      text: json['text'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$AccountSupportToJson(AccountSupport instance) =>
    <String, dynamic>{
      'url': instance.url,
      'text': instance.text,
    };

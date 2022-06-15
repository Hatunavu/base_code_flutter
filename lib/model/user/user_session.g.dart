// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSession _$UserSessionFromJson(Map<String, dynamic> json) => UserSession(
      token: json['token'] as String,
      userId: json['userId'] as String,
      land: (json['land'] as num).toDouble(),
      user: json['user'] == null
          ? null
          : Account.fromJson(json['user'] as Map<String, dynamic>),
      status: json['status'] as int,
    );

Map<String, dynamic> _$UserSessionToJson(UserSession instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userId': instance.userId,
      'land': instance.land,
      'status': instance.status,
      'user': instance.user,
    };

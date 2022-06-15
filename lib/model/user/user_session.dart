import 'package:hodi/model/account/account.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_session.g.dart';

@JsonSerializable()
class UserSession {
  UserSession(
      {required this.token,
      required this.userId,
      required this.land,
      this.user,
      required this.status});
  final String token;
  final String userId;
  double land;
  final int status;
  final Account? user;

  factory UserSession.fromJson(Map<String, dynamic> json) =>
      _$UserSessionFromJson(json);
  Map<String, dynamic> toJson() => _$UserSessionToJson(this);
}

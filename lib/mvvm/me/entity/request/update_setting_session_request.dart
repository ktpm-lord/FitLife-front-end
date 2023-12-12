import 'package:json_annotation/json_annotation.dart';

part 'update_setting_session_request.g.dart';

@JsonSerializable()
class UpdateSettingSessionRequest {
  @JsonKey(name: 'startWithBoot')
  final bool startWithBoot;

  @JsonKey(name: 'randomMix')
  final bool randomMix;

  @JsonKey(name: 'timePerLesson')
  final int timePerLesson;

  @JsonKey(name: 'transferTime')
  final int transferTime;

  @JsonKey(name: 'calcTarget')
  final int calcTarget;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'numberRound')
  final int numberRound;

  @JsonKey(name: 'breakTime')
  final int breakTime;

  @JsonKey(name: 'level')
  final String level;

  UpdateSettingSessionRequest({
    required this.startWithBoot,
    required this.randomMix,
    required this.timePerLesson,
    required this.transferTime,
    required this.calcTarget,
    required this.description,
    required this.name,
    required this.numberRound,
    required this.breakTime,
    required this.level,
  });

  factory UpdateSettingSessionRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateSettingSessionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateSettingSessionRequestToJson(this);
}
  
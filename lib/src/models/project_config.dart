import 'dart:convert';

class ProjectConfig {
  const ProjectConfig({
    required this.accountId,
    required this.appSecret,
    required this.userSecret,
    required this.keySetId,
    required this.licenseKey,
    required this.projectId,
    required this.deviceId,
  });

  final String accountId;
  final String appSecret;
  final String userSecret;
  final String keySetId;
  final String licenseKey;
  final String projectId;
  final String deviceId;

  ProjectConfig copyWith({
    String? accountId,
    String? appSecret,
    String? userSecret,
    String? keySetId,
    String? licenseKey,
    String? projectId,
    String? deviceId,
  }) {
    return ProjectConfig(
      accountId: accountId ?? this.accountId,
      appSecret: appSecret ?? this.appSecret,
      userSecret: userSecret ?? this.userSecret,
      keySetId: keySetId ?? this.keySetId,
      licenseKey: licenseKey ?? this.licenseKey,
      projectId: projectId ?? this.projectId,
      deviceId: deviceId ?? this.deviceId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'appSecret': appSecret,
      'userSecret': userSecret,
      'keySetId': keySetId,
      'licenseKey': licenseKey,
      'projectId': projectId,
      'deviceId': deviceId,
    };
  }

  factory ProjectConfig.fromMap(Map<String, dynamic> map) {
    return ProjectConfig(
      accountId: map['accountId'] as String,
      appSecret: map['appSecret'] as String,
      userSecret: map['userSecret'] as String,
      keySetId: map['keySetId'] as String,
      licenseKey: map['licenseKey'] as String,
      projectId: map['projectId'] as String,
      deviceId: map['deviceId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProjectConfig.fromJson(String source) => ProjectConfig.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProjectConfig(accountId: $accountId, appSecret: $appSecret, userSecret: $userSecret, keySetId: $keySetId, licenseKey: $licenseKey, projectId: $projectId, deviceId: $deviceId)';
  }

  @override
  bool operator ==(covariant ProjectConfig other) {
    if (identical(this, other)) return true;

    return other.accountId == accountId &&
        other.appSecret == appSecret &&
        other.userSecret == userSecret &&
        other.keySetId == keySetId &&
        other.licenseKey == licenseKey &&
        other.projectId == projectId &&
        other.deviceId == deviceId;
  }

  @override
  int get hashCode {
    return accountId.hashCode ^
        appSecret.hashCode ^
        userSecret.hashCode ^
        keySetId.hashCode ^
        licenseKey.hashCode ^
        projectId.hashCode ^
        deviceId.hashCode;
  }
}

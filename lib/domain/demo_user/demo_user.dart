import 'package:freezed_annotation/freezed_annotation.dart';
part 'demo_user.freezed.dart';

@freezed
class DemoUser with _$DemoUser {
  const factory DemoUser({
    required String id,
    required String name,
    required String image,
  }) = _DemoUser;
}

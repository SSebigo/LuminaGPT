import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';

/// @nodoc
@freezed
class Session with _$Session {
  /// @nodoc
  factory Session({
    required String name,
    required String model,
    required double temperature,
  }) = _Session;

  /// @nodoc
  factory Session.empty() => Session(
        name: '',
        model: '',
        temperature: 0,
      );
}

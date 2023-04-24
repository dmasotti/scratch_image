import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'test_monarch_method_channel.dart';

abstract class TestMonarchPlatform extends PlatformInterface {
  /// Constructs a TestMonarchPlatform.
  TestMonarchPlatform() : super(token: _token);

  static final Object _token = Object();

  static TestMonarchPlatform _instance = MethodChannelTestMonarch();

  /// The default instance of [TestMonarchPlatform] to use.
  ///
  /// Defaults to [MethodChannelTestMonarch].
  static TestMonarchPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TestMonarchPlatform] when
  /// they register themselves.
  static set instance(TestMonarchPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

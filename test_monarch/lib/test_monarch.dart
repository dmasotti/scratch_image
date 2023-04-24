
import 'test_monarch_platform_interface.dart';

class TestMonarch {
  Future<String?> getPlatformVersion() {
    return TestMonarchPlatform.instance.getPlatformVersion();
  }
}

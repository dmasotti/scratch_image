import 'package:flutter_test/flutter_test.dart';
import 'package:test_monarch/test_monarch.dart';
import 'package:test_monarch/test_monarch_platform_interface.dart';
import 'package:test_monarch/test_monarch_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTestMonarchPlatform
    with MockPlatformInterfaceMixin
    implements TestMonarchPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TestMonarchPlatform initialPlatform = TestMonarchPlatform.instance;

  test('$MethodChannelTestMonarch is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTestMonarch>());
  });

  test('getPlatformVersion', () async {
    TestMonarch testMonarchPlugin = TestMonarch();
    MockTestMonarchPlatform fakePlatform = MockTestMonarchPlatform();
    TestMonarchPlatform.instance = fakePlatform;

    expect(await testMonarchPlugin.getPlatformVersion(), '42');
  });
}

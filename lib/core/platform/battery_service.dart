import 'dart:developer';

import 'package:flutter/services.dart';

import '../constants/platform_channels.dart';

class BatteryService {
  static const MethodChannel _channel = MethodChannel(
    PlatformChannels.batteryLevel,
  );
  static Future<dynamic> getBatteryLevel() async {
    final int batteryLevel = await _channel.invokeMethod('getBatteryLevel');
    log("Battery Level 1: ${batteryLevel.toString()}");
    return batteryLevel;
  }
}

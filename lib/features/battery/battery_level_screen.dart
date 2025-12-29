import 'dart:developer';

import 'package:flutter/material.dart';

import '../../core/platform/battery_service.dart';

class BatteryLevelScreen extends StatelessWidget {
  const BatteryLevelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final result = await BatteryService.getBatteryLevel();
                log("Battery Level: ${result.toString()}");
              },
              child: Text('Get Battery Level'),
            ),
          ],
        ),
      ),
    );
  }
}

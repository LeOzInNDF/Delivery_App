import 'package:dart_week_delivery_app/app/dart_week_delivery_app.dart';
import 'package:flutter/cupertino.dart';

import 'app/core/config/env/env.dart';

Future<void> main() async {
  await Env.i.load();
  runApp(DartWeekDeliveryApp());
}

import 'package:dart_week_delivery_app/app/core/global/global_context.dart';
import 'package:dart_week_delivery_app/app/core/provider/application_binding.dart';
import 'package:dart_week_delivery_app/app/pages/auth/login/loguin_router.dart';
import 'package:dart_week_delivery_app/app/pages/order/order_router.dart';
import 'package:dart_week_delivery_app/app/pages/product_detail/product_detail_router.dart';
import 'package:dart_week_delivery_app/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'core/ui/theme/theme_config.dart';
import 'pages/auth/login/register/register_router.dart';
import 'pages/home/home_router.dart';
import 'pages/order/widget/order_completed_page.dart';

class DartWeekDeliveryApp extends StatelessWidget {
  final _navKey = GlobalKey<NavigatorState>();

  DartWeekDeliveryApp({super.key}) {
    GlobalContext.i.navigatorKey = _navKey;
  }

  @override
  Widget build(BuildContext context) {
    return ApplicationBinding(
      child: MaterialApp(
        title: 'Delivery App',
        theme: ThemeConfig.theme,
        navigatorKey: _navKey,
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) => HomeRouter.page,
          '/productDetail': (context) => ProductDetailRouter.page,
          '/auth/login': (context) => LoguinRouter.page,
          '/auth/register': (context) => RegisterRouter.page,
          '/order': (context) => OrderRouter.page,
          '/order/completed': (context) => const OrderCompletedPage()
        },
      ),
    );
  }
}

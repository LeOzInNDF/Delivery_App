import 'package:bloc/bloc.dart';
import 'package:dart_week_delivery_app/app/core/ui/helpers/loader.dart';
import 'package:dart_week_delivery_app/app/core/ui/helpers/messages.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

abstract class BaseState<T extends StatefulWidget, C extends BlocBase>
    extends State<T> with Loader, Messages {
  late final C controller;

  @override
  void initState() {
    super.initState();
    controller = context.read<C>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      onReady();
    });
  }

  void onReady() {}
}

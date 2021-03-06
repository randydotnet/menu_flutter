import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:menu/screens/details.dart';

class Routes {
  static final Router _router = Router();

  static void initRoutes() {
    _router.define("/detail/:id", handler: Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return DetailPage(params["id"]);
        }));
  }

  static void navigateTo(context, String route, {TransitionType transition}) {
    _router.navigateTo(context, route, transition: transition);
  }

}
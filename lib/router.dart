import 'package:flutter/material.dart';
import 'package:newtotolist/screens/root_app.dart';
import 'package:newtotolist/screens/CheckList.dart';

Route<dynamic> generateRoute(RouteSettings setting) {
  final Map<String, dynamic> args = new Map<String, dynamic>();

  switch (setting.name) {
    case '/root_app':
      return MaterialPageRoute(builder: (context) => RootApp());
    case '/check_list':
      return MaterialPageRoute(builder: (context) => CheckList());
    default:
      return MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(),
              ));
  }
}

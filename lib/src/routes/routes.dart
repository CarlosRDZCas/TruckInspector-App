import 'package:flutter/cupertino.dart';

import '../pages/pages.dart';

getRoutes() {
  return (RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return CupertinoPageRoute(
            builder: (_) => const LoadingPage(), settings: settings);
      case 'login':
        return CupertinoPageRoute(
            builder: (_) => const LoginPage(), settings: settings);
      case 'home':
        return CupertinoPageRoute(
            builder: (_) => const Home(), settings: settings);
      case 'operadores':
        return CupertinoPageRoute(
            builder: (_) => const SearchOperador(), settings: settings);
      case 'addoperador':
        return CupertinoPageRoute(
            builder: (_) => const AddOperador(), settings: settings);
      case 'addintercambio':
        return CupertinoPageRoute(
            builder: (_) => const AddIntercambio(), settings: settings);
    }
  };
}

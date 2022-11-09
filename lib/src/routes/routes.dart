import 'package:flutter/cupertino.dart';

import '../pages/pages.dart';

getRoutes() {
  return (RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return CupertinoPageRoute(
            builder: (_) => const LoginPage(), settings: settings);
    }
  };
}

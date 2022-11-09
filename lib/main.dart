import 'package:flutter/material.dart';

import 'package:trailerinspector/src/routes/routes.dart';

void main() => runApp(const TruckInspector());

class TruckInspector extends StatelessWidget {
  const TruckInspector({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      onGenerateRoute: getRoutes() ,
    );
  }
}

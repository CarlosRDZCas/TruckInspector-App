import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:trailerinspector/src/routes/routes.dart';
import 'package:trailerinspector/src/services/auth_service.dart';

import 'src/provider/providers.dart';

void main() => runApp(const TruckInspector());

class TruckInspector extends StatelessWidget {
  const TruckInspector({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => AuthService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: '/',
        onGenerateRoute: getRoutes(),
      ),
    );
  }
}

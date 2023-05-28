import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/business_card.dart';
import './screens/layout_basics.dart';

class BusinessCardApp extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple.shade300),
      ),
      navigatorKey: navigatorKey,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => const HomePage());
          case '/businesscard':
            return MaterialPageRoute(builder: (_) => const BusinessCardPage());
          case '/layoutbasics':
            return MaterialPageRoute(builder: (_) => const LayoutBasicsPage());
          default:
            return null;
        }
      },
    );
  }
}

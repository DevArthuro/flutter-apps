import 'package:flutter/material.dart';
import 'package:flutter_components/models/menu_option.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = '/home';

  static final List<MenuOption> menuOptions = [
    MenuOption(
      route: '/home',
      icon: Icons.home,
      name: 'Home Screen',
      screen: HomeScreen(),
    ),
    MenuOption(
      route: '/alert',
      icon: Icons.add_alert_outlined,
      name: 'Alertas',
      screen: AlertScreen(),
    ),
    MenuOption(
      route: '/card',
      icon: Icons.credit_card,
      name: 'Tarjeta - Cards',
      screen: CardScreen(),
    ),
    MenuOption(
      route: '/list-view',
      icon: Icons.list,
      name: 'Lista simple',
      screen: ListViewScreen(),
    ),
    MenuOption(
      route: '/list-view-2',
      icon: Icons.list_alt,
      name: 'Lista Avanzada',
      screen: ListViewConstructorScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }

    return appRoutes;
  }

  //   static Map<String, Widget Function(BuildContext)> routes = {
  //     '/home': (buildContext) => const HomeScreen(),
  //     '/alert': (buildContext) => const AlertScreen(),
  //     '/card': (buildContext) => const CardScreen(),
  //     '/list-view': (buildContext) => const ListViewScreen(),
  //     '/list-view-2': (buildContext) => const ListViewConstructorScreen(),
  //   };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}

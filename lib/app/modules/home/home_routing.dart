import 'package:flutter_modular/flutter_modular.dart';

import '../../app_routing.dart';
import 'views/home_page.dart';

class HomeRouting {
  static final List<ModularRoute> routes = [
    ChildRoute(
      HomeRouteNamed.home._path!,
      child: (_, args) => HomePage(
        clinicsStore: Modular.get(),
      ),
    ),
  ];
}

enum HomeRouteNamed {
  home,
}

extension HomeouteNamedExtension on HomeRouteNamed {
  String? get _path {
    switch (this) {
      case HomeRouteNamed.home:
        return '/';
      default:
        return null;
    }
  }

  String? get fullPath => AppRouteNamed.home.fullPath! + _path!;
}
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

extension RouterExtension on BuildContext {
  void back<T extends Object?>([T? result]) => router.pop(result);

  void toNamed(String route) => router.pushNamed(route);

  Future<void> push(PageRouteInfo<dynamic> route,
          {void Function(NavigationFailure)? onFailure}) =>
      router.push(route, onFailure: onFailure);
}

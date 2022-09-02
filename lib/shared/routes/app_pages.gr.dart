// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/cupertino.dart' as _i5;
import 'package:flutter/material.dart' as _i3;

import '../../feature/home/data/model/clinic.dart' as _i4;
import '../../feature/pages.dart' as _i1;

class AppPages extends _i2.RootStackRouter {
  AppPages([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    RecentVistedClinicRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.RecentVistedClinicPage());
    },
    NearbyClinicRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.NearbyClinicPage());
    },
    ClinicDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ClinicDetailsRouteArgs>();
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i1.ClinicDetailsPage(args.clinic, key: args.key));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRoute.name, path: '/'),
        _i2.RouteConfig(RecentVistedClinicRoute.name,
            path: '/recent-visited-clinic-page'),
        _i2.RouteConfig(NearbyClinicRoute.name, path: '/nearby-clinic-page'),
        _i2.RouteConfig(ClinicDetailsRoute.name, path: '/clinic-details-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.RecentVistedClinicPage]
class RecentVistedClinicRoute extends _i2.PageRouteInfo<void> {
  const RecentVistedClinicRoute()
      : super(RecentVistedClinicRoute.name,
            path: '/recent-visited-clinic-page');

  static const String name = 'RecentVistedClinicRoute';
}

/// generated route for
/// [_i1.NearbyClinicPage]
class NearbyClinicRoute extends _i2.PageRouteInfo<void> {
  const NearbyClinicRoute()
      : super(NearbyClinicRoute.name, path: '/nearby-clinic-page');

  static const String name = 'NearbyClinicRoute';
}

/// generated route for
/// [_i1.ClinicDetailsPage]
class ClinicDetailsRoute extends _i2.PageRouteInfo<ClinicDetailsRouteArgs> {
  ClinicDetailsRoute({required _i4.Clinic clinic, _i5.Key? key})
      : super(ClinicDetailsRoute.name,
            path: '/clinic-details-page',
            args: ClinicDetailsRouteArgs(clinic: clinic, key: key));

  static const String name = 'ClinicDetailsRoute';
}

class ClinicDetailsRouteArgs {
  const ClinicDetailsRouteArgs({required this.clinic, this.key});

  final _i4.Clinic clinic;

  final _i5.Key? key;

  @override
  String toString() {
    return 'ClinicDetailsRouteArgs{clinic: $clinic, key: $key}';
  }
}

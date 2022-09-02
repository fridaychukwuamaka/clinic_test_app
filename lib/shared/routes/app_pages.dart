import 'package:auto_route/auto_route.dart';
import 'package:clinic_test_app/feature/pages.dart';
part './app_routes.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  preferRelativeImports: true,
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      path: Routes.initial,
    ),
    AutoRoute(
      page: RecentVistedClinicPage,
      path: Routes.recentVisitedClinicPage,
    ),
    AutoRoute(
      page: NearbyClinicPage,
      path: Routes.nearbyClinicPage,
    ),
    AutoRoute(
      page: ClinicDetailsPage,
      path: Routes.clinicDetailsPage,
    ),
  ],
)
class $AppPages {}

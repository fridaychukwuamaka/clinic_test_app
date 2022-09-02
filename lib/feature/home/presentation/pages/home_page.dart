import 'package:clinic_test_app/feature/home/presentation/widgets/featured_clinics.dart';
import 'package:clinic_test_app/feature/home/presentation/widgets/nearby_clinics.dart';
import 'package:clinic_test_app/feature/home/presentation/widgets/recent_visted_clinics.dart';
import 'package:clinic_test_app/feature/home/presentation/widgets/title_and_more.dart';
import 'package:clinic_test_app/shared/extension/context_extension.dart';
import 'package:clinic_test_app/shared/extension/router_extension.dart';
import 'package:clinic_test_app/shared/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(FeatherIcons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(FeatherIcons.bookmark),
            onPressed: () {},
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: FeaturedSection(),
          ),
          TitleAndMore(
            title: 'Recent Visited',
            onTap: () => context.toNamed(Routes.recentVisitedClinicPage),
          ),
          const RecentVisitedClinics(),
          TitleAndMore(
            title: 'Nearby',
            onTap: () => context.toNamed(Routes.nearbyClinicPage),
          ),
          const NearbyClinics(),
          SliverToBoxAdapter(child: SizedBox(height: context.bottom)),
        ],
      ),
    );
  }
}

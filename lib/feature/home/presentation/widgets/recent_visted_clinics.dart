import 'package:clinic_test_app/feature/home/presentation/widgets/app_loading_indicator.dart';
import 'package:clinic_test_app/feature/home/presentation/widgets/recent_clinic_tile.dart';
import 'package:clinic_test_app/feature/home/provider/home_provider.dart';
import 'package:clinic_test_app/shared/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecentVisitedClinics extends ConsumerWidget {
  const RecentVisitedClinics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(recentListProvider);
    return state.when(
      data: (data) {
        return SliverPadding(
          padding: const EdgeInsets.all(AppStyle.appPaddingVal),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return RecentClinicTile(data[index]);
              },
              childCount: data.length,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              childAspectRatio: 0.8,
              crossAxisSpacing: 10,
            ),
          ),
        );
      },
      loading: () =>
          const SliverToBoxAdapter(child: Center(child: AppLoadingIndicator())),
      error: (error, stack) => const SliverToBoxAdapter(
          child: Center(child: Text('Oops, something unexpected happened'))),
    );
  }
}

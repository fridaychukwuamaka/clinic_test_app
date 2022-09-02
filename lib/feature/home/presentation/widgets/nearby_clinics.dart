import 'package:clinic_test_app/feature/home/presentation/widgets/app_loading_indicator.dart';
import 'package:clinic_test_app/feature/home/presentation/widgets/nearby_clinic_tile.dart';
import 'package:clinic_test_app/shared/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../provider/home_provider.dart';

class NearbyClinics extends ConsumerWidget {
  const NearbyClinics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(nearbyListProvider);
    return state.when(
      data: (data) {
        return SliverPadding(
          padding: const EdgeInsets.all(AppStyle.appPaddingVal),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return NearbyClinicTile(data[index]);
              },
              childCount: data.length,
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

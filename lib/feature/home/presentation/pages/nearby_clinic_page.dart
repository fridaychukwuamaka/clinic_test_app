import 'package:clinic_test_app/feature/home/presentation/widgets/app_loading_indicator.dart';
import 'package:clinic_test_app/feature/home/presentation/widgets/nearby_clinic_tile.dart';
import 'package:clinic_test_app/feature/home/provider/more_page_provider.dart';
import 'package:clinic_test_app/shared/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class NearbyClinicPage extends ConsumerWidget {
  const NearbyClinicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(morePageProvider('nearby'));
    var notifier = ref.read(morePageProvider('nearby').notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nearby'),
      ),
      body: state.when(
        data: (data) {
          return SmartRefresher(
            enablePullUp: true,
            controller: notifier.refreshController,
            onRefresh: notifier.onRefresh,
            onLoading: notifier.onLoading,
            child: ListView.separated(
              padding: const EdgeInsets.all(AppStyle.appPaddingVal),
              itemCount: data.length,
              separatorBuilder: (context, index) => const SizedBox(height: 15),
              itemBuilder: (context, index) {
                return NearbyClinicTile(data[index]);
              },
            ),
          );
        },
        loading: () => const Center(
          child: AppLoadingIndicator(),
        ),
        error: (error, stack) => const Center(child: Text('Oops, something unexpected happened')),
      ),
    );
  }
}

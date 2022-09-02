import 'package:clinic_test_app/feature/home/presentation/widgets/app_loading_indicator.dart';
import 'package:clinic_test_app/feature/home/presentation/widgets/recent_clinic_tile.dart';
import 'package:clinic_test_app/feature/home/provider/more_page_provider.dart';
import 'package:clinic_test_app/shared/themes/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RecentVistedClinicPage extends ConsumerWidget {
  const RecentVistedClinicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(morePageProvider('recent'));
    var notifier = ref.read(morePageProvider('recent').notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recent Visited'),
      ),
      body: state.when(
        data: (data) {
          return SmartRefresher(
            enablePullUp: true,
            controller: notifier.refreshController,
            onRefresh: notifier.onRefresh,
            onLoading: notifier.onLoading,
            child: GridView.builder(
              padding: const EdgeInsets.all(AppStyle.appPaddingVal),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 20.0,
              ),
              itemCount: data.length,
              itemBuilder: (context, index) => RecentClinicTile(data[index]),
            ),
          );
        },
        loading: () => const Center(child: AppLoadingIndicator()),
        error: (error, stack) =>
            const Center(child: Text('Oops, something unexpected happened')),
      ),
    );
  }
}

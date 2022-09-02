import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:clinic_test_app/feature/home/data/model/clinic.dart';
import 'package:clinic_test_app/feature/home/presentation/widgets/home_dots.dart';
import 'package:clinic_test_app/feature/home/provider/home_provider.dart';
import 'package:clinic_test_app/shared/extension/context_extension.dart';
import 'package:clinic_test_app/shared/extension/router_extension.dart';
import 'package:clinic_test_app/shared/routes/app_pages.gr.dart';
import 'package:clinic_test_app/shared/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_loading_indicator.dart';

final carouselIndex = StateProvider<int>((ref) => 0);
final CarouselController controller = CarouselController();

class FeaturedSection extends ConsumerWidget {
  const FeaturedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(featureListProvider);
    return Padding(
      padding: const EdgeInsets.all(AppStyle.appPaddingVal),
      child: state.when(
        data: (data) {
          return Column(
            children: [
              CarouselSlider(
                carouselController: controller,
                options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    ref.read(carouselIndex.notifier).update((state) => index);
                  },
                  height: context.width * 0.5,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  viewportFraction: 1,
                ),
                items: data.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return _ItemCard(i);
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 25),
              Consumer(
                builder: (context, ref, _) {
                  return HomeDots(
                    length: data.length,
                    currentIndex: ref.watch(carouselIndex),
                    controller: controller,
                  );
                },
              ),
            ],
          );
        },
        loading: () => const Center(child: AppLoadingIndicator()),
        error: (error, stack) =>
            const Center(child: Text('Oops, something unexpected happened')),
      ),
    );
  }
}

class _ItemCard extends StatelessWidget {
  const _ItemCard(
    this.clinic, {
    Key? key,
  }) : super(key: key);

  final Clinic clinic;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(ClinicDetailsRoute(clinic: clinic)),
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: CachedNetworkImageProvider(
              clinic.image,
            ),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(12),
          color: Colors.black54,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                clinic.name,
                style: AppTextStyle.button,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:clinic_test_app/feature/home/data/model/clinic.dart';
import 'package:clinic_test_app/feature/home/presentation/widgets/app_image.dart';
import 'package:clinic_test_app/shared/extension/context_extension.dart';
import 'package:clinic_test_app/shared/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class ClinicDetailsPage extends StatelessWidget {
  const ClinicDetailsPage(
    this.clinic, {
    Key? key,
  }) : super(key: key);

  final Clinic clinic;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              title: Text(clinic.name, style: AppTextStyle.button,),
              flexibleSpace: FlexibleSpaceBar(
                background: AppImage(
                  image: clinic.image,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
              expandedHeight: context.height * 0.35,
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.all(AppStyle.appPaddingVal),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Text(
                  'Address',
                  style: AppTextStyle.subtitle1.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(
                      FeatherIcons.map,
                      size: 20,
                 
                    ),
                    const SizedBox(width: 8),
                    Text(
                      clinic.address,
                      style: AppTextStyle.subtitle2,
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Text(
                  'About',
                  style: AppTextStyle.subtitle1.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  lorem(paragraphs: 4, words: 600),
                  style: AppTextStyle.bodyText2.copyWith(
                    height: 1.5,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:cached_network_image/cached_network_image.dart';
import 'package:clinic_test_app/feature/home/data/model/clinic.dart';
import 'package:clinic_test_app/feature/home/presentation/widgets/app_image.dart';
import 'package:clinic_test_app/shared/extension/router_extension.dart';
import 'package:clinic_test_app/shared/routes/app_pages.gr.dart';
import 'package:clinic_test_app/shared/themes/themes.dart';
import 'package:flutter/material.dart';

class NearbyClinicTile extends StatelessWidget {
  const NearbyClinicTile(
    this.clinic, {
    Key? key,
  }) : super(key: key);

  final Clinic clinic;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(ClinicDetailsRoute(clinic: clinic)),
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: AppColors.inputBackgroudColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            AppImage(
              image: clinic.image,
              height: 55,
              width: 60,
              radius: 5,
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    clinic.name,
                    style: AppTextStyle.bodyText1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 3),
                  Text(
                    clinic.address,
                    style: AppTextStyle.subtitle2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:clinic_test_app/shared/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';


class AppLoadingIndicator extends StatelessWidget {
  const AppLoadingIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(8),
      ),
      child: LoadingAnimationWidget.horizontalRotatingDots(
        color: AppColors.appRed,
        size: 35,
      ),
    );
  }
}
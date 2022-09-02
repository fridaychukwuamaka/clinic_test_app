import 'package:clinic_test_app/shared/themes/app_style.dart';
import 'package:flutter/material.dart';

class TitleAndMore extends StatelessWidget {
  const TitleAndMore({Key? key, required this.title, this.onTap})
      : super(key: key);

  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(AppStyle.appPaddingVal).copyWith(bottom: 0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  title,
                ),
                const Spacer(),
                InkWell(
                  onTap: onTap,
                  child: Row(
                    children: const [
                      Text('More'),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

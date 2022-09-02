import 'package:carousel_slider/carousel_slider.dart';
import 'package:clinic_test_app/shared/themes/themes.dart';
import 'package:flutter/material.dart';

class HomeDots extends StatefulWidget {
  const HomeDots({
    Key? key,
    required this.length,
    required this.currentIndex,
    required this.controller,
  }) : super(key: key);

  final int length;
  final int currentIndex;
  final CarouselController controller;

  @override
  State<HomeDots> createState() => _HomeDotsState();
}

class _HomeDotsState extends State<HomeDots> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: widget.length,
        itemBuilder: (context, index) {
          var isCurrentIndex = index == widget.currentIndex;
          return InkWell(
            onTap: () {
              widget.controller.animateToPage(index);
            },
            child: AnimatedContainer(
              width: !isCurrentIndex ? 10 : 15,
              height: 3,
              decoration: BoxDecoration(
                color: isCurrentIndex ? AppColors.appRed : AppColors.silverSand,
                borderRadius: BorderRadius.circular(3),
              ),
              duration: const Duration(milliseconds: 300),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 10);
        },
      ),
    );
  }
}


/* Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            widget.length,
            (index) => InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () {
                widget.controller.animateToPage(
                  index,
                  duration: kThemeAnimationDuration,
                  curve: Curves.easeInOut,
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: index == widget.currentIndex
                      ? AppColors.appRed
                      : const Color(0xFFE5E5E5),
                ),
                height: 5,
                width: 10,
              ),
            ),
          ),
        ),
      ],
    ) */
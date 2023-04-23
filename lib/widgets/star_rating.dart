import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StarRating extends StatelessWidget {
  const StarRating({
    super.key,
    this.value = 0,
    required this.onChanged,
  });

  final void Function(int index) onChanged;

  final int value;

  @override
  Widget build(BuildContext context) {
    const color = Color(0xffB28500);
    const size = 56.0;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return IconButton(
          onPressed: onChanged != null
              ? () {
                  onChanged(value == index + 1 ? index : index + 1);
                }
              : null,
          color: index < value ? color : null,
          iconSize: size,
          icon: index < value
              ? SvgPicture.asset(
                  'assets/star_selected.svg',
                  height: 32,
                  width: 32,
                  color: Color.fromARGB(255, 230, 151, 6),
                )
              : SvgPicture.asset(
                  'assets/star.svg',
                  height: 32,
                  width: 32,
                  color: Colors.grey,
                ),
          padding: EdgeInsets.zero,
          tooltip: "${index + 1} of 5",
        );
      }),
    );
  }
}

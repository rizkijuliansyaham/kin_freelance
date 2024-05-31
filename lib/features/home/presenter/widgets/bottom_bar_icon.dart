import 'package:flutter/material.dart';

class BottomBarIcon extends StatelessWidget {
  final VoidCallback onTap;
  final bool isSelected;
  final IconData iconData;
  final String label;

  const BottomBarIcon({
    super.key,
    required this.onTap,
    required this.isSelected,
    required this.iconData,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final unSelectedColor  = Color.fromRGBO(171, 176, 186, 1);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            // decoration: !isSelected? null : BoxDecoration(
            //     color: const Color(0xffD4F6F4),
            //     borderRadius: BorderRadius.circular(20)
            // ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 4
            ),
            child: Icon(
              iconData,
              color: isSelected? const Color(0xff00C7BE) : unSelectedColor,
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          label,
          style: TextStyle(
            color: isSelected? Colors.white : unSelectedColor,
            fontWeight: FontWeight.w600,
            fontSize: 10,
          ),
        )
      ],
    );
  }
}

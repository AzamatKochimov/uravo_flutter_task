import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavItem extends StatelessWidget {
  final String iconAsset;
  final String label;
  final bool isActive;
  final VoidCallback? onTap;

  const CustomBottomNavItem({
    super.key,
    required this.iconAsset,
    required this.label,
    required this.isActive,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRect(
            child: Align(
              alignment: Alignment.bottomCenter,
              heightFactor: 0.5,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isActive ? Colors.green : Colors.transparent,
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          // Icon
          SvgPicture.asset(
            iconAsset,
            color: isActive ? Colors.green : Colors.grey,
          ),
          const SizedBox(height: 4),
          // Label
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: isActive ? Colors.black : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

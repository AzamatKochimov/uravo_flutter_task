import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileItemWidget extends StatelessWidget {
  final String iconAsset;
  final String title;
  final String? trailingText;
  final Color? containerColor;
  final Color? textColor;
  final VoidCallback? onPressed;

  const ProfileItemWidget({
    super.key,
    required this.iconAsset,
    required this.title,
    this.trailingText,
    this.onPressed, this.containerColor, this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14),
      child: InkWell(
        onTap: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(iconAsset),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            if (trailingText != null)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: containerColor,
                ),
                child: Text(
                  trailingText!,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: textColor,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}

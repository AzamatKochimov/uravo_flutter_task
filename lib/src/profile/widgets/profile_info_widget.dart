import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../generated/assets.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 60),
      margin: const EdgeInsets.symmetric(horizontal: 17),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(Assets.imagesProfileImage),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Test Testov",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(Assets.iconsEdit),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                width: 100,
                height: 89,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      Assets.iconsCalendar,
                      width: 18,
                      height: 18,
                    ),
                    const Text("Возраст", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white)),
                    const Text("-", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                width: 100,
                height: 89,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      Assets.iconsRuler2,
                      width: 18,
                      height: 18,
                    ),
                    const Text("Рост", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white)),
                    const Text("-", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                width: 100,
                height: 89,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      Assets.iconsScaleOutline,
                      width: 18,
                      height: 18,
                    ),
                    const Text("Вес", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white)),
                    const Text("-", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white))
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                width: 156,
                height: 92,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      Assets.iconsUserHeart,
                      width: 18,
                      height: 18,
                    ),
                    const Text("Индекс массы тела",
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white)),
                    const Text("- (норма)", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                width: 156,
                height: 92,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white.withOpacity(0.16),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFCCA114).withOpacity(0.5), // 80% opacity
                      const Color(0xFFEBC032).withOpacity(0.1), // 80% opacity
                    ],
                    stops: const [0.1, 0.5],
                    begin: Alignment.centerRight,
                    end: Alignment.bottomLeft,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      Assets.iconsLogo,
                      width: 18,
                      height: 18,
                    ),
                    const Text("Dawa Premium",
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white)),
                    const Text("до 12.02.2024",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

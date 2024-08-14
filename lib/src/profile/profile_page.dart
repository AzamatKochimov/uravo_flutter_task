import 'package:flutter/material.dart';
import 'package:test_uravo/generated/assets.dart';
import 'package:test_uravo/src/profile/profile_info_widget.dart';

import 'profile_item_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff3f3f3),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/profile_background.png",
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.sizeOf(context).height * 0.45,
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const ProfileInfoWidget(),
                  const SizedBox(height: 42),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 17),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                ProfileItemWidget(
                                  iconAsset: Assets.iconsBell,
                                  title: "Уведомления",
                                  trailingText: "2",
                                  containerColor: Colors.red,
                                  textColor: Colors.white,
                                  onPressed: () {
                                    print("Уведомления pressed");
                                  },
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 14),
                                  child: Divider(
                                    color: Colors.black.withOpacity(0.1),
                                    thickness: 0.3,
                                  ),
                                ),
                                ProfileItemWidget(
                                  iconAsset: Assets.iconsHeart,
                                  title: "История подписки",
                                  onPressed: () {
                                    print("История подписки pressed");
                                  },
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 14),
                                  child: Divider(
                                    color: Colors.black.withOpacity(0.1),
                                    thickness: 0.3,
                                  ),
                                ),
                                ProfileItemWidget(
                                  iconAsset: Assets.iconsCreditCard,
                                  title: "Мои карты",
                                  onPressed: () {
                                    print("Мои карты pressed");
                                  },
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 14),
                                  child: Divider(
                                    color: Colors.black.withOpacity(0.1),
                                    thickness: 0.3,
                                  ),
                                ),
                                ProfileItemWidget(
                                  iconAsset: Assets.iconsSaved,
                                  title: "Сохраненные",
                                  trailingText: "12",
                                  containerColor: Colors.green.withOpacity(0.2),
                                  textColor: Colors.green,
                                  onPressed: () {
                                    print("Сохраненные pressed");
                                  },
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 14),
                                  child: Divider(
                                    color: Colors.black.withOpacity(0.1),
                                    thickness: 0.3,
                                  ),
                                ),
                                ProfileItemWidget(
                                  iconAsset: Assets.iconsPill,
                                  title: "Лекарства",
                                  onPressed: () {
                                    print("Лекарства pressed");
                                  },
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 14),
                                  child: Divider(
                                    color: Colors.black.withOpacity(0.1),
                                    thickness: 0.3,
                                  ),
                                ),
                                ProfileItemWidget(
                                  iconAsset: Assets.iconsNotes,
                                  title: "Заметка лекарств",
                                  onPressed: () {
                                    print("Заметка лекарств pressed");
                                  },
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 14),
                                  child: Divider(
                                    color: Colors.black.withOpacity(0.1),
                                    thickness: 0.3,
                                  ),
                                ),
                                ProfileItemWidget(
                                  iconAsset: Assets.iconsSettings,
                                  title: "Настройки",
                                  onPressed: () {
                                    print("Настройки pressed");
                                  },
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 14),
                                  child: Divider(
                                    color: Colors.black.withOpacity(0.1),
                                    thickness: 0.3,
                                  ),
                                ),
                                ProfileItemWidget(
                                  iconAsset: Assets.iconsInfoCircle,
                                  title: "Инструкция",
                                  onPressed: () {
                                    print("Инструкция pressed");
                                  },
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 14),
                                  child: Divider(
                                    color: Colors.black.withOpacity(0.1),
                                    thickness: 0.3,
                                  ),
                                ),
                                ProfileItemWidget(
                                  iconAsset: Assets.iconsQuestionMark,
                                  title: "Помощь",
                                  onPressed: () {
                                    print("Помощь pressed");
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          child: Text(
                            "Версия 1.0.0",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20)
                ],
              ),
            ],
          ),
        ));
  }
}

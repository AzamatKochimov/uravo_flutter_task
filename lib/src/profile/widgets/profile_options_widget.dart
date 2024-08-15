import 'package:flutter/material.dart';
import 'package:test_uravo/src/profile/widgets/profile_item_widget.dart';

import '../../../generated/assets.dart';

class ProfileOptionsWidget extends StatelessWidget {
  const ProfileOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

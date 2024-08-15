import 'package:flutter/material.dart';
import 'package:test_uravo/src/profile/widgets/profile_info_widget.dart';
import 'package:test_uravo/src/profile/widgets/profile_options_widget.dart';
import 'package:test_uravo/src/profile/widgets/version_text_widget.dart';

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
                  height: MediaQuery.sizeOf(context).height * 0.44,
                  fit: BoxFit.fill,
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProfileInfoWidget(),
                  SizedBox(height: 42),
                  ProfileOptionsWidget(),
                  SizedBox(height: 10),
                  VersionWidget(),
                  SizedBox(height: 20)
                ],
              ),
            ],
          ),
        ));
  }
}

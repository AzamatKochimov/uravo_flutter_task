import 'package:flutter/material.dart';
import 'package:test_uravo/src/profile/profile_page.dart';
import 'package:test_uravo/src/search/search_page.dart';

import '../../../generated/assets.dart';
import 'bottom_navigation_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 4;

  final List<Widget> _pages = [
    const HomePage(),
    const EstablishmentsPage(),
    const SearchPage(),
    const TeleMedPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomBottomNavItem(
              iconAsset: Assets.iconsHome,
              label: 'Главная',
              isActive: _selectedIndex == 0,
              onTap: () => _onItemTapped(0),
            ),
            CustomBottomNavItem(
              iconAsset: Assets.iconsHospital,
              label: 'Заведения',
              isActive: _selectedIndex == 1,
              onTap: () => _onItemTapped(1),
            ),
            CustomBottomNavItem(
              iconAsset: Assets.iconsSearch,
              label: 'Поиск',
              isActive: _selectedIndex == 2,
              onTap: () => _onItemTapped(2),
            ),
            CustomBottomNavItem(
              iconAsset: Assets.iconsHeadset,
              label: 'Теле мед.',
              isActive: _selectedIndex == 3,
              onTap: () => _onItemTapped(3),
            ),
            CustomBottomNavItem(
              iconAsset: Assets.iconsUser,
              label: 'Мед. карта',
              isActive: _selectedIndex == 4,
              onTap: () => _onItemTapped(4),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home Page is not available'),
    );
  }
}

class EstablishmentsPage extends StatelessWidget {
  const EstablishmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Establishments Page is not available'),
    );
  }
}

class TeleMedPage extends StatelessWidget {
  const TeleMedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Tele Med Page is not available'),
    );
  }
}

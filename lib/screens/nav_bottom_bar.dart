import 'package:fintech_banking_investing_ui/screens/balance_screen.dart';
import 'package:fintech_banking_investing_ui/screens/dashboard_screen.dart';
import 'package:fintech_banking_investing_ui/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBottomBar extends StatefulWidget {
  const NavBottomBar({super.key});

  @override
  State<NavBottomBar> createState() => _NavBottomBarState();
}

class _NavBottomBarState extends State<NavBottomBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    Center(child: Text('Home')),
    BalanceScreen(),
    DashboardScreen(),
    Center(child: Text('Notifications')),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) => setState(() => _selectedIndex = index);

  
  BottomNavigationBarItem _svgItem({
    required String asset,
    required int index,
    double size = 26,
    Color activeColor = const Color(0xFF3ECF8E),
    Color inactiveColor = Colors.white,
    Color dotColor = const Color(0xFF3ECF8E),
  }) {
    final bool selected = _selectedIndex == index;

    Widget icon({required Color color}) => SvgPicture.asset(
      asset,
      height: size,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );


    return BottomNavigationBarItem(
      icon: icon(color: inactiveColor),
      activeIcon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon(color: activeColor),
          const SizedBox(height: 6),
          AnimatedContainer(
            duration: const Duration(milliseconds: 180),
            curve: Curves.easeOut,
            width: selected ? 8 : 0,
            height: 8,
            decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle),
          ),
        ],
      ),
      label: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF2F3843),
        elevation: 0,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          _svgItem(asset: "asset/svg_images/home.svg", index: 0),
          _svgItem(asset: "asset/svg_images/note.svg", index: 1),
          _svgItem(asset: "asset/svg_images/dashboard.svg", index: 2),
          _svgItem(asset: "asset/svg_images/notifications.svg", index: 3),
          _svgItem(asset: "asset/svg_images/profile.svg", index: 4),
        ],
      ),
    );
  }
}

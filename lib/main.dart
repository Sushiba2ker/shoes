import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';
import 'screens/shop/shop_screen.dart';
import 'screens/favorites/favorites_screen.dart';
import 'screens/bag/bag_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/splash/splash_screen.dart';
import 'widgets/navigation_item.dart';
import 'package:hugeicons/hugeicons.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nike App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const SplashScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const ShopScreen(),
    const FavoritesScreen(),
    const BagScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        margin: const EdgeInsets.only(
          bottom: 20,
          left: 24,
          right: 24,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 30,
              offset: const Offset(0, 10),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: const Color(0xFF0D6EFD).withOpacity(0.05),
              blurRadius: 20,
              offset: const Offset(0, -5),
              spreadRadius: 0,
            ),
          ],
        ),
        child: SafeArea(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  NavigationItem(
                    icon: HugeIcons.strokeRoundedHome01,
                    label: '',
                    isSelected: _selectedIndex == 0,
                    onTap: () => setState(() => _selectedIndex = 0),
                  ),
                  NavigationItem(
                    icon: HugeIcons.strokeRoundedStore01,
                    label: '',
                    isSelected: _selectedIndex == 1,
                    onTap: () => setState(() => _selectedIndex = 1),
                  ),
                  NavigationItem(
                    icon: HugeIcons.strokeRoundedStar,
                    label: '',
                    isSelected: _selectedIndex == 2,
                    onTap: () => setState(() => _selectedIndex = 2),
                  ),
                  NavigationItem(
                    icon: HugeIcons.strokeRoundedShoppingBag03,
                    label: '',
                    isSelected: _selectedIndex == 3,
                    onTap: () => setState(() => _selectedIndex = 3),
                  ),
                  NavigationItem(
                    icon: HugeIcons.strokeRoundedUser,
                    label: '',
                    isSelected: _selectedIndex == 4,
                    onTap: () => setState(() => _selectedIndex = 4),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

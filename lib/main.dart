import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';
import 'screens/shop/shop_screen.dart';
import 'screens/favorites/favorites_screen.dart';
import 'screens/bag/bag_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/splash/splash_screen.dart';

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
      home: const SplashScreen(), // Thay đổi từ MainScreen sang SplashScreen
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
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 0 ? Icons.home : Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 1 ? Icons.search : Icons.search_outlined),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 2 ? Icons.favorite : Icons.favorite_border),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 3 ? Icons.shopping_bag : Icons.shopping_bag_outlined),
              label: 'Bag',
            ),
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 4 ? Icons.person : Icons.person_outline),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
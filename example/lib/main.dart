import 'package:flutter/material.dart';
import 'package:neumorphic_bottom_bar/models/nav_item.dart'; 
import 'package:neumorphic_bottom_bar/widgets/neumorphic_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neumorphic Bottom Bar Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const BottomBarScreen(),
    );
  }
}

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 0;
  
  // You can have 3 or 4 items
  final List<NavItem> _navItems = const [
    NavItem(icon: Icons.home_outlined, label: 'Home'),
    NavItem(icon: Icons.bookmark_border_rounded, label: 'Bookmarks'),
    NavItem(icon: Icons.calendar_today_outlined, label: 'Calendar'),
    NavItem(icon: Icons.person_outline_rounded, label: 'Profile'),
  ];

  // Example with 3 items
  // final List<NavItem> _navItems = const [
  //   NavItem(icon: Icons.home_outlined, label: 'Home'),
  //   NavItem(icon: Icons.favorite_border, label: 'Favorites'),
  //   NavItem(icon: Icons.person_outline_rounded, label: 'Profile'),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _PageContent(
          key: ValueKey(_selectedIndex),
          item: _navItems[_selectedIndex],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 28),
        child: NeumorphicNavBar(
          items: _navItems,
          selectedIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          // Optional customizations:
          // backgroundColor: const Color(0xFFCDD5DF),
          // borderRadius: 38,
          // height: 76,
        ),
      ),
    );
  }
}

class _PageContent extends StatelessWidget {
  final NavItem item;
  
  const _PageContent({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            item.icon,
            size: 80,
            color: const Color(0xFF505774).withOpacity(0.25),
          ),
          const SizedBox(height: 16),
          Text(
            item.label,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.4,
              color: Color(0x44505774),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Page ${_getPageNumber()}',
            style: const TextStyle(
              fontSize: 16,
              color: Color(0x66505774),
            ),
          ),
        ],
      ),
    );
  }
  
  String _getPageNumber() {
    switch (item.label) {
      case 'Home': return '1';
      case 'Bookmarks': return '2';
      case 'Calendar': return '3';
      case 'Profile': return '4';
      default: return '1';
    }
  }
}
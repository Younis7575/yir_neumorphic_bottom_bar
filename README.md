# 🔻 YIR Neumorphic Bottom Bar

A beautiful neumorphic bottom navigation bar for Flutter with smooth animations, glassmorphism effects, and fully customizable design — perfect for modern app UIs.

---

## ✨ Features

✅ **Smooth Animations** - 350ms animated transitions between selections  
✅ **Neumorphic Design** - Beautiful soft UI with shadows and highlights  
✅ **3-4 Navigation Items** - Supports flexible navigation structures  
✅ **Fully Customizable** - Colors, border radius, padding, and height  
✅ **Zero Dependencies** - Only requires Flutter  
✅ **TypeSafe** - Built with null safety  
✅ **Easy Integration** - Simple API and great documentation  

## 📸 Preview

![Demo](https://raw.githubusercontent.com/Younis7575/yir_neumorphic_bottom_bar/master/yir_glassy_bottombar.gif)

![Preview](https://raw.githubusercontent.com/Younis7575/yir_neumorphic_bottom_bar/master/yir_glassy_bottombar_img.jpeg)

## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  yir_neumorphic_bottom_bar: ^1.0.0
```

Then run:
```bash
flutter pub get
```

## 🚀 Quick Start

### Basic Usage

```dart
import 'package:flutter/material.dart';
import 'package:yir_neumorphic_bottom_bar/yir_neumorphic_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<NavItem> _navItems = const [
    NavItem(icon: Icons.home_outlined, label: 'Home'),
    NavItem(icon: Icons.bookmark_border, label: 'Bookmarks'),
    NavItem(icon: Icons.person_outline, label: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(_navItems[_selectedIndex].label),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20),
          child: NeumorphicNavBar(
            items: _navItems,
            selectedIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
```

### Advanced Usage with Customization

```dart
NeumorphicNavBar(
  items: _navItems,
  selectedIndex: _selectedIndex,
  onTap: (index) {
    setState(() => _selectedIndex = index);
  },
  // Customization options:
  backgroundColor: const Color(0xFFCDD5DF),
  borderRadius: 38,
  height: 76,
  horizontalPadding: 20,
  verticalPadding: 10,
)
```

## 📚 API Reference

### NeumorphicNavBar

Main widget for bottom navigation.

**Parameters:**
- `items` (List<NavItem>, required) - List of navigation items (3-4 items)
- `selectedIndex` (int, required) - Currently selected item index
- `onTap` (ValueChanged<int>, required) - Callback when item is tapped
- `backgroundColor` (Color) - Background color, default: `0xFFCDD5DF`
- `borderRadius` (double) - Border radius, default: `38`
- `height` (double) - Widget height, default: `76`
- `horizontalPadding` (double) - Horizontal padding, default: `20`
- `verticalPadding` (double) - Vertical padding, default: `10`

### NavItem

Model class for navigation items.

**Parameters:**
- `icon` (IconData, required) - Icon for the item
- `label` (String, required) - Label text for the item
- `selectedColor` (Color?) - Custom color when selected
- `unselectedColor` (Color?) - Custom color when unselected

## 💡 Examples

### 4 Navigation Items

```dart
final List<NavItem> _navItems = const [
  NavItem(icon: Icons.home_outlined, label: 'Home'),
  NavItem(icon: Icons.bookmark_border, label: 'Saved'),
  NavItem(icon: Icons.calendar_today_outlined, label: 'Calendar'),
  NavItem(icon: Icons.person_outline, label: 'Profile'),
];
```

### With Custom Colors

```dart
final List<NavItem> _navItems = [
  NavItem(
    icon: Icons.home_outlined,
    label: 'Home',
    selectedColor: Colors.blue,
    unselectedColor: Colors.grey,
  ),
  NavItem(
    icon: Icons.favorite_border,
    label: 'Favorites',
    selectedColor: Colors.red,
    unselectedColor: Colors.grey,
  ),
  NavItem(
    icon: Icons.person_outline,
    label: 'Profile',
    selectedColor: Colors.purple,
    unselectedColor: Colors.grey,
  ),
];
```

## ⚙️ Requirements

- Flutter >= 3.0.0
- Dart >= 3.0.0

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Muhammad Younis**

- GitHub: [@Younis7575](https://github.com/Younis7575)
- Portfolio: [your-portfolio.com](https://your-portfolio.com)

## 🙏 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📞 Support

For issues and feature requests, please visit the [GitHub Issues](https://github.com/Younis7575/yir_neumorphic_bottom_bar/issues)  

---

**Made with ❤️ by Muhammad Younis**
import 'package:flutter/material.dart';

class NavigationItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const NavigationItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Icon(
          icon,
          size: 28,
          color: isSelected ? const Color(0xFF0D6EFD) : const Color(0xFF767676),
        ),
      ),
    );
  }
}
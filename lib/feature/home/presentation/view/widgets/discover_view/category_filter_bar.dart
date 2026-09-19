import 'package:flutter/material.dart';

class CategoryFilterBar extends StatefulWidget {
  const CategoryFilterBar({super.key});

  @override
  State<CategoryFilterBar> createState() => _CategoryFilterBarState();
}

class _CategoryFilterBarState extends State<CategoryFilterBar> {
  final List<String> categories = [
    'All',
    'Teshirts',
    'Jeans',
    'Shoes',
    'hghg',
    'gfhgfu',
  ];
  String selectedCategory = 'All';
  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categories.map((category) {
            final isSelected = category == selectedCategory;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedCategory = category;
                });
              },
              child: AnimatedContainer(
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                duration: Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  color: isSelected ? Color(0xff1e1e24) : Colors.transparent,
                  borderRadius: .circular(12),
                  border: .all(
                    color: isSelected ? Colors.transparent : Colors.black,
                    width: 1,
                  ),
                ),
                child: Text(
                  category,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                    fontSize: 15,
                    fontWeight: isSelected
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_store/core/util/app_router.dart';

import 'package:my_store/core/util/widgets/custom_text_field.dart';
import 'package:my_store/feature/home/presentation/view/widgets/discover_view/filter_bottom_sheet.dart';

import '../../../../../../core/util/styles.dart';
import 'category_filter_bar.dart';
import 'grid_view_item.dart';

class DiscoverView extends StatelessWidget {
  const DiscoverView({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Discover', style: Styles.textStyle32)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                SizedBox(
                  width: 281,
                  child: CustomTextField(
                    onTap: () {

                    },
                    hintText: 'Search for clothes...',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.mic),
                    readOnly: true,
                  ),
                ),

                const SizedBox(width: 10),
                SizedBox(
                  height: 52,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all(
                        ContinuousRectangleBorder(borderRadius: .circular(16)),
                      ),

                      backgroundColor: WidgetStateProperty.all(Colors.black),
                    ),

                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled:
                            true, // للسماح لها بأخذ مساحة أكبر إذا لزم الأمر
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        builder: (context) => const FilterBottomSheet(),
                      );
                    },
                    child: Icon(color: Colors.white, Icons.filter_alt),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            CategoryFilterBar(),
            SizedBox(height: 20),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.63,
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return GridViewItem();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

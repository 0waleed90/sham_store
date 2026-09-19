import 'package:flutter/material.dart';
import 'package:my_store/core/util/widgets/custom_text_field.dart';

import '../../../../../../core/util/styles.dart';
import '../discover_view/grid_view_item.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Search', style: Styles.textStyle32),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(12),
            child: CustomTextField(readOnly: false,
              hintText: 'Search for clothes...',
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.mic),
            ),
          ), SizedBox(
            height: 628,
            child: GridView.builder(
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
    );
  }
}

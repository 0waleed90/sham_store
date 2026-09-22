import 'package:flutter/material.dart';

import '../../../../../../core/util/styles.dart';
import '../discover_view/grid_view_item.dart';

class SavedView extends StatelessWidget {
  const SavedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Saved Items',style: Styles.textStyle32),),
    body:  SizedBox(
      height:MediaQuery.of(context).size.height*0.8,
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

    );
  }
}

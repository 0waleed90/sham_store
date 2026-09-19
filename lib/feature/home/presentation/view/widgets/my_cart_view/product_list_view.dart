import 'package:flutter/material.dart';
import 'package:my_store/feature/home/presentation/view/widgets/my_cart_view/product_list_view_item.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ProductListViewItem();
        },
      ),
    );
  }
}

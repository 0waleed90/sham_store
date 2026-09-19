import 'package:flutter/material.dart';
import 'package:my_store/core/util/styles.dart';
import 'package:my_store/feature/home/presentation/view/widgets/my_cart_view/count_control_widget.dart';

class ProductListViewItem extends StatelessWidget {
  const ProductListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: .circular(10),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(mainAxisAlignment: .spaceBetween,
          children: [
            ClipRRect(
              borderRadius: .circular(10),
              child: Image.asset('assets/photo/image (2).png', height: 83),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text('Regular Fit Slogan', style: Styles.textStyle14),
                  Text('Size L'),
                  SizedBox(height: 30),
                  Text(r'$10.22', style: Styles.textStyle14),
                ],
              ),
            ),
            Column(crossAxisAlignment: .end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: Colors.red),
                ),SizedBox(height: 20,),
                CountControlWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

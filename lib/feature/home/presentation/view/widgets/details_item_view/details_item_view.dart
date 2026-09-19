import 'package:flutter/material.dart';
import 'package:my_store/core/util/widgets/custom_button.dart';

import '../../../../../../core/util/styles.dart';

class DetailsItemView extends StatelessWidget {
  const DetailsItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Text('data'),
      appBar: AppBar(centerTitle: true, title: Text('Details')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Stack(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: .circular(10),
                    child: Image.asset(
                      'assets/photo/image (2).png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Align(
                  alignment: .xy(0.7, 1),
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: .circular(8),
                    ),
                    child: Icon(size: 25, Icons.favorite_border),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text('regular fit solgan', style: Styles.textStyle24),
            Row(
              children: [
                Icon(Icons.star, color: Color(0xffFCA728)),
                Text('4.0/5', style: Styles.textStyle14),
                Text(' (45 reviews)'),
              ],
            ),

            Text(
              'The name says it all, the right size slightly snugs the body leaving enough room for comfort in the sleeves and waist.',
            ),
            const Spacer(),
            Divider(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text('Price'),
                    Text('19.99', style: Styles.textStyle24),
                  ],
                ),

                CustomButton(
                  icon: Icons.shopping_bag,
                  text: 'Add to Cart',
                  color: Colors.black,
                  textColor: Colors.white,
                  width: 240,
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 50),
          ],

        ),
      ),
    );
  }
}

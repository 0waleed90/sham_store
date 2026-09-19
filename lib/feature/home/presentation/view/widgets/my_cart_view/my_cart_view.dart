import 'package:flutter/material.dart';
import 'package:my_store/core/util/styles.dart';
import 'package:my_store/core/util/widgets/custom_button.dart';
import 'package:my_store/feature/home/presentation/view/widgets/my_cart_view/product_list_view.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Scaffold(
        appBar: AppBar(title: Text('My Cart',style: Styles.textStyle32)),
        body: Column(
          crossAxisAlignment: .stretch,
          children: [
            ProductListView(),
            infoWidget('Sub-total', r'$ 5,870'),
            infoWidget('VAT (%)', r'$ 0.00'),
            infoWidget('Shipping fee', r'$ 80'),

            Expanded(child: Divider()),
            infoWidget('Total', r'$ 5,950'),
            SizedBox(height: 40,),
            CustomButton(
              text: 'Go To Checkout',
              color: Colors.black,
              textColor: Colors.white,
              width: 500,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Padding infoWidget(String leftText, String rightText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: .spaceBetween,

        children: [
          Text(
            leftText,
            style: Styles.textStyle20.copyWith(
              fontWeight: .w500,
              color: Color(0xff808080),
            ),
          ),
          Text(rightText, style: Styles.textStyle20),
        ],
      ),
    );
  }
}

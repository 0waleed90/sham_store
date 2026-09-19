import 'package:flutter/material.dart';
import 'package:my_store/core/util/styles.dart';

class CountControlWidget extends StatelessWidget {
  const CountControlWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        buildContainer('-'),
        SizedBox(width: 10,),
        Text('2',style: Styles.textStyle14,),
        SizedBox(width: 10,),
        buildContainer('+'),
      SizedBox(width: 10,)],

    );
  }

  Container buildContainer(String opr) {
    return Container(
      height: 23,
      width: 23,
      decoration: BoxDecoration(
        borderRadius: .circular(4),
        border: Border.all(color: Colors.black),
      ),
      child: Center(child: Text('+')),
    );
  }
}

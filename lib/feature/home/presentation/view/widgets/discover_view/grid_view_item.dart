import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_store/core/util/app_router.dart';
import 'package:my_store/core/util/styles.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kDetailsItemView);
      },
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: .circular(10),
                child: Image.asset('assets/photo/image (2).png'),
              ),
              Align(
                alignment: .xy(0.5, 0),
                child: Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: .circular(8),
                  ),
                  child: Icon(size: 20, Icons.favorite_border),
                ),
              ),
            ],
          ),
          Text('regular fit solgan',style: Styles.textStyle16,),
          Text(r'$1.98'),
        ],
      ),
    );
  }
}

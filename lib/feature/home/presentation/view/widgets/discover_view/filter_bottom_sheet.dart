import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_store/core/util/styles.dart';
import 'package:my_store/core/util/widgets/custom_button.dart';
import 'package:my_store/feature/home/presentation/view/widgets/discover_view/category_filter_bar.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

RangeValues _currrentRangeValues = const RangeValues(0, 19);

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        height: 405,
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text('Filter', style: Styles.textStyle24),
                IconButton(onPressed: () {Navigator.of(context,rootNavigator: true).pop();}, icon: Icon(Icons.close)),
              ],
            ),
            SizedBox(height: 40, child: Expanded(child: Divider())),
            Text('soted by'),
            CategoryFilterBar(),
            SizedBox(height: 40, child: Expanded(child: Divider())),
            Text('Price'),
            RangeSlider(
              values: _currrentRangeValues,
              max: 100,
              divisions: 100,
              activeColor: Colors.black,
              labels: RangeLabels(
                _currrentRangeValues.start.round().toString(),
                _currrentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currrentRangeValues = values;
                });
              },
            ),
            SizedBox(height: 50, child: Expanded(child: Divider())),
            CustomButton(
              text: 'Apply Filters',
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
}

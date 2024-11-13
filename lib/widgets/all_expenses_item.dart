import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/widgets/in_active_and_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpensesItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstCurve: Curves.easeOut,
      secondCurve: Curves.easeIn,
      sizeCurve: Curves.bounceOut,
      firstChild: ActiveAllExpensesItem(itemModel: itemModel),
      secondChild: InActiveAllExpensesItem(itemModel: itemModel),
      crossFadeState:
          isSelected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 400),
    );
  }
}

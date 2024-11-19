import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/income_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemModel});
  final IncomeDetailsModel itemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}

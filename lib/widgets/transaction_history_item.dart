import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/transaction_history_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.itemModel});
  final TransactionHistoryItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          itemModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          itemModel.date,
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(
          itemModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: itemModel.isWithDrawal
                ? const Color(0xFFF3735E)
                : const Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}

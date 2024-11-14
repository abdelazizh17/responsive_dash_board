import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/transaction_history_item_model.dart';
import 'package:responsive_dash_board/widgets/transaction_history_item.dart';

class TransactionHistoryItemListView extends StatelessWidget {
  const TransactionHistoryItemListView({super.key});
  static const items = [
    TransactionHistoryItemModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isWithDrawal: true,
    ),
    TransactionHistoryItemModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM ',
      amount: r'$2,000',
      isWithDrawal: false,
    ),
    TransactionHistoryItemModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 at 3:30 PM ',
      amount: r'$20,129',
      isWithDrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: TransactionHistoryItem(
              itemModel: items[index],
            ),
          );
        });
  }
}

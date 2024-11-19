import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/income_details_model.dart';
import 'package:responsive_dash_board/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeDetailsModel(
      color: Color(0xFF208BC7),
      title: 'Design service',
      value: '40%',
    ),
    IncomeDetailsModel(
      color: Color(0xFF4DB7F2),
      title: 'Design product',
      value: '25%',
    ),
    IncomeDetailsModel(
      color: Color(0xFF064060),
      title: 'Product royalti',
      value: '20%',
    ),
    IncomeDetailsModel(
      color: Color(0xFFE2DECD),
      title: 'Other',
      value: '22%',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: items
          .map(
            (e) => ItemDetails(itemModel: e),
          )
          .toList(),
    );
  }
}

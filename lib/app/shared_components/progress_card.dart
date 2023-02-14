import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_management/app/constans/app_constants.dart';

import '../features/dashboard/views/screens/page_one.dart';

class ProgressCardData {
  final int totalUndone;
  final int totalTaskInProress;

  const ProgressCardData({
    required this.totalUndone,
    required this.totalTaskInProress,
  });
}

class ProgressCard extends StatelessWidget {
  const ProgressCard({
    required this.data,
    required this.onPressedCheck,
    Key? key,
  }) : super(key: key);

  final ProgressCardData data;
  final Function() onPressedCheck;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(kBorderRadius),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Transform.translate(
                offset: const Offset(30, 10),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: SvgPicture.asset(
                    ImageVectorPath.happy2,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 250,
              top: kSpacing,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "لديك  ${data.totalUndone}   مهام غير منتهية",
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  "${data.totalTaskInProress} المهام قيد المعالجه",
                  style: TextStyle(color: kFontColorPallets[1]),
                ),
                const SizedBox(height: kSpacing),
                MaterialButton(
                  onPressed: onPressedCheck,
                  child: const Text("افحص"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

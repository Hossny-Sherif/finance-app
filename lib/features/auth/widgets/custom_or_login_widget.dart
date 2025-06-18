import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOrLoginWidget extends StatelessWidget {
  const CustomOrLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100.w,
          child: const Divider(),
        ),
        const WidthSpace(12),
        Text(
          "Or Login With",
          style: AppStyles.black15BoldStyle
              .copyWith(color: const Color(0xff6A707C)),
        ),
        const WidthSpace(12),
        SizedBox(
          width: 100.w,
          child: const Divider(),
        ),
      ],
    );
  }
}

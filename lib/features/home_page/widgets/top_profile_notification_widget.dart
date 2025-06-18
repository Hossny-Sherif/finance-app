import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopProfileNotificationWidget extends StatelessWidget {
  const TopProfileNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.asset(
                AppAssets.profileImage,
                width: 48.w,
                height: 48.w,
                fit: BoxFit.fill,
              ),
            ),
            WidthSpace(11),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back",
                  style: AppStyles.grey12MediumStyle
                      .copyWith(color: const Color(0xff6A707C)),
                ),
                const HeightSpace(2),
                Text(
                  "Abdallah Yassein",
                  style: AppStyles.black18BoldStyle,
                ),
              ],
            )
          ],
        ),
        Container(
          width: 48.w,
          height: 48.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Color(0xffE3E9ED), width: 1),
          ),
          child: Icon(
            Icons.notifications,
            size: 24.sp,
            color: AppColors.primaryColor,
          ),
        )
      ],
    );
  }
}

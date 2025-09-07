import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/custom_back_button.dart';
import 'package:grad_comp/core/widgets/custom_network_image.dart';
import 'package:grad_comp/core/routing/routes.dart';
import 'profile_action_menu.dart';

class ProfileHeader extends StatelessWidget {
  final String backgroundImageUrl;
  final String profileImageUrl;
  final String name;
  final String title;
  final bool isOwner;
  final double? averageRating;
  final int? reviewCount;
  final String? fallBackImage;
  final String userId;

  const ProfileHeader(
      {super.key,
        required this.userId,
      required this.backgroundImageUrl,
      required this.profileImageUrl,
      required this.name,
      required this.title,
      required this.isOwner,
      this.averageRating,
      this.reviewCount,
      this.fallBackImage});

  @override
  Widget build(BuildContext context) {
    // تم تحويله إلى Column عادي بدلاً من SliverToBoxAdapter
    return Column(
      children: [
        SizedBox(
          height: 180.h,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Positioned.fill(
                  child: GestureDetector(
                    onTap: () {
                      if (backgroundImageUrl.isNotEmpty) {
                        context.pushNamed(Routes.imageViewerScreen, arguments: backgroundImageUrl);
                      }
                    },
                child: CustomNetworkImage(
                  imageUrl: backgroundImageUrl,
                  borderRadius: 0,
                  fit: BoxFit.cover,
                ),
              )),
              Positioned(
                top: 45.h,
                left: 16.w,
                right: 16.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (!isOwner) // زر الرجوع يظهر فقط للزائر
                      const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: CustomBackButton())
                    else // نضع ويدجت فارغ للحفاظ على التوازن
                      const SizedBox(width: 48),
                    ProfileActionMenu(isOwner: isOwner,userId: userId,backgroundImage: backgroundImageUrl,profileImage: profileImageUrl,),
                  ],
                ),
              ),
              Positioned(
                  bottom: -50.r, // نصف قطر الدائرة
                  child: GestureDetector(
                    onTap: () {
                      if (profileImageUrl.isNotEmpty) {
                        context.pushNamed(Routes.imageViewerScreen, arguments: profileImageUrl);
                      }
                    },
                    child: CircleAvatar(
                      radius: 50.r,
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CustomNetworkImage(
                          fallbackIcon: Icons.person,
                          imageUrl: profileImageUrl,
                          width: 94,
                          height: 94,
                          borderRadius: 47,
                          fallbackImagePath: fallBackImage,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(height: 55.h),
        // مساحة لتعويض ارتفاع صورة البروفايل
        Text(name, style: TextStyles.font22BlackBold),
        SizedBox(height: 4.h),
        Text(title, style: TextStyles.font13GrayW400),

        SizedBox(height: 8.h),
        if (averageRating != null && averageRating! >= 0) _buildRatingStars(),
      ],
    );
  }

  Widget _buildRatingStars() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star_rounded, color: Colors.amber, size: 20.sp),
        SizedBox(width: 4.w),
        Text(
          averageRating!.toStringAsFixed(1), // لعرض رقم واحد بعد الفاصلة
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        SizedBox(width: 4.w),
        Text(
          '(${reviewCount ?? 0} reviews)',
          style: TextStyles.font13GrayW400,
        ),
      ],
    );
  }
}

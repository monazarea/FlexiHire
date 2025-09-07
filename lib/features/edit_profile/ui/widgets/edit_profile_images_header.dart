import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/widgets/custom_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/update_image/update_cover_image_cubit.dart';
import '../../logic/update_image/update_profile_image_cubit.dart';

class EditProfileImagesHeader extends StatelessWidget {
  final String backgroundImageUrl;
  final String profileImageUrl;
  final String? fallbackProfileIcon;

  const EditProfileImagesHeader({
    super.key,
    required this.backgroundImageUrl,
    required this.profileImageUrl,
    this.fallbackProfileIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // --- ١. حاوية صورة الخلفية ---
        SizedBox(
          height: 180.h, // ارتفاع أقل قليلاً لإعطاء مساحة لصورة البروفايل
          child: Stack(
            fit: StackFit.expand,
            children: [
              CustomNetworkImage(
                imageUrl: backgroundImageUrl,
                borderRadius: 0,
                fit: BoxFit.cover,
              ),
              // زر تعديل صورة الخلفية
              Positioned(
                bottom: 8.r,
                right: 16.r,
                child: _buildEditIconButton(
                  onPressed: () => context.read<UpdateCoverImageCubit>().pickAndUploadImage(),
                ),
              ),
            ],
          ),
        ),

        // --- ٢. حاوية صورة البروفايل (مع سحبها للأعلى) ---
        Transform.translate(
          // نسحب الويدجت للأعلى بمقدار نصف قطر الدائرة
          offset: Offset(0, -45.h),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              // صورة البروفايل نفسها
              CircleAvatar(
                radius: 50.r,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CustomNetworkImage(
                    fallbackIcon: Icons.person,
                    imageUrl: profileImageUrl,
                    width: 92,
                    height: 92,
                    borderRadius: 46,
                    fallbackImagePath: fallbackProfileIcon,
                  ),
                ),
              ),
              // زر تعديل صورة البروفايل
              // نستخدم Transform.translate مرة أخرى لتعديل مكان الأيقونة
              Transform.translate(
                offset: Offset(5.w, -5.h),
                child: _buildEditIconButton(
                  onPressed: () => context.read<UpdateProfileImageCubit>().pickAndUploadImage(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // دالة مساعدة لإنشاء زر التعديل الدائري
  Widget _buildEditIconButton({required VoidCallback onPressed}) {
    return Container(
      width: 35.r,
      height: 35.r,
      child: Material(
        color: Colors.white,

        shape: const CircleBorder(),
        clipBehavior: Clip.antiAlias,
        child: IconButton(

          icon: Icon(Icons.camera_alt, color: ColorsManager.secondary, size: 18.sp),
          onPressed: onPressed,
          tooltip: 'Change photo',
          constraints: const BoxConstraints(),
          padding: const EdgeInsets.all(8.0),
        ),
      ),
    );
  }
}
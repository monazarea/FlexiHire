import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import '../../../../core/theming/colors.dart';
import '../../../core/routing/routes.dart';
import '../job_seeker/logic/profile_tab/job_seeker_profile_cubit.dart';

class ProfileInfoCard extends StatelessWidget {
  final String displayName;
  final String? jobTitle;
  final String? description;
  final String imageUrl;
  final bool isOwner;
  final int userId;

  const ProfileInfoCard({
    super.key,
    required this.displayName,
    required this.jobTitle,
    required this.description,
    required this.imageUrl,
    this.isOwner = false,
    required this.userId,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        _buildInfoCard(),
        _buildProfileAvatar(),
        if (isOwner) _buildEditButton(context),
      ],
    );
  }

  Widget _buildInfoCard() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 55.h),
      padding: EdgeInsets.fromLTRB(24.w, 65.h, 24.w, 24.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border(top: BorderSide(color: Colors.grey.withOpacity(0.4))),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            ColorsManager.primary.withOpacity(.3),
            ColorsManager.secondary.withOpacity(0.1),
          ],
        ),
      ),
      child: Column(
        children: [
          Text(
            displayName,
            style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4.h),
          Text(
            jobTitle ?? 'N/A',
            style: TextStyle(fontSize: 16.sp, color: Colors.grey[600]),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text(
            description ?? 'No description available.',
            style: TextStyle(fontSize: 14.sp, color: Colors.grey[700]),
            textAlign: TextAlign.center,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildProfileAvatar() {
    return Positioned(
      top: 0,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: CircleAvatar(
          radius: 55.r,
          backgroundImage: NetworkImage(imageUrl),
          onBackgroundImageError: (exception, stackTrace) {
            debugPrint('Error loading profile image: $exception');
          },
        ),
      ),
    );
  }

  Widget _buildEditButton(BuildContext context) {
    return Positioned(
      top: 50.h,
      right: 5.w,
      child: IconButton(
        icon: Icon(
          Icons.edit,
          color: ColorsManager.primary,
          size: 24.r,
        ),
        onPressed: () {
          _onEditIconPressed(context);
        },
      ),
    );
  }

  void _onEditIconPressed(BuildContext context) {
    context.pushNamed(Routes.editProfileScreen).then((_){
      context.read<JobSeekerProfileCubit>().getJobSeekerProfile(userId.toString());

    });
  }
}
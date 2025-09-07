import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/widgets/custom_back_button.dart';
import 'package:grad_comp/features/edit_profile/logic/update_image/update_image_state.dart';
import 'package:grad_comp/features/edit_profile/ui/widgets/edit_profile_images_header.dart';
import 'package:grad_comp/features/edit_profile/ui/widgets/update_cv/update_cv_section.dart';
import 'package:grad_comp/features/edit_profile/ui/widgets/update_decription_section.dart';
import 'package:grad_comp/features/edit_profile/ui/widgets/update_email_section.dart';
import 'package:grad_comp/features/edit_profile/ui/widgets/update_location_section.dart';
import 'package:grad_comp/features/edit_profile/ui/widgets/update_skills_jobs/update_skills_jobs_section.dart';
import 'package:grad_comp/features/home/data/models/companies/company_model.dart';
import '../../../core/di/dependency_injection.dart';
import '../../../core/helpers/constants.dart';
import '../../../core/helpers/shared_pref_helper.dart';
import '../../get_skills_and_jobs/logic/skills_jobs_cubit.dart';
import '../../profiles/company/data/models/company_profile_response.dart';
import '../../profiles/job_seeker/data/models/profile_tab_models/job_seeker_profile_response_model.dart';
import '../data/repos/edit_profile_repo.dart';
import '../logic/edit_cv/update_cv_cubit.dart';
import '../logic/edit_description/update_description_cubit.dart';
import '../logic/edit_location/update_location_cubit.dart';
import '../logic/edit_name/edit_name_cubit.dart';
import '../logic/update_image/update_cover_image_cubit.dart';
import '../logic/update_image/update_profile_image_cubit.dart';
import '../logic/update_skills_jobs/update_skills_jobs_cubit.dart';
import 'widgets/update_name_section.dart';

class EditProfileScreen extends StatefulWidget {
  final dynamic profileData;
  const EditProfileScreen({super.key, required this.profileData});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  bool _hasMadeChanges = false;
  String _profileImageUrl = '';
  String _backgroundImageUrl = '';
  String _initialFirstName = '';
  String _initialLastName = '';
  String _initialDescription = '';
  String _initialLocation = '';
  String _userRole = '';
  String _initialCvUrl = '';

  @override
  void initState() {
    super.initState();
    if (widget.profileData is CompanyModel || widget.profileData is CompanyProfileData) { // نفحص كلا النوعين المحتملين للشركة
      _userRole = 'company';
    } else if (widget.profileData is JobSeekerProfileData) {
      _userRole = 'user';
    }
    print(";😔😔😔😔😔😔😔😔😔$_userRole");
    _profileImageUrl = widget.profileData.imageUrl ?? '';
    _backgroundImageUrl = widget.profileData.backgroundUrl ?? '';
    _initialFirstName = widget.profileData.firstName ?? '';
    _initialLastName = widget.profileData.lastName ?? '';
    _initialDescription = widget.profileData.description ?? '';
    _initialLocation = widget.profileData.location ?? '';
    _initialCvUrl = widget.profileData.cv ?? '';
  }

  void _markAsChanged() {
    if (!_hasMadeChanges) {
      setState(() {
        _hasMadeChanges = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final headerHeight = 235.h;

    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, _hasMadeChanges);
        return false;
      },
      child: Scaffold(
        backgroundColor: ColorsManager.moreLightBlue,
        // -- V  بداية التعديل: إضافة MultiBlocListener هنا V --
        body: MultiBlocListener(
          listeners: [
            // المستمع الخاص بصورة البروفايل
            BlocListener<UpdateProfileImageCubit, UpdateImageState>(
              listener: (context, state) {
                if (state is ProfileImageSuccess) {
                  setState(() => _profileImageUrl = state.newImageUrl);
                  _markAsChanged();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.message), backgroundColor: Colors.green),
                  );
                } else if (state is ProfileImageError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.error), backgroundColor: Colors.red),
                  );
                }
              },
            ),
            // المستمع الخاص بصورة الخلفية
            BlocListener<UpdateCoverImageCubit, UpdateImageState>(
              listener: (context, state) {
                if (state is CoverImageSuccess) {
                  setState(() => _backgroundImageUrl = state.newImageUrl);
                  _markAsChanged();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.message), backgroundColor: Colors.green),
                  );
                } else if (state is CoverImageError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.error), backgroundColor: Colors.red),
                  );
                }
              },
            ),
          ],
          // -- ^ نهاية التعديل ^ --
          child: Stack(
            children: [
              ListView(
                padding: EdgeInsets.only(top: headerHeight+10, left: 24.w, right: 24.w, bottom: 24.h),
                children: [
                  BlocProvider(
                    create: (context) {
                      return EditNameCubit(
                        getIt<EditProfileRepo>(),
                        _initialFirstName,
                        _initialLastName,
                      );
                    },
                    child: UpdateNameSection(onUpdateSuccess: _markAsChanged),
                  ),
                  SizedBox(height: 24.h),
                  BlocProvider(
                    create: (context) => UpdateDescriptionCubit(
                      getIt<EditProfileRepo>(),
                      _initialDescription, // نمرر الوصف الأولي الذي استخلصناه
                    ),
                    child: UpdateDescriptionSection(onUpdateSuccess: _markAsChanged),
                  ),
                  //SizedBox(height: 24.h),
                  //UpdateEmailSection(onUpdateSuccess: _markAsChanged),

                  SizedBox(height: 24.h),
                  BlocProvider(
                    create: (context) => UpdateLocationCubit(
                      getIt<EditProfileRepo>(),
                      _initialLocation,
                    ),
                    child: UpdateLocationSection(onUpdateSuccess: _markAsChanged),
                  ),
                  SizedBox(height: 24.h,),
                  if (_userRole == 'user')
                  MultiBlocProvider(
                    providers: [
                      BlocProvider(create: (context) => getIt<SkillsJobsCubit>()),
                      BlocProvider(create: (context) => getIt<UpdateSkillsJobsCubit>()),
                    ],
                    child: UpdateSkillsJobsSection(
                      onUpdateSuccess: _markAsChanged,
                      initialJob: widget.profileData.job,
                      initialSkills: widget.profileData.skills,
                    ),
                  ),
                  SizedBox(height: 24.h),

                  // --- قسم تحديث الـ CV ---
                  BlocProvider(
                    create: (context) => getIt<UpdateCvCubit>(),
                    child: UpdateCvSection(
                      initialCvUrl:  widget.profileData.cv ?? '', // افترضت أن لديك هذا المتغير
                      onUpdateSuccess: _markAsChanged,
                    ),
                  ),
                ],
              ),
              EditProfileImagesHeader(
                backgroundImageUrl: _backgroundImageUrl,
                profileImageUrl: _profileImageUrl,
                //onUpdateSuccess: _markAsChanged,
              ),
              Positioned(
                top: 45.h,
                left: 16.w,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: CustomBackButton(
                    onPressed: () {
                      Navigator.pop(context, _hasMadeChanges);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


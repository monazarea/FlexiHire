import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/core/routing/routes.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/widgets/custom_network_image.dart';
import '../../../data/models/companies/company_model.dart';

class TopCompaniesListViewItem extends StatelessWidget {
  final CompanyModel companyModel;
  const TopCompaniesListViewItem({super.key, required this.companyModel});

  @override
  Widget build(BuildContext context) {
    String companyDisplayName = companyModel.firstName ?? '';
    if ((companyModel.lastName?.isNotEmpty ?? false) &&
        companyModel.lastName!.toLowerCase() != 'company') {
      companyDisplayName += ' ${companyModel.lastName}';
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 10.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              context.pushNamed(
                Routes.companyProfileScreen,
                arguments: companyModel.id.toString(),
              );
            },
            borderRadius: BorderRadius.circular(60.r),
            child: Container(
              width: 40.w,
              height: 40.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border:
                Border.all(color: ColorsManager.primary.withOpacity(0)),
              ),
              child: ClipOval(
                child: CustomNetworkImage(
                  imageUrl: companyModel.imageUrl,
                  width: 40.w,
                  height: 40.w,
                  fit: BoxFit.cover,
                  fallbackImagePath: 'assets/images/company_replacement1.png',
                ),
              ),
            ),
          ),
          SizedBox(height: 6.h),
          SizedBox(
            width: 70.w,
            child: Text(
              companyDisplayName,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: ColorsManager.dark,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

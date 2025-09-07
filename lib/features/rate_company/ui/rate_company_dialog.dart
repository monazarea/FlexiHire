

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart'; // 1. إضافة import
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/di/dependency_injection.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/app_text_button.dart';
import 'package:grad_comp/core/widgets/app_text_form_field.dart';
import 'package:grad_comp/features/profiles/company/data/models/company_profile_response.dart';
import 'package:grad_comp/features/rate_company/logic/rate_company_cubit.dart';
import 'package:grad_comp/features/rate_company/logic/rate_company_state.dart';

class RateCompanyDialog extends StatefulWidget {
  final CompanyProfileData companyData;

  const RateCompanyDialog({super.key, required this.companyData});

  @override
  State<RateCompanyDialog> createState() => _RateCompanyDialogState();
}

class _RateCompanyDialogState extends State<RateCompanyDialog> {
  double _rating = 3.0;
  final _commentController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RateCompanyCubit>(),
      child: BlocConsumer<RateCompanyCubit, RateCompanyState>(
        listener: (context, state) {
          switch (state) {
            case RateCompanySuccess(response: final response):
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(response.message ?? 'Review submitted successfully!'),
                  backgroundColor: Colors.green,
                ),
              );
              Navigator.of(context).pop(true);
              break;
            case RateCompanyError(apiErrorModel: final apiErrorModel):
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(apiErrorModel.message ?? 'An error occurred.'),
                  backgroundColor: Colors.red,
                ),
              );
              break;
            default:
              break;
          }
        },
        builder: (context, state) {
          return Dialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Rate ${widget.companyData.firstName}', style: TextStyles.font18BlackBold),
                    SizedBox(height: 16.h),
                    RatingBar.builder(
                      initialRating: _rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber),
                      onRatingUpdate: (rating) {
                        setState(() {
                          _rating = rating;
                        });
                      },
                    ),
                    SizedBox(height: 24.h),
                    AppTextFormField(
                      controller: _commentController,
                      hintText: 'Write your comment...',
                      maxLines: 4,
                      // 2. إضافة validator
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please write a comment for your review.';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 24.h),
                    SizedBox(
                      width: double.infinity,
                      // 3. تم تعديل هذا الجزء لعرض التحميل بشكل صحيح
                      child: BlocBuilder<RateCompanyCubit, RateCompanyState>(
                        builder: (context, state) {
                          if (state is RateCompanySubmitting) {
                            return const Center(child: CircularProgressIndicator());
                          }
                          return AppTextButton(
                            buttonText: 'Submit Review',
                            // 4. إضافة textStyle
                            textStyle: TextStyles.font16WhiteW600,
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                context.read<RateCompanyCubit>().submitReview(
                                  companyData: widget.companyData,
                                  rating: _rating.toInt(),
                                  comment: _commentController.text,
                                );
                              }
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
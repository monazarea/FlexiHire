import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import 'package:flutter_animate/flutter_animate.dart';

class JobBanner extends StatefulWidget {
  const JobBanner({super.key});

  @override
  State<JobBanner> createState() => _JobBannerState();
}

class _JobBannerState extends State<JobBanner> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(_controller);
    _scaleAnimation.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        _controller.forward();
      },
      onTapUp: (_) {
        _controller.reverse();
      },
      onTapCancel: () {
        _controller.reverse();
      },
      onTap: () {
        print("Job Banner Tapped!");
      },
      child: Transform.scale(
        scale: _scaleAnimation.value,
        child: Stack(
          children: [
            // ================== التعديل هنا ==================
            // 1. تم حذف الـ Container الخاص بالـ boxShadow بالكامل
            // ===============================================
            Container(
              height: 210.h,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    ColorsManager.secondary.withOpacity(1),
                    ColorsManager.primary.withOpacity(0.05),
                  ],
                ),
                border: Border.all(
                  color: Colors.grey.shade200,
                  width: 2.0,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30.h),
                        const Text(
                          "Let's find a new job\nsuitable for you",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: ColorsManager.dark),
                        ),
                        SizedBox(height: 30.h),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: ElevatedButton(
                            onPressed: null,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorsManager.secondary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            child:
                            Text('Job List', style: TextStyles.font18WhiteW600),
                          ),
                        ),
                      ],
                    ),
                  ).animate().fadeIn(delay: 400.ms, duration: 400.ms).slideX(begin: -0.5, end: 0.0, duration: 400.ms),
                  ClipRRect(
                    child: Image.asset(
                      'assets/images/job_banner_person.png',
                      width: 170.w,
                      height: 190.h,
                      fit: BoxFit.cover,
                    ),
                  ).animate().fadeIn(delay: 200.ms, duration: 400.ms).slideX(begin: 0.5, end: 0.0, duration: 400.ms),
                ],
              ),
            )
                .animate()
                .fadeIn(duration: 600.ms)
                .slideY(begin: 0.1, end: 0.0, duration: 600.ms),
          ],
        ),
      ),
    );
  }
}
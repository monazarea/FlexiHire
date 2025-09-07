import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theming/styles.dart';
import '../../core/widgets/custom_back_button.dart';

// تعريف الألوان الأساسية لتسهيل التعديل
const Color aboutUsCardBackgroundColor = Colors.white;
const Color aboutUsScreenBackgroundColor = Color(0xFFF9F9F9);

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: aboutUsScreenBackgroundColor,

      appBar: AppBar(
        leading: const CustomBackButton(), // ← الباك بوتن الخاص بيك
        centerTitle: true,
        title: Text(
          "About Us",
          style:TextStyles.font16BlackBold.copyWith(
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w500,
              fontSize: 20
          ),
        ),        backgroundColor: aboutUsCardBackgroundColor,
        surfaceTintColor: Colors.transparent, // لإزالة التلوين عند السكرول
        elevation: 1,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- قسم الكروت العلوية ---
            _FeatureCard(
              title: 'Empowering Flexibility',
              icon: Icons.track_changes_rounded,
              borderColor: Colors.blue.shade400,
              iconColor: Colors.blue.shade400,
              content: const Text(
                'Flexihire is built on the belief that work should adapt to life. We connect companies with talent seeking flexible roles, fostering a community where both thrive.',
                style: TextStyle(fontSize: 14, color: Colors.black54, height: 1.5),
              ),
            ),
            SizedBox(height: 16.h),
            _FeatureCard(
              title: 'How It Works',
              icon: Icons.settings_suggest_outlined,
              borderColor: Colors.green.shade400,
              iconColor: Colors.green.shade400,
              content: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('✓ Companies: Post jobs, screen candidates, hire fast.'),
                  SizedBox(height: 4),
                  Text('✓ Job Seekers: Apply in clicks, get matched instantly.'),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            _FeatureCard(
              title: 'Why Choose Us?',
              icon: Icons.star_border_rounded,
              borderColor: Colors.purple.shade300,
              iconColor: Colors.orange.shade400,
              content: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('✓ AI-powered job matching'),
                  SizedBox(height: 4),
                  Text('✓ Transparent hiring process'),
                  SizedBox(height: 4),
                  Text('✓ Dedicated support 24/7'),
                ],
              ),
            ),
            SizedBox(height: 40.h),

            // --- قسم فريق القيادة ---
            const Text(
              'Leadership Team',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.h),
            const Text(
              'We are a team passionate about creating great experiences for our customers.',
              style: TextStyle(fontSize: 15, color: Colors.black54),
            ),
            SizedBox(height: 24.h),
            _TeamMemberCard(
              initials: 'MW',
              name: 'Mohamed Wael',
              title: 'Co-founder & CEO',
              onLinkedIn: () {},
              onGithub: () {},
              onTwitter: () {},
            ),
            SizedBox(height: 16.h),
            _TeamMemberCard(
              initials: 'IE',
              name: 'Ibrahim Elshorbagy',
              title: 'Co-founder & CTO',
              onLinkedIn: () {},
              onGithub: () {},
              onTwitter: () {},
            ),
            SizedBox(height: 16.h),
            _TeamMemberCard(
              initials: 'MS',
              name: 'Mahmoud Shetaiah',
              title: 'CPO',
              onLinkedIn: () {},
              onGithub: () {},
              onTwitter: () {},
            ),
          ],
        ),
      ),
    );
  }
}

// --- ويدجت مساعد للكروت العلوية ---
class _FeatureCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color borderColor;
  final Color iconColor;
  final Widget content;

  const _FeatureCard({
    required this.title,
    required this.icon,
    required this.borderColor,
    required this.iconColor,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: aboutUsCardBackgroundColor,
        borderRadius: BorderRadius.circular(12.r),
        border: Border(top: BorderSide(color: borderColor, width: 3)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: iconColor, size: 24),
              SizedBox(width: 8.w),
              Text(
                title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Divider(height: 24),
          content,
        ],
      ),
    );
  }
}

// --- ويدجت مساعد لأعضاء الفريق ---
class _TeamMemberCard extends StatelessWidget {
  final String initials;
  final String name;
  final String title;
  final VoidCallback onLinkedIn;
  final VoidCallback onGithub;
  final VoidCallback onTwitter;

  const _TeamMemberCard({
    required this.initials,
    required this.name,
    required this.title,
    required this.onLinkedIn,
    required this.onGithub,
    required this.onTwitter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: aboutUsCardBackgroundColor,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundColor: Colors.grey.shade200,
            child: Text(
              initials,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height: 4.h),
                Text(title, style: const TextStyle(color: Colors.black54)),
              ],
            ),
          ),
          // يمكنك استخدام مكتبة مثل font_awesome_flutter لأيقونات أفضل
          IconButton(onPressed: onLinkedIn, icon: const Icon(Icons.link), tooltip: 'LinkedIn'),
          IconButton(onPressed: onGithub, icon: const Icon(Icons.code), tooltip: 'GitHub'),
        ],
      ),
    );
  }
}
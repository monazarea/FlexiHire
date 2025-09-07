// lib/features/profiles/company/ui/company_profile_screen_args.dart

class CompanyProfileScreenArgs {
  final String companyId;
  final int? highlightJobId;
  final int initialTabIndex;

  CompanyProfileScreenArgs({
    required this.companyId,
    this.highlightJobId,
    this.initialTabIndex = 0, // 0 هو الـ "Profile" tab بشكل افتراضي
  });
}
import 'package:grad_comp/features/home/data/models/jobs/job_model.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_company_model.dart';

import '../../features/profiles/company/data/models/company_job_model.dart';

extension CompanyJobMapper on CompanyJobModel {
  JobModel toJobModel() {
    return JobModel(
      id: id,
      title: title,
      location: location,
      datePosted: datePosted,
      description: null,
      skills: null,
      minSalary: minSalary,
      maxSalary: maxSalary,
      salaryNegotiable: null,
      paymentPeriod: null,
      paymentCurrency: null,
      hiringMultipleCandidates: null,
      saved: false,
      company: JobCompanyModel(
        id: -1,
        firstName: '', // مفيش بيانات كاملة للشركة هنا
        lastName: '',
        imageUrl: '',
      ),
    );
  }
}

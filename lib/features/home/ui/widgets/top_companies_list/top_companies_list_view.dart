import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/models/companies/company_model.dart';
import 'top_companies_list_view_item.dart';

class TopCompaniesListView extends StatefulWidget {
  final List<CompanyModel> companiesListModel;

  const TopCompaniesListView({super.key, required this.companiesListModel});

  @override
  State<TopCompaniesListView> createState() => _TopCompaniesListViewState();
}

class _TopCompaniesListViewState extends State<TopCompaniesListView> {
  final ScrollController _scrollController = ScrollController();
  final double itemWidth = 80.0;
  final double itemSpacing = 12.0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients && widget.companiesListModel.isNotEmpty) {
        final middleIndex = ((widget.companiesListModel.length - 1) / 2).floor();
        final double offset = middleIndex * (itemWidth + itemSpacing);
        _scrollController.jumpTo(offset);
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: widget.companiesListModel.length,
        separatorBuilder: (context, index) => SizedBox(width: itemSpacing.w),
        itemBuilder: (context, index) {
          return TopCompaniesListViewItem(companyModel: widget.companiesListModel[index]);
        },
      ),
    );
  }
}
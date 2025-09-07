import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_model.dart';
import 'horizontal_job_card.dart';

class HorizontalJobsList extends StatefulWidget {
  final List<JobModel> jobsList;

  const HorizontalJobsList({super.key, required this.jobsList});

  @override
  State<HorizontalJobsList> createState() => _HorizontalJobsListState();
}

class _HorizontalJobsListState extends State<HorizontalJobsList> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients &&
          widget.jobsList.isNotEmpty &&
          _scrollController.position.maxScrollExtent > 0) {
        final cardWidth = 280.w;
        final spacing = 20.w;
        final screenCenter = MediaQuery.of(context).size.width / 2;
        final middleIndex = (widget.jobsList.length / 2).floor();

        final offset = (middleIndex * (cardWidth + spacing)) - screenCenter + (cardWidth / 2);
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
      height: 120.h,
      child: ListView.separated(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: widget.jobsList.length,
        separatorBuilder: (context, index) => SizedBox(width: 20.w),
        itemBuilder: (context, index) {
          return HorizontalJobCard(job: widget.jobsList[index]);
        },
      ),
    );
  }
}

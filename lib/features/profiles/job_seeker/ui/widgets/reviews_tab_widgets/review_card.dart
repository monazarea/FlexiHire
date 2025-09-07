import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/features/profiles/job_seeker/data/models/reviews_tab_models/review_model.dart';
import 'package:grad_comp/features/profiles/widgets/base_info_card.dart';
import 'review_header.dart';

// 1. تم تحويل الويدجت إلى StatefulWidget
class ReviewCard extends StatefulWidget {
  final ReviewModel review;
  final VoidCallback? onTap;
  final VoidCallback? onDeleteTapped;
  final VoidCallback? onCompanyTap;

  const ReviewCard({
    super.key,
    required this.review,
    this.onTap,
    this.onDeleteTapped,
    this.onCompanyTap,

  });

  @override
  State<ReviewCard> createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  bool _isDeleteIconHighlighted = false;

  @override
  Widget build(BuildContext context) {
    return BaseInfoCard(
      onTap: widget.onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReviewHeader(context:context,review: widget.review,onCompanyTap:widget.onCompanyTap),
              if (widget.review.comment != null &&
                  widget.review.comment!.isNotEmpty) ...[
                SizedBox(height: 12.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                        widget.review.comment!,
                        style: TextStyles.font13GrayW400.copyWith(height: 1.4),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    if (widget.onDeleteTapped != null)
                      InkWell(
                        onTap: widget.onDeleteTapped,
                        onHighlightChanged: (isHighlighted) {
                          setState(() {
                            _isDeleteIconHighlighted = isHighlighted;
                          });
                        },
                        customBorder: const CircleBorder(),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.delete_outline,
                            // لون الأيقونة يتغير بناءً على حالة التمييز
                            color: _isDeleteIconHighlighted
                                ? Colors.red
                                : Colors.grey.shade600,
                            size: 25,
                          ),
                        ),
                      ),
                  ],
                ),
              ]
            ],
          ),
    );
  }
}
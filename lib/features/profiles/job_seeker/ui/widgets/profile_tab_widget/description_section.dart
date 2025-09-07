import 'package:flutter/material.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/section_container.dart';
import 'package:grad_comp/core/widgets/section_title.dart';
import 'empty_state_widget.dart'; // ستحتاجين لإنشاء هذا الويدجت أو استبداله بـ Text

class DescriptionSection extends StatelessWidget {
  final String? description;
  final String title;

  const DescriptionSection({
    super.key,
    required this.description,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: title,),
          (description == null || description!.isEmpty)
              ? const EmptyStateWidget(message: 'No description has been added yet.')
              : Text(
            description!,
            style: TextStyles.font13GrayW400.copyWith(height: 1.5,fontSize: 16),
          ),
        ],
      ),
    );
  }
}
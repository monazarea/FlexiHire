import 'package:flutter/material.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/custom_back_button.dart';

class JobDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isSaved;
  final double? appBarHeight;

  const JobDetailsAppBar({super.key, required this.isSaved,this.appBarHeight});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CustomBackButton(),
      ),
      title: Text('Details', style: TextStyles.font18BlackBold),
      backgroundColor: Colors.white,
      elevation: 0,

    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight??kToolbarHeight);
}
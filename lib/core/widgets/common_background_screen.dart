import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/helpers/extensions.dart';

class CommonBackgroundScreen extends StatelessWidget {
  final String title;
  final Widget child; // this will be your custom body

  const CommonBackgroundScreen({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background Image
            Image.asset(
              'assets/images/BG.png',
              width: double.infinity,
              fit: BoxFit.cover,

            ),
            // Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 30.h),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       IconButton(
            //         icon: const Icon(Icons.arrow_back),
            //         padding: EdgeInsets.zero,
            //         iconSize:30 ,
            //         color: Colors.white,
            //         onPressed: () {
            //           context.pop();
            //         },
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.w, vertical: 50.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Back Button
                  const SizedBox(height: 25),

                  // Screen Title
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 125),

                  // Custom screen content
                  child,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

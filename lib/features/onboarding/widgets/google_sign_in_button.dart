import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theming/constants.dart';
import '../../../core/theming/styles.dart';

class GoogleSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Implement Google Sign-In logic
      },
      child: Container(
       // margin: const EdgeInsets.symmetric( horizontal: Dimentions.between_space),

        height: 53,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svgs/google.svg',height: 20,),
            const SizedBox(width: 10),
            Text('Continue with Google',
              style: TextStyles.font16BlackBold),


          ],
        ),
      ),
    );
  }
}

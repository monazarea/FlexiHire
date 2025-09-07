import 'package:flutter/material.dart';
import 'package:grad_comp/core/helpers/extensions.dart';

import '../../../core/routing/routes.dart';
import '../../../core/theming/constants.dart';


class CreateAccountButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.pushNamed(Routes.signUpScreen);
      },
      child: Container(
        //margin: const EdgeInsets.symmetric( horizontal: Dimentions.between_space),

        height: 53,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),

        child: const Center(

          child: Text(
            "Create an account",
            style: TextStyle(
                fontSize:20,
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}

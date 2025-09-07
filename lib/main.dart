import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/di/dependency_injection.dart';
import 'package:grad_comp/core/helpers/constants.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/core/helpers/shared_pref_helper.dart';

import 'core/routing/app_router.dart';
import 'flexihire_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  runApp(FlexihireApp(
    appRouter: AppRouter()));
}


checkIfLoggedInUser()async{
  String? userToken = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if(!userToken.isNullOrEmpyt()){
    isLoggedInUser =true;
    userRole = await SharedPrefHelper.getString(SharedPrefKeys.userRole);
  }else{
    isLoggedInUser= false;
    userRole=null;
  }
}